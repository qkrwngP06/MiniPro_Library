package member.model.vo;

public class Member {
	private String memberId;
	private String memberPw;
	private String memberName;
	private String memberPhone;
	private String memberGender;
	private int memberAge;
	private String adminYn;
	
	//생성자
	public Member() {}

	
	public Member(String memberId, String memberPw, String memberPhone) {
		super();
		this.memberId = memberId;
		this.memberPw = memberPw;
		this.memberPhone = memberPhone;
	}

	public Member(String memberId, String memberPw, String memberName, String memberPhone, String memberGender,
			int memberAge) {
		super();
		this.memberId = memberId;
		this.memberPw = memberPw;
		this.memberName = memberName;
		this.memberPhone = memberPhone;
		this.memberGender = memberGender;
		this.memberAge = memberAge;
	}


	//매개변수 있는 생성자
	public Member(String memberId, String memberPw, String memberName, String memberPhone, String memberGender,
			int memberAge, String adminYn) {
		super();
		this.memberId = memberId;
		this.memberPw = memberPw;
		this.memberName = memberName;
		this.memberPhone = memberPhone;
		this.memberGender = memberGender;
		this.memberAge = memberAge;
		this.adminYn = adminYn;
	}

	//getter/setter
	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getMemberPw() {
		return memberPw;
	}

	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberPhone() {
		return memberPhone;
	}

	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}

	public String getMemberGender() {
		return memberGender;
	}

	public void setMemberGender(String memberGender) {
		this.memberGender = memberGender;
	}

	public int getMemberAge() {
		return memberAge;
	}

	public void setMemberAge(int memberAge) {
		this.memberAge = memberAge;
	}

	public String getAdminYn() {
		return adminYn;
	}

	public void setAdminYn(String adminYn) {
		this.adminYn = adminYn;
	}

	//toString()
	@Override
	public String toString() {
		return "Member [memberId=" + memberId + ", memberPw=" + memberPw + ", memberName=" + memberName
				+ ", memberPhone=" + memberPhone + ", memberGender=" + memberGender + ", memberAge=" + memberAge
				+ ", adminYn=" + adminYn + "]";
	}
}
