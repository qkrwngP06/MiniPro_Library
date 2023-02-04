package notice.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import notice.model.vo.Notice;

public class NoticeDAO {

	/**
	 * 공지사항 목록 조회 DAO
	 * 
	 * @param conn
	 * @return nList
	 */
	public List<Notice> selectAllNotice(Connection conn, int currentPage) {
		//SELECT * FROM NOTICE_TBL
		String query = "SELECT * FROM(SELECT ROW_NUMBER() OVER(ORDER BY NOTICE_NO DESC) AS NUM, NOTICE_TBL.* FROM NOTICE_TBL) WHERE NUM BETWEEN ? AND ?";
		List<Notice> nList = null;
		int recordCountPerPage = 10;
		int start = currentPage * recordCountPerPage - (recordCountPerPage - 1);
		int end = currentPage * recordCountPerPage;
		// currentPage : 1, recordCountPerPage : 10
		// start : 1, end: 10
		// currentPage*recordCountPerPage - (recordCountPerPage - 1)
		// currentPage : 2, recordCountPerPage : 10
		// start : 11, end: 20
		// currentPage : 3, recordCountPerPage : 10
		// start : 21, end: 30
		try {
			//Statement stmt = conn.createStatement();
			//ResultSet rset = stmt.executeQuery(query);
			PreparedStatement pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			ResultSet rset = pstmt.executeQuery();
			// 후처리
			nList = new ArrayList<Notice>();
			while (rset.next()) {
				Notice notice = new Notice();
				notice.setNoticeNo(rset.getInt("NOTICE_NO"));
				notice.setNoticeSubject(rset.getString("NOTICE_SUBJECT"));
				notice.setNoticeContent(rset.getString("NOTICE_CONTENT"));
				notice.setNoticeWriter(rset.getString("NOTICE_WRITER"));
				notice.setNoticeDate(rset.getTimestamp("NOTICE_DATE"));
				notice.setViewCount(rset.getInt("VIEW_COUNT"));
				nList.add(notice);
			}
			rset.close();
			pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return nList;
	}

	// 페이지 네비게이터를 만들어주는 메소드
	public String generatePageNavi(Connection conn, int currentPage) {
		// 전체 게시물 수 : 37
		// 한 페이지당 게시물 수 : 10
		// 네비게이터 수 : 4, (1 2 3 4)

		// 전체 게시물 수 : 55
		// 한 페이지당 게시물 수 : 10
		// 네비게이터 수 : 6, (1 2 3 4 5 6)

		// 전체 게시물 수 : 76
		// 한 페이지당 게시물 수 : 10
		// 네비게이터 수 : 8, (1 2 3 4 5 6 7 8)
		int totalCount = getRecordTotalCount(conn);  //바뀔 수 있는 값
		int recordCountPerPage = 10;  //고정
		int naviTotalCount = 0;
		if(totalCount % recordCountPerPage > 0) {
			naviTotalCount = totalCount / recordCountPerPage + 1;
		} else {
			naviTotalCount = totalCount / recordCountPerPage;
		}
		// 1 2 3 4 5 6 7 8 9 10 11 12
		// 1 2 3 4 5
		// 6 7 8 9 10
		// 11 12
		// 1 2 3 4 5 6 7 8
		// 1 2 3 4 5
		// 6 7 8
		int naviCountPerPage = 5;
		int startNavi = ((currentPage - 1) / naviCountPerPage) * naviCountPerPage + 1;
		int endNavi = startNavi + naviCountPerPage - 1;
		if(endNavi > naviTotalCount) {
			endNavi = naviTotalCount;
		}
		StringBuilder sb = new StringBuilder();
		for(int i = startNavi; i <= endNavi; i++) {
			sb.append("<a href='/notice/list?page=" + i + "'>" + i + "</a> ");
		}
		return sb.toString();
	}
	
	/**
	 * 페이지 전체 게시물 가져오는 메소드 DAO
	 * @param conn
	 * @return
	 */
	private int getRecordTotalCount(Connection conn) {
		//SELECT COUNT(*) FROM NOTICE_TBL;
		String query = "SELECT COUNT(*) AS TOTALCOUNT FROM NOTICE_TBL";
		int recordTotalCount = 0;
		try {
			Statement stmt = conn.createStatement();
			ResultSet rset = stmt.executeQuery(query);
			if(rset.next()) {
				recordTotalCount = rset.getInt("TOTALCOUNT");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return recordTotalCount;
	}

	/**
	 * 공지사항 상세조회 DAO
	 * 
	 * @param conn
	 * @param noticeNo
	 * @return notice
	 */
	public Notice selectOneByNo(Connection conn, int noticeNo) {
		String query = "SELECT * FROM NOTICE_TBL WHERE NOTICE_NO=?";
		Notice notice = null;
		try {
			PreparedStatement pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, noticeNo);
			ResultSet rset = pstmt.executeQuery();
			if (rset.next()) {
				notice = new Notice();
				notice.setNoticeNo(rset.getInt("NOTICE_NO"));
				notice.setNoticeSubject(rset.getString("NOTICE_SUBJECT"));
				notice.setNoticeContent(rset.getString("NOTICE_CONTENT"));
				notice.setNoticeWriter(rset.getString("NOTICE_WRITER"));
				notice.setNoticeDate(rset.getTimestamp("NOTICE_DATE"));
				notice.setViewCount(rset.getInt("VIEW_COUNT"));
			}
			rset.close();
			pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return notice;
	}

}
