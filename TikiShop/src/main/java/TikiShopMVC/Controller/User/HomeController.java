package TikiShopMVC.Controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import TikiShopMVC.Service.User.HomeImplService;

@Controller
public class HomeController extends BaseController {
	@Autowired
	public HomeImplService homeService;
	
	@RequestMapping(value = { "/", "/home" })
	public ModelAndView Index() {
		Init();
		_mvShare.addObject("slides", _homeService.GetDataSlide());
		_mvShare.addObject("categories", _homeService.GetDataCategories());
		_mvShare.addObject("products", _homeService.GetDataHighlightsProducts());
		_mvShare.addObject("news", _homeService.GetDataNewsProducts());
		_mvShare.addObject("sideProduct", _homeService.GetDataSideProducts());
		_mvShare.setViewName("user/index");
		return _mvShare;
	}

	@RequestMapping(value = "/product")
	public ModelAndView Product() {
		ModelAndView mv = new ModelAndView("user/product");
		return mv;
	}
}