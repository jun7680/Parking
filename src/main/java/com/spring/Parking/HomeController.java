package com.spring.Parking;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import com.spring.dto.MemberVO;
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
	// private UserService userSer2;

	/**
	 * Simply selects the home view to render by returning its name.
	 */

	HttpSession session = null;
	MemberVO login=null;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpServletRequest req) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		session = req.getSession();

		if (login == null) {
			session.setAttribute("member", null);
			System.out.println("login test f :" + session);
			System.out.println("login test2 f:" + login);

		} else {
			session.setAttribute("member", login);
			model.addAttribute("member", login);
			System.out.println("login test :" + session);
			System.out.println("login test2 :" + login);

		}

		return "home";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String Login(Locale locale, Model model) {
		logger.info("Welcome login! The client locale is {}.", locale);

		return "/login/login";
	}

//	

	@Resource(name = "userService")
	private UserService userSer2;

	@RequestMapping(value = "/loginCheck", method = RequestMethod.POST)
	public String LoginCheck(MemberVO vo, HttpServletRequest req) throws Exception {

		//session = req.getSession();

		login = userSer2.login(vo);

		if (login == null) {
			session.setAttribute("member", null);
		} else {
			session.setAttribute("member", login);
		}
		System.out.println("login test 1 ->" + login);

		return "/login/loginCheck";
	}

	@RequestMapping(value = "/check1", method = RequestMethod.GET)
	public String AmountCheck1(Locale locale, Model model,AmountVO vo) throws Exception {
		
		//vo.setREGION("1");
		List<AmountVO> AmountList = Amountservice.selectAmount();
		
		System.out.println(AmountList);

		model.addAttribute("AmountList", AmountList);
		return "/amount/check1";
	}
	
	@RequestMapping(value = "/check2", method = RequestMethod.GET)
	public String AmountCheck2(Locale locale, Model model,AmountVO vo) throws Exception {
		
		//vo.setREGION("1");
		List<AmountVO> AmountList = Amountservice.selectAmount();
		
		System.out.println(AmountList);

		model.addAttribute("AmountList", AmountList);
		return "/amount/check2";
	}
	@RequestMapping(value = "/regionselect", method = RequestMethod.GET)
	public String RegionSelect(Locale locale, Model model) throws Exception {

		String returnUrl =null;
		
		if(login == null || login.equals("")) returnUrl = "/error/requireLogin";
		else returnUrl="/amount/regionselect";
		List<AmountVO> AmountList = Amountservice.selectAmount();
		System.out.println(AmountList);
		model.addAttribute("AmountList", AmountList);
		return returnUrl;
	}

	@RequestMapping("/step1")
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
		
//		if (!agree) {
//			ModelAndView mv = new ModelAndView("/register/step1");
//			System.out.println("false");
//			return mv;
//		}
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

//		regReq.setCpw(br.encode(regReq.getCpw()));
//		regReq.setPw(br.encode(regReq.getPw()));

		if (errors.hasErrors()) {
			ModelAndView mv = new ModelAndView("/register/step2");
			return mv;
		}
		try {
			userSer.register(regReq);
		} catch (AlreadyExistingEmailException e) {
			errors.rejectValue("email", "duplicate", "이메일을 확인해 주세요.");
			ModelAndView mv = new ModelAndView("/register/step2");
			return mv;
		} catch (AlreadyExistingIdException e) {
			errors.rejectValue("id", "duplicate", "이미 사용중인 ID입니다..");
			ModelAndView mv = new ModelAndView("/register/step2");
			return mv;
		}
		ModelAndView mv = new ModelAndView("/register/step3");
		return mv;
	}
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		session = request.getSession(false);
		if(session != null) {
			session.invalidate();
			login = null;
			System.out.println("성공?");
			
			
		}
		return "/login/logout";
	}
	
	@Autowired
	private AmountCheckService bService;

	@RequestMapping(value = "/parkingout1",method = RequestMethod.POST)
	public String parkingout1(AmountVO vo) throws Exception{
		System.out.println("car insert");
		
		Calendar time = Calendar.getInstance();
		SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");		
		
		vo.setENDTIME(dateFormat.format(time.getTime()));
		
		
		bService.updateEndTime1(vo);
		
		return "/amount/parkingout";
		
		
	}	
	
	@RequestMapping(value = "/parkingout2",method = RequestMethod.POST)
	public String parkingout2(AmountVO vo) throws Exception{
		System.out.println("car insert");
		
		Calendar time = Calendar.getInstance();
		SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");		
		
		vo.setENDTIME(dateFormat.format(time.getTime()));
		
		
		bService.updateEndTime2(vo);
		
		return "/amount/parkingout";
		
		
	}	

	@Autowired
	private AmountCheckService aService;

	@RequestMapping(value = "/carNumberCheck1",method = RequestMethod.POST)
	public String carnumber1(AmountVO vo) throws Exception{
		System.out.println("car insert");
		
		aService.updateCar1(vo);
		
		return "/amount/carNumberCheck";
		
		
	}
	
	
	@RequestMapping(value = "/carNumberCheck2",method = RequestMethod.POST)
	public String carnumber2(AmountVO vo) throws Exception{
		System.out.println("car insert");
		
		aService.updateCar2(vo);
		
		return "/amount/carNumberCheck";
		
		
	}
	
	
	/**
	 * Admin menu
	 */
	
	@RequestMapping(value = "/payment", method = RequestMethod.GET)
	public String Payment(Model model) throws Exception {

		List<AmountVO> PaymentList = Amountservice.selectPayment();

		model.addAttribute("Payment", PaymentList);
		return "/admin/payment";
	}

	
	


}
