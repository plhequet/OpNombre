package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdditionServlet
 */
@WebServlet("/OperationServlet")
public class OperationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OperationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer result=null;
		String operator = request.getParameter("operateur");
		try{
		Integer nombre1 = Integer.parseInt(request.getParameter("input1"));
		Integer nombre2 = Integer.parseInt(request.getParameter("input2"));
		
		
		switch(operator){
		case "+" :
			result = nombre1+nombre2;
			break;
		case "-" :
			result = nombre1-nombre2;
			break;
		case "/" :
			if(nombre2==0){
				throw(new Exception());
			}
			else{
				result = nombre1/+nombre2;
			}
			break;
		case "*" :
			result = nombre1*nombre2;
			break;	
		}
		}
		catch (NumberFormatException e){
	//		response.getWriter().append("Un de vos paramètres n'est pas un nombre");
		}
		catch (Exception e){
		//	response.getWriter().append("Division par 0");
		}
		request.setAttribute("resultat", result);
		switch(operator){
		case "+" :
			request.getRequestDispatcher("/addition.jsp").forward(request, response);
			break;
		case "-" :
			request.getRequestDispatcher("/soustraction.jsp").forward(request, response);
			break;
		case "/" :
			request.getRequestDispatcher("/division.jsp").forward(request, response);
			break;
		case "*" :
			request.getRequestDispatcher("/multiplication.jsp").forward(request, response);
			break;	
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
