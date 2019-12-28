
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ViewServ
 */
@WebServlet("/ViewServ")
public class ViewServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ViewServ() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String id = request.getParameter("srchbyid");
		String ques = request.getParameter("ques");
		String lang = request.getParameter("lang");
		String opt1 = request.getParameter("opt1");
		String opt2 = request.getParameter("opt2");
		String opt3 = request.getParameter("opt3");
		String opt4 = request.getParameter("opt4");
		String ans = request.getParameter("opt");
		String selected_ans = (ans.equals("1") ? "1" : ans.equals("2") ? "2" : ans.equals("3") ? "3" : "4");
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "nivt", "1234");
			PreparedStatement ps = con.prepareStatement("select * from addques where qid=?");

			ps.setString(1, id);
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				ques = rs.getString(2);
				request.setAttribute("ques", ques);
				lang = rs.getString(8);
				request.setAttribute("lang", lang);
				opt1 = rs.getString(3);
				request.setAttribute("opt1", opt1);
				opt2 = rs.getString(4);
				request.setAttribute("opt2", opt2);
				opt3 = rs.getString(5);
				request.setAttribute("opt3", opt3);
				opt4 = rs.getString(6);
				request.setAttribute("opt4", opt4);

			}
		} catch (Exception e) {
			out.print(e);

		}
	}
}
