package TikiShopMVC.Controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import TikiShopMVC.Dto.PaginateDTO;
import TikiShopMVC.Service.User.CategoryImplService;
import TikiShopMVC.Service.User.PaginateImplService;

@Controller
public class CategoryController extends BaseController {
	@Autowired
	private CategoryImplService categoryService;
	@Autowired
	private PaginateImplService paginateService;
	
	private int totalProductPerPage = 3;
	@RequestMapping(value = "/category/{id}")
	public ModelAndView Product(@PathVariable String id) {
		
		_mvShare.setViewName("user/products/category");
		
		int totalData = categoryService.GetProductsById(id).size();
		PaginateDTO paginateInfo = paginateService.GetInforPaginate(totalData, totalProductPerPage, 0);
		_mvShare.addObject("idCategory", id);
		_mvShare.addObject("paginateInfo", paginateInfo); 
		_mvShare.addObject("productsPaginate", categoryService.GetDataProductsPaginate(paginateInfo.getStart(), totalProductPerPage, id));
		return _mvShare;
	}
	
	@RequestMapping(value = "/category/{id}/{currentPage}")
	public ModelAndView Product(@PathVariable String id, @PathVariable String currentPage) {
		_mvShare.setViewName("user/products/category");
		
		int totalData = categoryService.GetProductsById(id).size();
		PaginateDTO paginateInfo = paginateService.GetInforPaginate(totalData, totalProductPerPage, Integer.parseInt(currentPage));
		
		_mvShare.addObject("idCategory", id);
		_mvShare.addObject("paginateInfo", paginateInfo); 
		_mvShare.addObject("productsPaginate", categoryService.GetDataProductsPaginate(paginateInfo.getStart(), totalProductPerPage, id));
		return _mvShare;
	}
}
