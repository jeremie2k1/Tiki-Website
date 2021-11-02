package TikiShopMVC.Dto;

public class CartDTO {
	private int quantity;
	private double totalPrice;
	private ProductDTO product;
	
	public CartDTO() {
		super();
	}
	public CartDTO(int quantity, double totalPrice, ProductDTO product) {
		this.quantity = quantity;
		this.totalPrice = totalPrice;
		this.product = product;
	}
	
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	public ProductDTO getProduct() {
		return product;
	}
	public void setProduct(ProductDTO product) {
		this.product = product;
	}
}
