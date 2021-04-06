package m1.model;

import java.util.ArrayList;

public class GuGuService {
	public ArrayList<String> getGuGuDan(int dan){
		ArrayList<String> list = new ArrayList<String>();
		for(int i=1; i<10; i++) {
			list.add(dan + "*" + i + "=" + dan*i); // 숫자 더하기 문자는 문자
		}
		return list;
	}
}