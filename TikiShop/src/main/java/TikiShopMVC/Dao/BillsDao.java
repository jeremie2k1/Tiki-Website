package TikiShopMVC.Dao;

import org.springframework.stereotype.Repository;

import TikiShopMVC.Entity.Bill;
import TikiShopMVC.Entity.BillDetails;

@Repository
public class BillsDao extends BaseDao{

	public int AddBills(Bill bill) {
		String query = "INSERT INTO bill (user, phone, full_name, address, total, quantity, note) VALUES ('" + bill.getUser() +"', '" + bill.getPhone() + "', '" + bill.getFull_name() +"', '" + bill.getAddress() +"', " + bill.getTotal() + ", " + bill.getQuantity() + ", '" + bill.getNote() + "')";
		int inserted = _jdbcTemplate.update(query);
		return inserted;
	}
	
	public long GetIdLastBill() {
		String query = "SELECT max(id) FROM bill";
		long id = _jdbcTemplate.queryForObject(query, new Object[] {}, Long.class);
		return id;
	}
	
	public int AddBillDetails(BillDetails billDetails) {
		String query = "INSERT INTO bill_details (id_product, id_bill, quantity, total) VALUES (" + billDetails.getId_product() + ", " + billDetails.getId_bill() + ", " + billDetails.getQuantity() +", " + billDetails.getTotal() +")";
		int inserted = _jdbcTemplate.update(query);
		return inserted;
	}
}
