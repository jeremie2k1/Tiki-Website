package TikiShopMVC.Controller.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import TikiShopMVC.Entity.User;
import TikiShopMVC.Service.User.AccountImplService;

@Controller
public class UserController extends BaseController {
	
	@Autowired
	AccountImplService accountService = new AccountImplService();
	
	@RequestMapping(value = "/register", method=RequestMethod.GET)
	public ModelAndView Register() {
		_mvShare.addObject("slides", _homeService.GetDataSlide());
		_mvShare.addObject("categories", _homeService.GetDataCategories());
		_mvShare.addObject("products", _homeService.GetDataHighlightsProducts());
		_mvShare.addObject("news", _homeService.GetDataNewsProducts());
		_mvShare.addObject("sideProduct", _homeService.GetDataSideProducts());
		
		_mvShare.setViewName("user/account/register");
		_mvShare.addObject("user", new User());
		return _mvShare;
	}
	
	@RequestMapping(value = "/register", method=RequestMethod.POST)
	public ModelAndView CreateAccount(HttpSession session, @ModelAttribute("user") User user) {
		int count = accountService.AddAccount(user);
		if (count > 0) {
			_mvShare.addObject("statusRegister", "Success!");
			_mvShare.setViewName("redirect:home");
			session.setAttribute("LoginInfo", user);
		}
		else {
			_mvShare.addObject("statusRegister","Something wrong!");
		}
		_mvShare.setViewName("user/account/register");
		return _mvShare;
	}
	
	@RequestMapping(value = "/login", method=RequestMethod.POST)
	public ModelAndView Login(HttpSession session, @ModelAttribute("user") User user) {
		user = accountService.CheckAccount(user);
		if (user != null) {
			_mvShare.setViewName("redirect:home");
			session.setAttribute("LoginInfo", user);
		}
		else {
			_mvShare.addObject("statusLogin","Something wrong!");
		}
		return _mvShare;
	}
	
	@RequestMapping(value = "/logout", method=RequestMethod.GET)
	public String Login(HttpSession session, HttpServletRequest request) {
		session.removeAttribute("LoginInfo");
		return "redirect:" + request.getHeader("Referer");
	}
}
