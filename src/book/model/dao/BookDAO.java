package book.model.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import book.model.vo.Book;

public class BookDAO {

	/**
	 * 책 목록 조회 DAO
	 * @param conn
	 * @return bList
	 */
	public List<Book> selectAllBook(Connection conn) {
		String query = "SELECT * FROM BOOK_TBL";
		List<Book> bList = null;
		try {
			Statement stmt = conn.createStatement();
			ResultSet rset = stmt.executeQuery(query);
			//후처리
			bList = new ArrayList<Book>();
			while(rset.next()) {
				Book book = new Book();
				book.setBookNo(rset.getInt("BOOK_NO"));
				book.setBookName(rset.getString("BOOK_NAME"));
				book.setBookAuthor(rset.getString("BOOK_AUTHOR"));
				book.setBookPublisher(rset.getString("BOOK_PUBLISHER"));
				book.setBookLendYN(rset.getString("LEND_YN"));
				bList.add(book);
			}
			rset.close();
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return bList;
	}
}
