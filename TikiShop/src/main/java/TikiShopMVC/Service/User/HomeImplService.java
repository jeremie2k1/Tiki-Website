package TikiShopMVC.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import TikiShopMVC.Dao.CategoryDao;
import TikiShopMVC.Dao.MenuDao;
import TikiShopMVC.Dao.ProductDao;
import TikiShopMVC.Dao.SlideDao;
import TikiShopMVC.Dto.ProductDTO;
import TikiShopMVC.Entity.Category;
import TikiShopMVC.Entity.Menu;
import TikiShopMVC.Entity.Slide;



@Service
public class HomeImplService implements IHomeService{
	@Autowired
	private SlideDao slideDao;
	@Autowired
	private CategoryDao categoryDao;
	@Autowired
	private MenuDao menuDao;
	@Autowired
	private ProductDao productDao;
	
	
	public List<Slide> GetDataSlide() {
		return slideDao.getDataSlide();
	}
	
	public List<Category> GetDataCategories() {
		return categoryDao.getDataCategory();
	}
	
	public List<Menu> GetDataMenus() {
		return menuDao.getDataMenu();
	}

	public List<ProductDTO> GetDataHighlightsProducts() {
		List<ProductDTO> listProducts = productDao.getDataHighlightProducts();
		return listProducts;
	}
	public List<ProductDTO> GetDataNewsProducts() {
		List<ProductDTO> listProducts = productDao.getDataNewProducts();
		return listProducts;
	}
	public List<ProductDTO> GetDataSideProducts() {
		List<ProductDTO> listProducts = productDao.getDataSideProducts();
		return listProducts;
	}
	
}
