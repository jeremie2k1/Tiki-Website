package TikiShopMVC.Dto;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class ProductDTOMapper implements RowMapper<ProductDTO>{

	public ProductDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
		ProductDTO products = new ProductDTO();
		products.setId_product(rs.getLong("id"));
		products.setId_category(rs.getString("id_category"));
		products.setName(rs.getString("name"));
		products.setAuthor(rs.getString("author"));
		products.setImprint(rs.getString("imprint"));
		products.setPublished_date(rs.getDate("published_date"));
		products.setIsbn(rs.getString("isbn"));
		products.setLengths(rs.getInt("lengths"));
		products.setDimensions(rs.getString("dimensions"));
		products.setWeight(rs.getInt("weight"));
		products.setPrice(rs.getDouble("price"));
		products.setSale(rs.getInt("sale"));
		products.setDescription(rs.getString("description"));
		products.setDetail(rs.getString("detail"));
		products.setHighlight(rs.getBoolean("highlight"));
		products.setNew_product(rs.getBoolean("new_product"));
		products.setRating(rs.getInt("rating"));
		products.setImage(rs.getString("image"));
		return products;
	}

}
