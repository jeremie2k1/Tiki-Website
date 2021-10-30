package TikiShopMVC.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import TikiShopMVC.Entity.MenuMapper;
import TikiShopMVC.Entity.Menu;

@Repository
public class MenuDao extends BaseDao{
	
	public List<Menu> GetDataMenus(){
		List<Menu> list = new ArrayList<Menu>();
		String sql = "SELECT * FROM menu";
		list = _jdbcTemplate.query(sql, new MenuMapper());
		return list;
	} 
}