package TikiShopMVC.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import TikiShopMVC.Dao.ProductDao;
import TikiShopMVC.Dto.ProductDTO;

@Service
public class CategoryImplService implements ICategoryService{
	@Autowired
	private ProductDao productDao;
	public List<ProductDTO> GetDataProductsPaginate(int start, int totalPerPage, String id) {	
		return productDao.getProductsToPaginate(start, totalPerPage, id);
	}
	public List<ProductDTO> GetProductsById(String id) {
		return productDao.getProductsById(id);
	}

}
