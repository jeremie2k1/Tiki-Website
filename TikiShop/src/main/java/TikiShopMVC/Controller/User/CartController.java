package TikiShopMVC.Controller.User;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import TikiShopMVC.Dto.CartDTO;
import TikiShopMVC.Entity.Bill;
import TikiShopMVC.Entity.User;
import TikiShopMVC.Service.User.BillsImplService;
import TikiShopMVC.Service.User.CartImplService;

@Controller
public class CartController extends BaseController {
	
	@Autowired
	private CartImplService cartService = new CartImplService();
	
	@Autowired
	private BillsImplService billsService = new BillsImplService();
	
	@RequestMapping(value = "/cart", method=RequestMethod.GET) 
	public ModelAndView Index() {
		_mvShare.addObject("slides", _homeService.GetDataSlide());
		_mvShare.addObject("categories", _homeService.GetDataCategories());
		_mvShare.addObject("products", _homeService.GetDataHighlightsProducts());
		_mvShare.addObject("news", _homeService.GetDataNewsProducts());
		_mvShare.addObject("sideProduct", _homeService.GetDataSideProducts());
		_mvShare.setViewName("user/cart/orderedView");
		return _mvShare;
	}
	
	@RequestMapping(value = "AddCart/{id}")
	public String AddCart(HttpServletRequest request, HttpSession session, @PathVariable long id) {
		HashMap<Long, CartDTO> cart = (HashMap<Long, CartDTO>)session.getAttribute("ShoppingCart");
		if (cart == null) {
			cart = new HashMap<Long, CartDTO>();
		}
		cart = cartService.AddCart(id, cart);
		session.setAttribute("ShoppingCart", cart);
		session.setAttribute("TotalQuantityCart", cartService.TotalQuantity(cart));
		session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));
		session.setAttribute("TotalPoducts", cart.size());		
		return "redirect:" + request.getHeader("Referer");
	}
	
	@RequestMapping(value = "EditCart/{id}/{quantity}")
	public String EditCart(HttpServletRequest request, HttpSession session, @PathVariable long id, @PathVariable int quantity) {
		HashMap<Long, CartDTO> cart = (HashMap<Long, CartDTO>)session.getAttribute("ShoppingCart");
		if (cart == null) {
			cart = new HashMap<Long, CartDTO>();
		}		
		cart = cartService.EditCart(id, quantity, cart);
		session.setAttribute("ShoppingCart", cart);
		session.setAttribute("TotalQuantityCart", cartService.TotalQuantity(cart));
		session.setAttribute("TotalPriceCart", Math.round(cartService.TotalPrice(cart) * 100.00) / 100.0);
		session.setAttribute("TotalPoducts", cart.size());	
		return "redirect:" + request.getHeader("Referer");
	}
	
	@RequestMapping(value = "DeleteCart/{id}")
	public String DeleteCart(HttpServletRequest request, HttpSession session, @PathVariable long id) {
		HashMap<Long, CartDTO> cart = (HashMap<Long, CartDTO>)session.getAttribute("ShoppingCart");
		if (cart == null) {
			cart = new HashMap<Long, CartDTO>();
		}	
		cart = cartService.DeleteCart(id, cart);
		session.setAttribute("ShoppingCart", cart);
		session.setAttribute("TotalQuantityCart", cartService.TotalQuantity(cart));
		session.setAttribute("TotalPriceCart", Math.round(cartService.TotalPrice(cart) * 100.00) / 100.0);
		session.setAttribute("TotalPoducts", cart.size());
		return "redirect:" + request.getHeader("Referer");
	}
	
	
	@RequestMapping(value = "checkout", method = RequestMethod.GET)
	public ModelAndView CheckOut(HttpServletRequest request, HttpSession session) {
		_mvShare.setViewName("user/bills/checkout");
		Bill bill = new Bill();
		User loginInfo = (User)session.getAttribute("LoginInfo");
		if (loginInfo != null) {
			bill.setAddress(loginInfo.getAddress());
			bill.setFull_name(loginInfo.getFull_name());
			bill.setUser(loginInfo.getUser());
		}
		_mvShare.addObject("bill", bill);
		return _mvShare;
	}
	
	@RequestMapping(value = "checkout", method = RequestMethod.POST)
	public String CheckOutBill(HttpServletRequest request, HttpSession session, @ModelAttribute("bill") Bill bill) {
		bill.setQuantity((Integer)session.getAttribute("TotalQuantityCart"));
		bill.setTotal((Double)session.getAttribute("TotalPriceCart"));
		
		if (billsService.AddBills(bill) > 0) {	
			HashMap<Long, CartDTO> carts = (HashMap<Long, CartDTO>)session.getAttribute("ShoppingCart");
			billsService.AddBillsDetails(carts);
		}
		session.removeAttribute("ShoppingCart");
		HashMap<Long, CartDTO> cart = (HashMap<Long, CartDTO>)session.getAttribute("ShoppingCart");
		if (cart == null) {
			cart = new HashMap<Long, CartDTO>();
		}
		session.setAttribute("ShoppingCart", cart);
		session.setAttribute("TotalQuantityCart", cartService.TotalQuantity(cart));
		session.setAttribute("TotalPriceCart", Math.round(cartService.TotalPrice(cart) * 100.00) / 100.0);
		session.setAttribute("TotalPoducts", cart.size());
		return "redirect:/home";
	}
	
}
