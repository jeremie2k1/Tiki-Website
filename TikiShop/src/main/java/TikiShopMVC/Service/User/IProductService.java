package TikiShopMVC.Service.User;

import java.util.List;

import org.springframework.stereotype.Service;

import TikiShopMVC.Dto.ProductDTO;

@Service
public interface IProductService {
	public ProductDTO GetProductById(long id);
	public List<ProductDTO> GetProductRelatedByCategory(String id_category, long id_product);
}
