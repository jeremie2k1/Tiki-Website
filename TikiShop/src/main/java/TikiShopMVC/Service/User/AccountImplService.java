package TikiShopMVC.Service.User;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import TikiShopMVC.Dao.UserDao;
import TikiShopMVC.Entity.User;

@Service
public class AccountImplService implements IAccountService {

	@Autowired
	UserDao userDao = new UserDao();
	
	public int AddAccount(User user) {
		user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(12)));
		return userDao.addAccount(user);
	}

	public User CheckAccount(User user) {
		String currentPassword = user.getPassword();
		user = userDao.getUserByAccount(user);
		if (user != null) {
			if (BCrypt.checkpw(currentPassword, user.getPassword())) {
				return user;
			}
			return null;
		}
		
		return null;
	}
	
	public User CheckAdmin(User admin) {
		String currentPassword = admin.getPassword();
		admin = userDao.getUserByAccount(admin);
		if (admin != null) {
			if (currentPassword == "123") {
				return admin;
			}
			return null;
		}
		
		return null;
	}


}
