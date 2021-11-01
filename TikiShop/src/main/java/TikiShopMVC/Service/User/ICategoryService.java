package TikiShopMVC.Service.User;

import java.util.List;

import org.springframework.stereotype.Service;

import TikiShopMVC.Dto.ProductDTO;
@Service
public interface ICategoryService {
	public List<ProductDTO> GetDataProductsPaginate(int start, int totalPerPage, String id);
	public List<ProductDTO> GetProductsById(String id);
}
