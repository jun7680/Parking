package com.spring.Parking;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.amount.service.AmountCheckService;
import com.spring.dto.AmountVO;
import com.spring.exception.AlreadyExistingEmailException;
import com.spring.exception.AlreadyExistingIdException;
import com.spring.util.RegisterRequest;
import com.spring.util.RegisterRequestValidator;
import com.user.service.UserService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Inject
	private AmountCheckService Amountservice;

	/**
	 * Simply selects the home view to render by returning its name.
	 */

	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		System.out.println("test");

		return "home";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String Login(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		System.out.println("test login page");

		return "login";
	}

	@RequestMapping(value = "/check", method = RequestMethod.GET)
	public String AmountCheck(Locale locale, Model model) throws Exception {

		List<AmountVO> AmountList = Amountservice.selectAmount();

		model.addAttribute("AmountList", AmountList);

		return "/amount/check";
	}

	@RequestMapping(value = "/step1", method = RequestMethod.GET)
	public String Register(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		System.out.println("test register page");

		return "register/step1";
	}

	@RequestMapping("/step2")
	public ModelAndView step2(@RequestParam(value = "agree", defaultValue = "false") Boolean agree) throws Exception {
		if (!agree) {
			ModelAndView mv = new ModelAndView("/register/step1");
			System.out.println("false");
			return mv;
		}
		ModelAndView mv = new ModelAndView("/register/step2");
		mv.addObject("registerRequest", new RegisterRequest());
		System.out.println("true");
		return mv;

	}

	@Resource(name = "userService")
	private UserService userSer;

	@Autowired
	private BCryptPasswordEncoder br;

	@RequestMapping("/step3")
	public ModelAndView step3(RegisterRequest regReq, Errors errors) throws Exception {
		new RegisterRequestValidator().validate(regReq, errors);

		regReq.setCpw(br.encode(regReq.getCpw()));
		regReq.setPw(br.encode(regReq.getPw()));

		if (errors.hasErrors()) {
			ModelAndView mv = new ModelAndView("register/step2");
			return mv;
		}
		try {
			userSer.register(regReq);
		} catch (AlreadyExistingEmailException e) {
			errors.rejectValue("email", "duplicate", "이미 가입된 이메일입니다.");
			ModelAndView mv = new ModelAndView("/register/step2");
			return mv;
		} catch (AlreadyExistingIdException e) {
			errors.rejectValue("id", "duplicate", "이미 가입된 아이디입니다.");
			ModelAndView mv = new ModelAndView("/register/step2");
			return mv;
		}
		ModelAndView mv = new ModelAndView("/register/step3");
		return mv;
	}

}
