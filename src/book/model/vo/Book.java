package book.model.vo;

public class Book {
	private int bookNo;
	private String bookName;
	private String bookAuthor;
	private String bookPublisher;
	private String bookLendYN;
	
	public Book() {}

	public Book(int bookNo, String bookName, String bookAuthor, String bookPublisher, String bookLendYN) {
		super();
		this.bookNo = bookNo;
		this.bookName = bookName;
		this.bookAuthor = bookAuthor;
		this.bookPublisher = bookPublisher;
		this.bookLendYN = bookLendYN;
	}

	//getter/setter
	public int getBookNo() {
		return bookNo;
	}

	public void setBookNo(int bookNo) {
		this.bookNo = bookNo;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public String getBookAuthor() {
		return bookAuthor;
	}

	public void setBookAuthor(String bookAuthor) {
		this.bookAuthor = bookAuthor;
	}

	public String getBookPublisher() {
		return bookPublisher;
	}

	public void setBookPublisher(String bookPublisher) {
		this.bookPublisher = bookPublisher;
	}

	public String getBookLendYN() {
		return bookLendYN;
	}

	public void setBookLendYN(String bookLendYN) {
		this.bookLendYN = bookLendYN;
	}

	//toString()
	@Override
	public String toString() {
		return "Book [bookNo=" + bookNo + ", bookName=" + bookName + ", bookAuthor=" + bookAuthor + ", bookPublisher="
				+ bookPublisher + ", bookLendYN=" + bookLendYN + "]";
	}
}
