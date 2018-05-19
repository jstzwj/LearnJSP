package shop;
import java.util.ArrayList;


public class ShopCart {
	public ArrayList<Item> list;
	
	public ShopCart(){
		list = new ArrayList<Item>();
		list.add(new Item("123", 124));
	}
	
	public ArrayList<Item> getList(){
		return list;
	}
	
	public void addItem(Item single) {
		if(list.size()==0) {
			Item temp=new Item();
			temp.setName(single.getName());
			temp.setPrice(single.getPrice());
			temp.setNum(single.getNum());
			list.add(temp);
		}else {
			int i = 0;
			for(;i<list.size();++i) {
				Item temp = (Item)list.get(i);
				if(temp.getName().equals(single.getName())) {
					temp.setNum(temp.getNum() + 1);
					break;
				}
			}
			if(i>=list.size()) {
				Item temp = new Item();
				temp.setName(single.getName());
				temp.setPrice(single.getPrice());
				temp.setNum(single.getNum());
				list.add(temp);
			}
		}
	}
	
	public void removeItem(String name) {
		for(int i = 0;i<list.size();++i) {
			Item temp = (Item)list.get(i);
			if(temp.getName().equals(name)) {
				if(temp.getNum()>1) {
					temp.setNum(temp.getNum() - 1);
					break;
				}else if(temp.getNum()==1) {
					list.remove(i);
				}
			}
		}
	}
	public void clearCart() {
		list.clear();
	}
}
