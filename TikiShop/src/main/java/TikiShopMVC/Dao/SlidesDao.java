package TikiShopMVC.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import TikiShopMVC.Entity.Slides;
import TikiShopMVC.Entity.SlidesMapper;

@Repository
public class SlidesDao extends BaseDao {
	
	public List<Slides> GetDataSlide(){
		List<Slides> list = new ArrayList<Slides>();
		String sql = "SELECT * FROM slides";
		list = _jdbcTemplate.query(sql, new SlidesMapper());
		return list;
	} 
}
