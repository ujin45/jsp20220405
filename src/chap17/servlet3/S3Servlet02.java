package chap17.servlet3;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class S3Servlet02
 */
//@WebServlet("/S3Servlet02")
public class S3Servlet02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private final String field; // 인스턴스 필드 = 글로벌 베리어블
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S3Servlet02() {
        super();
        // TODO Auto-generated constructor stub
        System.out.println("서블릿클래스로 객체 만드는 중....");
        field = "three";
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("servlet 2 doget method 실행");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
