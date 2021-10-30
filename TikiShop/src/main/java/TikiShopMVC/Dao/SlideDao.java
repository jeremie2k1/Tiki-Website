package TikiShopMVC.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import TikiShopMVC.Entity.Slide;
import TikiShopMVC.Entity.SlideMapper;

@Repository
public class SlideDao extends BaseDao {
	
	public List<Slide> getDataSlide(){
		List<Slide> list = new ArrayList<Slide>();
		String sql = "SELECT * FROM slides";
		list = _jdbcTemplate.query(sql, new SlideMapper());
		return list;
	} 
}
