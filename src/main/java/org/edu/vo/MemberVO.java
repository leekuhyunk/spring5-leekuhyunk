package org.edu.vo;

import java.util.Date;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.springframework.stereotype.Component;

/**
 * 회원정보관리용 클래스
 * @author 이규혁 2020-12-04 생성
 *
 */
@Component
public class MemberVO {
	//멤버변수 선언(클래스 전역변수)
	@NotNull(message="사용자는ID는 반값으로 저장할수 없습니다.")
	private String user_id;//프라이빗: 클래스 내부에서만 사용가능, 보안때문에
	private String user_pw;
	private String user_name;
	private String email;
	@Min(value=0,message="포인트는 0보다 큰 숫자만 입력 가능합니다.")
	private Integer point;//int(not null) 기본형 -> 참조형은 Integer(null가능) 클래스변수
	//member_write.jsp에서 전송값이 point가 빈값으로 올때,int형에러발생, Integer형은 에러없이 지나감.
	private Boolean enabled;//불린형은 true, false 2개의 값중 1개.
	private String levels;//오라클에서는 level이 예약어라서 levels로 변경
	private Date reg_date;//Date클래스형 변수를 사용할때 java.util패키지를 임포트한다.
	private Date update_date;//회원정보 수정일 필드.
	//get,set 메서드가 필요한 이유는 member_list(wirite,update).jsp<-겟셋메서드->컨트롤러<-겟셋메서드->DB
		
	public String getUser_id() {
		return user_id;
	}
	
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Integer getPoint() {
		return point;
	}
	public void setPoint(Integer point) {
		this.point = point;
	}
	public Boolean getEnabled() {
		return enabled;
	}
	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}
	public String getLevels() {
		return levels;
	}
	public void setLevels(String levels) {
		this.levels = levels;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public Date getUpdate_date() {
		return update_date;
	}
	public void setUpdate_date(Date update_date) {
		this.update_date = update_date;
	}

	@Override
	public String toString() {
		return "디버그 MemberVO [user_id=" + user_id + ", user_pw=" + user_pw + ", user_name=" + user_name + ", email=" + email
				+ ", point=" + point + ", enabled=" + enabled + ", levels=" + levels + ", reg_date=" + reg_date
				+ ", update_date=" + update_date + "]";
	}
	
	
}