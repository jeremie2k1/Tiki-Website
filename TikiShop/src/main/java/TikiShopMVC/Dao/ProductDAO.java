package TikiShopMVC.Dao;

import java.util.ArrayList;
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
		String productByCategory = "SELECT * FROM products WHERE id_category = '" + id + "' "; 
		List<ProductDTO> listProducts = _jdbcTemplate.query(productByCategory, new ProductDTOMapper());
		return listProducts;
	}
	public List<ProductDTO> getProductsRelatedById(String id, long id_product) {
		String productByCategory = "SELECT * FROM products WHERE id_category = '" + id + "' AND id != " + id_product; 
		List<ProductDTO> listProducts = _jdbcTemplate.query(productByCategory, new ProductDTOMapper());
		return listProducts;
	}
	
	public List<ProductDTO> getProductsToPaginate(int start, int totalPerPage, String id) {
		String productByCategory = "SELECT * FROM products WHERE id_category = '" + id + "'"; 
		List<ProductDTO> listProducts = _jdbcTemplate.query(productByCategory, new ProductDTOMapper());
		List<ProductDTO> listProduct = new ArrayList<ProductDTO>();
		if (listProducts.size() > 0) {
			String sqlProduct = "SELECT * FROM products WHERE id_category = '" + id + "' LIMIT " + start + ", " + totalPerPage; 
			listProduct = _jdbcTemplate.query(sqlProduct, new ProductDTOMapper());
		}
		return listProduct;
	}
	
	public List<ProductDTO> getProductById(long id) {
		String productById = "SELECT * FROM products WHERE id = '" + id + "' LIMIT 1"; 
		List<ProductDTO> product = _jdbcTemplate.query(productById, new ProductDTOMapper());
		return product;
	}
	
	public ProductDTO findProductById(long id) {
		String productById = "SELECT * FROM products WHERE id = '" + id + "' "; 
		ProductDTO product = _jdbcTemplate.queryForObject(productById, new ProductDTOMapper());
		return product;
	}
}
