package TikiShopMVC.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class SlideMapper implements RowMapper<Slide>{
	public Slide mapRow(ResultSet rs, int rowNum) throws SQLException {
		Slide slides = new Slide();
		slides.setId(rs.getInt("id"));
		slides.setImg(rs.getString("img"));
		slides.setCaption(rs.getString("caption"));
		slides.setContent(rs.getString("content"));
		return slides;
	}
}
