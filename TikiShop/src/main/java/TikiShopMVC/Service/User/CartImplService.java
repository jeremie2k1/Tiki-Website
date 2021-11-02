package TikiShopMVC.Service.User;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import TikiShopMVC.Dao.CartDao;
import TikiShopMVC.Dto.CartDTO;

@Service
public class CartImplService implements ICartService{
	@Autowired
	private CartDao cartDao = new CartDao();

	public HashMap<Long, CartDTO> AddCart(long id, HashMap<Long, CartDTO> cart) {
		return cartDao.AddCart(id, cart);
	}

	public HashMap<Long, CartDTO> EditCart(long id, int quantity, HashMap<Long, CartDTO> cart) {
		return cartDao.EditCart(id, quantity, cart);
	}

	public HashMap<Long, CartDTO> DeleteCart(long id, HashMap<Long, CartDTO> cart) {
		return cartDao.DeleteCart(id, cart);
	}

	public int TotalQuantity(HashMap<Long, CartDTO> cart) {
		return cartDao.TotalQuantity(cart);
	}

	public double TotalPrice(HashMap<Long, CartDTO> cart) {
		return cartDao.TotalPrice(cart);
	}
	
}
