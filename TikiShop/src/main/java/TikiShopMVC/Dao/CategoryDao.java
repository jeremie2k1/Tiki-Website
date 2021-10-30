package TikiShopMVC.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import TikiShopMVC.Entity.Category;
import TikiShopMVC.Entity.CategoryMapper;

@Repository
public class CategoryDao extends BaseDao{
	public List<Category> getDataCategory(){
		List<Category> list = new ArrayList<Category>();
		String sql = "SELECT * FROM category";
		list = _jdbcTemplate.query(sql, new CategoryMapper());
		return list;
	} 
}
