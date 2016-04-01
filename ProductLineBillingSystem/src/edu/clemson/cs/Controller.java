package edu.clemson.cs;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Controller
 */
//@WebServlet(urlPatterns = { "/Controller" })
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		out.println("Product line - Billing System");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 if(request.getParameter("radiosgroup") != null) {
			 if(request.getParameter("radiosgroup").equals("rbs")) {
				 response.sendRedirect("retailBilling.jsp");
             }
			 else if(request.getParameter("radiosgroup").equals("pbs")){
				 response.sendRedirect("propertyBilling.jsp");
			 }
			 else if(request.getParameter("radiosgroup").equals("cbs")){
				 response.sendRedirect("carsBilling.jsp");
			 }
			 else if(request.getParameter("radiosgroup").equals("abs")){
				 response.sendRedirect("cigAlcBilling.jsp");
			 }
			 else{
				 response.sendRedirect("error.jsp");
			 }
			 System.out.println("SERVLET GET FROM CONTROLLER CLASS: "+request.getParameter("radiosgroup"));
	}
	}

}
