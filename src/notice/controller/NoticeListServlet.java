package notice.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import notice.model.service.NoticeService;
import notice.model.vo.Notice;
import notice.model.vo.PageData;

/**
 * Servlet implementation class NoticeListServlet
 */
@WebServlet("/notice/list")
public class NoticeListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 * 1. 전체 개시물의 갯수
	 * 2. 쿼리문이 변경되어야 함
	 * - 현재 페이지 넘버에 의해 변경되어야 함
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		NoticeService nService = new NoticeService();
		int currentPage = 1;
		if(request.getParameter("page") != null) {
			currentPage = Integer.parseInt(request.getParameter("page"));
		}
		PageData pd = nService.selectAllNotice(currentPage);
		List<Notice> nList = pd.getnList();
		String pageNavigator = pd.getPageNavigator();
		request.setAttribute("nList", nList);
		request.setAttribute("pageNavi", pageNavigator);
		request.getRequestDispatcher("/WEB-INF/views/notice/list.jsp").forward(request, response);
	}
}
