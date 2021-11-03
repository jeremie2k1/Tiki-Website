package TikiShopMVC.Service.User;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import TikiShopMVC.Dto.CartDTO;
import TikiShopMVC.Entity.Bill;

@Service
public interface IBillsService {
	public int AddBills(Bill bill);
	public void AddBillsDetails(HashMap<Long, CartDTO> carts);
}
