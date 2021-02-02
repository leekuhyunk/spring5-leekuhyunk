package chap01;

public class IncreaseOperatorExample {

	public static void main(String[] args) {
		
		int sum = 0;
		int i = 1;
		int j = 6;
		while(i+j<=5) {
			sum = i+j;
			i++;
			j--;

		}
		System.out.println(sum);

	}

}
