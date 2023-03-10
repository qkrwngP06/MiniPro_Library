package notice.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import notice.model.service.NoticeService;
import notice.model.vo.Notice;

/**
 * Servlet implementation class NoticeModifyServlet
 */
@WebServlet("/notice/modify")
public class NoticeModifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeModifyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String strNo = request.getParameter("notice-no") != null ? request.getParameter("notice-no") : "0";
		int noticeNo = Integer.parseInt(strNo);
		NoticeService nService = new NoticeService();
		Notice notice = nService.selectOneByNo(noticeNo);
		request.setAttribute("notice", notice);
		request.getRequestDispatcher("/WEB-INF/views/notice/modify.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String noticeSubject = request.getParameter("subject");
		String noticeContent = request.getParameter("content");
		String strNo = request.getParameter("noticeNo") != null ? request.getParameter("noticeNo") : "0";
		int noticeNo = Integer.parseInt(strNo);
		Notice notice = new Notice(noticeNo, noticeSubject, noticeContent);
		NoticeService nService = new NoticeService();
		int result = nService.updateNotice(notice);
		if(result > 0) {
			//???????????? detail ???????????? ??????
			response.sendRedirect("/notice/detail?notice-no="+noticeNo);
			request.setAttribute("title", "???????????? ?????? ??????");
			request.setAttribute("msg", "???????????? ????????? ???????????? ???????????????.");
		} else {
			//???????????? ?????? ???????????? ??????
			request.getRequestDispatcher("/WEB-INF/views/common/error.jsp").forward(request, response);
		}
	}

}
