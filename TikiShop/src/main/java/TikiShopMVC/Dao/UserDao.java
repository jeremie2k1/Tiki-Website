package TikiShopMVC.Dao;

import org.springframework.stereotype.Repository;

import TikiShopMVC.Entity.User;
import TikiShopMVC.Entity.UserMapper;

@Repository
public class UserDao extends BaseDao {
	public int addAccount(User user) {
		String query = "INSERT INTO user (user, password, display_name, address) VALUES ('" + user.getUser() + "', '" + user.getPassword() + "', '" + user.getFull_name() +"', '" + user.getAddress() + "')";
		int inserted = _jdbcTemplate.update(query);
		return inserted;
	}
	
	public User getUserByAccount(User user) {
		String query = "SELECT * FROM user WHERE user = '" + user.getUser() + "'";
		
		User res = _jdbcTemplate.queryForObject(query, new UserMapper());
		
		return res;
	}
}
