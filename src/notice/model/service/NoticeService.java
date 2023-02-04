package notice.model.service;

import java.sql.Connection;
import java.util.List;

import common.JDBCTemplate;
import notice.model.dao.NoticeDAO;
import notice.model.vo.Notice;
import notice.model.vo.PageData;

public class NoticeService {
	private NoticeDAO nDao;
	
	public NoticeService() {
		nDao = new NoticeDAO();
	}

	/**
	 * 공지사항 목록 조회 Service
	 * @return nList
	 */
	public PageData selectAllNotice(int currentPage) {
		//1. 새로운 VO 생성
		//2. 해쉬맵 사용
		Connection conn = JDBCTemplate.getConnection();
		List<Notice> nList = nDao.selectAllNotice(conn, currentPage);
		String pageNavigator = nDao.generatePageNavi(conn, currentPage);
		PageData pd = new PageData();
		pd.setnList(nList);
		pd.setPageNavigator(pageNavigator);
		return pd;
	}

	/**
	 * 공지사항 상세조회 Service
	 * @param noticeNo
	 * @return notice
	 */
	public Notice selectOneByNo(int noticeNo) {
		Connection conn = JDBCTemplate.getConnection();
		Notice notice = nDao.selectOneByNo(conn, noticeNo);
		return notice;
	}

}
