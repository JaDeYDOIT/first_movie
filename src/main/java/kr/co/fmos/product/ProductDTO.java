package kr.co.fmos.product;

public class ProductDTO {
	
	private int product_id;				//INT UNSIGNED  	  AUTO_INCREMENT PRIMARY KEY	NOT NULL,
	private int product_category_id;	//INT UNSIGNED		  NOT NULL,
	private String product_name;		//VARCHAR(50)		  NOT NULL,
	private String product_image;		//VARCHAR(255)		  NOT NULL,
	private int product_cost;			//INT UNSIGNED		  NOT NULL,
	private String product_content;		//VARCHAR(255)		  NOT NULL,
	private int product_quantity;		//SMALLINT UNSIGNED	  NOT NULL	  DEFAULT 1
	
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public int getProduct_category_id() {
		return product_category_id;
	}
	public void setProduct_category_id(int product_category_id) {
		this.product_category_id = product_category_id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getProduct_image() {
		return product_image;
	}
	public void setProduct_image(String product_image) {
		this.product_image = product_image;
	}
	public int getProduct_cost() {
		return product_cost;
	}
	public void setProduct_cost(int product_cost) {
		this.product_cost = product_cost;
	}
	public String getProduct_content() {
		return product_content;
	}
	public void setProduct_content(String product_content) {
		this.product_content = product_content;
	}
	public int getProduct_quantity() {
		return product_quantity;
	}
	public void setProduct_quantity(int product_quantity) {
		this.product_quantity = product_quantity;
	}
	
	@Override
	public String toString() {
		return "ProductDTO [product_id=" + product_id + ", product_category_id=" + product_category_id
				+ ", product_name=" + product_name + ", product_image=" + product_image + ", product_cost="
				+ product_cost + ", product_content=" + product_content + ", product_quantity=" + product_quantity
				+ "]";
	}
}//class end