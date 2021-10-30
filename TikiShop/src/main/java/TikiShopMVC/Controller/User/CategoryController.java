package TikiShopMVC.Controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import TikiShopMVC.Dto.PaginateDto;
import TikiShopMVC.Service.User.CategoryImplService;
import TikiShopMVC.Service.User.PaginateImplService;

@Controller
public class CategoryController extends BaseController {
	@Autowired
	private CategoryImplService categoryService;
	@Autowired
	private PaginateImplService paginateService;
	
	
	@RequestMapping(value = "/category/{id}")
	public ModelAndView Product(@PathVariable String id) {
		int totalProductPerPage = 3;
		_mvShare.setViewName("user/products/category");
		
		int totalData = categoryService.GetProductsById(id).size();
		PaginateDto paginateInfo = paginateService.GetInforPaginate(totalData, totalProductPerPage, 1);
		
		_mvShare.addObject("paginateInfo", paginateInfo); 
		_mvShare.addObject("ProductsPaginate", categoryService.GetDataProductsPaginate(paginateInfo.getStart(), paginateInfo.getEnd(), id));
		return _mvShare;
	}
}