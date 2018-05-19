package shop;

public class Item {
	public String name;
	public float price;
	public int num;
	public boolean isChecked;
	public Item(){
		
	}
	
	public Item(String name, float price){
		this.name = name;
		this.price = price;
		this.num = 0;
		this.isChecked = false;
	}
	
	public String getName() {
		return name;
	}
	
	public float getPrice() {
		return price;
	}
	
	public int getNum() {
		return num;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public void setPrice(float price) {
		this.price = price;
	}
	
	public void setNum(int num) {
		this.num = num;
	}
}
