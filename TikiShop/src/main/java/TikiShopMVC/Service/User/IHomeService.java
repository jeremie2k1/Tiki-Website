package TikiShopMVC.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import TikiShopMVC.Dto.ProductDTO;
import TikiShopMVC.Entity.Category;
import TikiShopMVC.Entity.Menu;
import TikiShopMVC.Entity.Slides;

@Service
public interface IHomeService {
	@Autowired
	public List<Slides> GetDataSlide();
	public List<Category> GetDataCategories();
	public List<Menu> GetDataMenus();
	public List<ProductDTO> GetDataProducts();
}
