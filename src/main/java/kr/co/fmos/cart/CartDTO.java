package kr.co.fmos.cart;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.co.fmos.product.ProductDTO;

public class CartDTO extends ProductDTO {
	
	//order_sql.txt 참고
	
	private int payment_detail_id;	//INT UNSIGNED 	AUTO_INCREMENT PRIMARY KEY	NOT NULL,
	private int product_id;			//INT UNSIGNED	NOT NULL,
	private int product_count;		//SMALLINT 		UNSIGNED	NOT NULL,
	private String member_id;
	
	public int getPayment_detail_id() {
		return payment_detail_id;
	}
	public void setPayment_detail_id(int payment_detail_id) {
		this.payment_detail_id = payment_detail_id;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public int getProduct_count() {
		return product_count;
	}
	public void setProduct_count(int product_count) {
		this.product_count = product_count;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	
	@Override
	public String toString() {
		return "CartDTO [payment_detail_id=" + payment_detail_id + ", product_id=" + product_id + ", product_count="
				+ product_count + ", member_id=" + member_id + "]";
	}
}//class end