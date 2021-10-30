package TikiShopMVC.Dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import TikiShopMVC.Dto.ProductDTO;
import TikiShopMVC.Dto.ProductDTOMapper;

@Repository
public class ProductDao extends BaseDao {
	public List<ProductDTO> getDataHighlightProducts() {
		String hightlight = "SELECT * FROM products WHERE products.highlight = true OR products.new_product = true ORDER BY rand() LIMIT 9";
		List<ProductDTO> listProducts = _jdbcTemplate.query(hightlight, new ProductDTOMapper());
		return listProducts;
	}
	public List<ProductDTO> getDataNewProducts() {
		String new_product = "SELECT * FROM products WHERE products.new_product = true ORDER BY rand() LIMIT 12";
		List<ProductDTO> listProducts = _jdbcTemplate.query(new_product, new ProductDTOMapper());
		return listProducts;
	}
	public List<ProductDTO> getDataSideProducts() {
		String side_product = "SELECT * FROM products ORDER BY rand() LIMIT 3";
		List<ProductDTO> listProducts = _jdbcTemplate.query(side_product, new ProductDTOMapper());
		return listProducts;
	}
	
	public List<ProductDTO> getProductsById(String id) {
		String productByCategory = "SELECT * FROM products WHERE id_category = '" + id + "' " + " ORDER BY rand()"; 
		List<ProductDTO> listProducts = _jdbcTemplate.query(productByCategory, new ProductDTOMapper());
		return listProducts;
	}
	
	public List<ProductDTO> getProductsToPaginate(int start, int end, String id) {
		String productByCategory = "SELECT * FROM products WHERE id_category = '" + id + "' ORDER BY rand() LIMIT " + start + ", " + end; 
		List<ProductDTO> listProducts = _jdbcTemplate.query(productByCategory, new ProductDTOMapper());
		return listProducts;
	}
}