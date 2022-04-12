package chap08;

// 이 클래스의 속성(property)은
// productModel, discountPrice 


public class MyBean2 {
	
	private String model;
	private int price;
	
	public String getProductModel() {
		return model;
	}
	
	public int getDiscountPrice() {
		return price;
	}
	
	// get(is) : 둘 다 가능함. 
	 public boolean getHighPrice() {
		 return price > 10000;
	 }
	
	 public boolean isHighPrice() {
		 return price > 10000;
	 }
}
