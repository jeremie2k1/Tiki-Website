package TikiShopMVC.Controller.User;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BillController extends BaseController {
	@RequestMapping(value = "/bill", method=RequestMethod.GET) 
	public ModelAndView Index() {
		_mvShare.addObject("slides", _homeService.GetDataSlide());
		_mvShare.addObject("categories", _homeService.GetDataCategories());
		_mvShare.addObject("products", _homeService.GetDataHighlightsProducts());
		_mvShare.addObject("news", _homeService.GetDataNewsProducts());
		_mvShare.addObject("sideProduct", _homeService.GetDataSideProducts());
		_mvShare.setViewName("user/bills/allbill");
		return _mvShare;
	}
}
