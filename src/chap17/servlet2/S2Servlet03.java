package chap17.servlet2;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class S2Servlet03
 */
@WebServlet("/S2Servlet03")
public class S2Servlet03 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S2Servlet03() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 코드 실행 전에 꼭 명시해줘야 실행 된다.(한글 작성 가능)
		request.setCharacterEncoding("utf-8");
		
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String ageStr =request.getParameter("age");
		
		System.out.println(email);
		System.out.println(address);
		System.out.println(ageStr);
		
		//WebContent/chap17/ex06.jsp를 만들고 form 요소 만들고 
		//submit 버튼 누르면 doPost 메소드 실행 되도록
		
		
	}

}
