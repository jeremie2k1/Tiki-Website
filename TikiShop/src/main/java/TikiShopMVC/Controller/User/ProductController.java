package TikiShopMVC.Controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import TikiShopMVC.Service.User.HomeImplService;
import TikiShopMVC.Service.User.IProductService;

@Controller
public class ProductController extends BaseController{
	
	@Autowired
	private HomeImplService _homeService;
	
	@Autowired
	private IProductService _productService;
	@RequestMapping(value = { "product-detail/{id}" })
	public ModelAndView Index(@PathVariable long id) {
		_mvShare.setViewName("user/products/product");
		_mvShare.addObject("product", _productService.GetProductById(id));
		_mvShare.addObject("sideProduct", _homeService.GetDataSideProducts());
		_mvShare.addObject("productByCategory", _productService.GetProductRelatedByCategory(_productService.GetProductById(id).getId_category(), id));
		_mvShare.addObject("categories", _homeService.GetDataCategories());
		return _mvShare;
	}
}
