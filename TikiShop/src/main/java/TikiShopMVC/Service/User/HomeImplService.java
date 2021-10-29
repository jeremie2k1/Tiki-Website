package TikiShopMVC.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import TikiShopMVC.Dao.CategoryDao;
import TikiShopMVC.Dao.MenuDao;
import TikiShopMVC.Dao.ProductDAO;
import TikiShopMVC.Dao.SlidesDao;
import TikiShopMVC.Dto.ProductDTO;
import TikiShopMVC.Entity.Category;
import TikiShopMVC.Entity.Menu;
import TikiShopMVC.Entity.Slides;

@Service
public class HomeImplService implements IHomeService{
	@Autowired
	private SlidesDao slideDao;
	@Autowired
	private CategoryDao categoryDao;
	@Autowired
	private MenuDao menuDao;
	@Autowired
	private ProductDAO productDao;
	
	
	public List<Slides> GetDataSlide() {
		return slideDao.GetDataSlide();
	}
	
	public List<Category> GetDataCategories() {
		return categoryDao.GetDataCategory();
	}
	
	public List<Menu> GetDataMenus() {
		return menuDao.GetDataMenus();
	}

	public List<ProductDTO> GetDataProducts() {
		List<ProductDTO> listProducts = productDao.getDataProducts();
		return listProducts;
	}
	
}
