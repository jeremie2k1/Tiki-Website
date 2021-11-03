package TikiShopMVC.Service.User;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import TikiShopMVC.Dao.BillsDao;
import TikiShopMVC.Dto.CartDTO;
import TikiShopMVC.Entity.Bill;
import TikiShopMVC.Entity.BillDetails;

@Service
public class BillsImplService implements IBillsService{
	@Autowired
	private BillsDao billsDao;

	public int AddBills(Bill bill) {
		return billsDao.AddBills(bill);
	}

	public void AddBillsDetails(HashMap<Long, CartDTO> carts) {
		long idBills = billsDao.GetIdLastBill();
		
		for (Map.Entry<Long, CartDTO> itemCart : carts.entrySet()) {
			BillDetails billDetails = new BillDetails();
			billDetails.setId_bill(idBills);
			billDetails.setId_product(itemCart.getValue().getProduct().getId_product());
			billDetails.setQuantity(itemCart.getValue().getQuantity());
			billDetails.setTotal(itemCart.getValue().getTotalPrice());
			
			billsDao.AddBillDetails(billDetails);
		}
	}

}
