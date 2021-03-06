package TikiShopMVC.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import TikiShopMVC.Dao.ProductDao;
import TikiShopMVC.Dto.ProductDTO;

@Service
public class ProducImplService implements IProductService{

	@Autowired
	ProductDao productDao = new ProductDao();
	
	public ProductDTO GetProductById(long id) {
		List<ProductDTO> listProducts = productDao.getProductById(id);
		return listProducts.get(0);
	}

	public List<ProductDTO> GetProductRelatedByCategory(String id_category, long id_product) {
		return productDao.getProductsRelatedById(id_category, id_product);
	}
	
}
