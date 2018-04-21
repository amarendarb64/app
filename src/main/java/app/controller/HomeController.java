package app.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import app.dto.Login;
import app.dto.Question;
import app.dto.SignUp;

@Controller
public class HomeController {

	private static final Logger logger = Logger.getLogger(HomeController.class);
	
	@RequestMapping(value = "/loginWindow")
	public String loginWindow(HttpServletRequest request) {

		HttpSession httpSession = request.getSession(false);
		if(httpSession== null)
		{
			logger.error("This is Error message", new Exception("There is no session for user"));
			return "homePage";
			
		}
		
		return "loginWindow";
	}

	@RequestMapping(value = "/welcomePage")
	public String welcomePage() {

		return "welcomePage";
	}

	@RequestMapping(value = "/verifyUser")
	public String verifyUser(@ModelAttribute("Login") Login dto, HttpServletRequest request,
			RedirectAttributes redirectAttributes) {

		HttpSession httpSession = request.getSession(false);

		String userName = dto.getUserName();

		String userName2 = (String) httpSession.getAttribute("userName");
		if (userName.equals(userName2)) {
			return "redirect:/answerQuestion";
		}

		redirectAttributes.addFlashAttribute("message", "username invalid");
		return "redirect:/loginWindow";
	}

	@RequestMapping(value = "/home")
	public String homePage() {

		return "homePage";
	}

	@RequestMapping(value = "/signUp")
	public String signUp(Model model) {

		model.addAttribute("SignUp", new SignUp());
		return "signUpPage";
	}

	@RequestMapping(value = "/login")
	public String login( HttpServletRequest request) {

		HttpSession httpSession = request.getSession(false);
		if(httpSession== null)
		{
			logger.error("This is Error message", new Exception("There is no session for user"));
			
			return "signUpPage";
		}
		
		
		return "loginPage";
	}

	@RequestMapping(value = "/signUpValidation")
	public String signUpValidation(@ModelAttribute("SignUp") SignUp dto, HttpServletRequest request,
			RedirectAttributes redirectAttributes) {
	
		if (dto.getUserName().equals("")|| dto.getDob().equals("")) {
			redirectAttributes.addFlashAttribute("message", "UserName and dob should not be null");
			logger.error("This is Error message", new Exception("User athentication issue"));
			
			return "redirect:/signUp";
		}

	
		HttpSession httpSession = request.getSession(true);

		httpSession.setAttribute("userName", dto.getUserName());
		httpSession.setAttribute("dob", dto.getDob());

		return "redirect:/fillQuestion";
	}

	@RequestMapping(value = "/fillQuestion")
	public String fillQuestion() {

		return "fillQuestion";
	}

	@RequestMapping(value = "/addQuestion")
	public String addQuestion(@ModelAttribute("Question") Question dto,HttpServletRequest request) {



		HttpSession httpSession = request.getSession(false);
		if(httpSession== null)
		{
			logger.error("This is Error message", new Exception("There is no session for user"));
			
			return "signUpPage";
		}

		httpSession.setAttribute(dto.getQus1(), dto.getAns1());

		httpSession.setAttribute(dto.getQus2(),  dto.getAns2());

		httpSession.setAttribute(dto.getQus3(),  dto.getAns3());

		return "homePage";
	}

	@RequestMapping(value = "/answerQuestion")
	public String answerQuestion(HttpServletRequest request) {

		HttpSession httpSession = request.getSession(false);
		if(httpSession== null)
		{
			logger.error("This is Error message", new Exception("There is no session for user"));
			
			return "signUpPage";
		}

		List<String> list = Collections.list(httpSession.getAttributeNames());
		List<String> questionList = new ArrayList<String>();

		for (String attr : list) {
			if (!attr.equalsIgnoreCase("userName") && !attr.equalsIgnoreCase("dob")) {
				questionList.add(attr);
			}

		}

		String question = getRandomQuestion(questionList);

		request.setAttribute("question", question);

		return "answerQuestion";
	}

	public String getRandomQuestion(List<String> list) {
		System.out.println(list.size());
		Random random = new Random();
		int index = random.nextInt(list.size());

		return list.get(index);

	}

	@RequestMapping(value = "/answerCheck")
	public String answerCheck(HttpServletRequest request, RedirectAttributes redirectAttributes) {

		HttpSession httpSession = request.getSession(false);
		if(httpSession== null)
		{
			logger.error("This is Error message", new Exception("There is no session for user"));
			
			return "signUpPage";
		}

		String question = request.getParameter("userQuestion");
		String ans = request.getParameter("useranswer");

		String correctAnswer = (String) httpSession.getAttribute(question);
		if (ans.equals(correctAnswer)) {

			redirectAttributes.addFlashAttribute("message", "Login Successfull");
			return "redirect:/welcomePage";
		}

		logger.error("This is Error message", new Exception("Invalid user"));
		
		redirectAttributes.addFlashAttribute("message", "Invalid User");
		return "redirect:/loginWindow";

	}

}
