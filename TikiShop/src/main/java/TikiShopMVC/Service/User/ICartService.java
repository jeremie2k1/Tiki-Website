package TikiShopMVC.Service.User;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import TikiShopMVC.Dto.CartDTO;

@Service
public interface ICartService {
	public HashMap<Long, CartDTO> AddCart(long id, HashMap<Long, CartDTO> cart);
	public HashMap<Long, CartDTO> EditCart(long id, int quantity, HashMap<Long, CartDTO> cart);
	public HashMap<Long, CartDTO> DeleteCart(long id, HashMap<Long, CartDTO> cart);
	public int TotalQuantity(HashMap<Long, CartDTO> cart);
	public double TotalPrice(HashMap<Long, CartDTO> cart);
	
}
