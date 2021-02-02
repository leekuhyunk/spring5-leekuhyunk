package kr.or.test;

public class UtilApp {

	public static void main(String[] args) {
		// 클래스에 실행 진입점
		// java.lang Math 클래스를 사용해서 랜덤게 숫자를 뽑아 봅니다.
		// 제비뽑기로 생각하면, 꽝이 0
		System.out.println("1부터 30까지 랜덤한 숫자 출력하기 = "
		+ (int)(Math.random() * 30+1)
		//결과가 float(실수)로 나오기때문에, 정수형(int)으로 형변환해서 출력
		//아이디 자동생성기 만들때, 매스클래스의 랜덤메서드 사용하게 됩니다.
		//기본형을 객체로 표현했다는 int(Not null) -> Integer(null혀옹),
		//float -> Folat, double
		);

	}

}
