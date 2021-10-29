package TikiShopMVC.Dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import TikiShopMVC.Dto.ProductDTO;
import TikiShopMVC.Dto.ProductDTOMapper;

@Repository
public class ProductDAO extends BaseDao{
	public List<ProductDTO> getDataProducts() {
		String sql = "SELECT * FROM products ORDER BY rand() LIMIT 9";
		List<ProductDTO> listProducts = _jdbcTemplate.query(sql, new ProductDTOMapper());
		return listProducts;
	}
}
