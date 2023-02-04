package book.model.service;

import java.sql.Connection;
import java.util.List;

import book.model.dao.BookDAO;
import book.model.vo.Book;
import common.JDBCTemplate;

public class BookService {
	private BookDAO bDao;
	
	public BookService() {
		bDao = new BookDAO();
	}

	/**
	 * 책 목록 조회 Service
	 * @return bList
	 */
	public List<Book> selectAllBook() {
		Connection conn = JDBCTemplate.getConnection();
		List<Book> bList = bDao.selectAllBook(conn);
		return bList;
	}

}
