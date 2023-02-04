package member.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import member.model.vo.Member;

public class MemberDAO {

	/**
	 * 회원 로그인 DAO
	 * 
	 * @param conn
	 * @param memberId
	 * @param memberPw
	 * @return result
	 */
	public int selectCheckLogin(Connection conn, String memberId, String memberPw) {
		String query = "SELECT COUNT(*) AS M_COUNT FROM MEMBER_TBL WHERE MEMBER_ID=? AND MEMBER_PW=?";
		int result = 0;
		try {
			PreparedStatement pstmt = conn.prepareStatement(query);
			pstmt.setString(1, memberId);
			pstmt.setString(2, memberPw);
			ResultSet rset = pstmt.executeQuery();
			if (rset.next()) {
				result = rset.getInt("M_COUNT");
			}
			pstmt.close();
			rset.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	/**
	 * 아이디로 조회 DAO
	 * @param conn
	 * @param memberId
	 * @return member
	 */
	public Member selectOneById(Connection conn, String memberId) {
		String query = "SELECT * FROM MEMBER_TBL WHERE MEMBER_ID=?";
		Member member = null;
		try {
			PreparedStatement pstmt = conn.prepareStatement(query);
			pstmt.setString(1, memberId);
			ResultSet rset = pstmt.executeQuery();
			if (rset.next()) {
				member = new Member();
				member.setMemberId(rset.getString("MEMBER_ID"));
				member.setMemberPw(rset.getString("MEMBER_PW"));
				member.setMemberName(rset.getString("MEMBER_NAME"));
				member.setMemberPhone(rset.getString("MEMBER_PHONE"));
				member.setMemberGender(rset.getString("MEMBER_GENDER"));
				member.setMemberAge(rset.getInt("MEMBER_AGE"));
			}
			rset.close();
			pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return member;
	}

	/**
	 * 회원가입 DAO
	 * @param conn
	 * @param member
	 * @return result
	 */
	public int insertMember(Connection conn, Member member) {
		String query = "INSERT INTO MEMBER_TBL VALUES(?,?,?,?,?,?,DEFAULT)";
		int result = 0;
		try {
			PreparedStatement pstmt = conn.prepareStatement(query);
			pstmt.setString(1, member.getMemberId());
			pstmt.setString(2, member.getMemberPw());
			pstmt.setString(3, member.getMemberName());
			pstmt.setString(4, member.getMemberPhone());
			pstmt.setString(5, member.getMemberGender());
			pstmt.setInt(6, member.getMemberAge());
			result = pstmt.executeUpdate();
			pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	/**
	 * 회원 정보 수정 DAO
	 * @param conn
	 * @param member
	 * @return result
	 */
	public int updateMember(Connection conn, Member member) {
		String query="UPDATE MEMBER_TBL SET MEMBER_PW=?, MEMBER_PHONE=? WHERE MEMBER_ID=?";
		int result = 0;
		try {
			PreparedStatement pstmt = conn.prepareStatement(query);
			pstmt.setString(1, member.getMemberPw());
			pstmt.setString(2, member.getMemberPhone());
			pstmt.setString(3, member.getMemberId());
			result = pstmt.executeUpdate();
			pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	/**
	 * 회원 탈퇴 DAO
	 * @param conn
	 * @param memberId
	 * @return result
	 */
	public int deleteMember(Connection conn, String memberId) {
		String query = "DELETE FROM MEMBER_TBL WHERE MEMBER_ID=?";
		int result = 0;
		try {
			PreparedStatement pstmt = conn.prepareStatement(query);
			pstmt.setString(1, memberId);
			result = pstmt.executeUpdate();
			pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

}
