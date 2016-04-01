package edu.clemson.cs.JunitTests;

import static org.junit.Assert.*;

import static org.mockito.Mockito.*;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.junit.Test;
import org.mockito.Mockito;

import edu.clemson.cs.Controller;

public class TestController extends Mockito{

	@Test
	public void testDoPost() throws Exception {
		HttpServletRequest request = mock(HttpServletRequest.class);       
        HttpServletResponse response = mock(HttpServletResponse.class);    

        when(request.getParameter("radiosgroup")).thenReturn("rbs");
        System.out.println("Open page retailBilling.jsp");

        new Controller().doPost(request, response);

        verify(request, atLeast(1)).getParameter("radiosgroup"); 
       assertEquals("Result: ", "rbs", request.getParameter("radiosgroup"));
       System.out.println("**********************************");
	}
	
	@Test
	public void testDoPost1() throws Exception {
		HttpServletRequest request = mock(HttpServletRequest.class);       
        HttpServletResponse response = mock(HttpServletResponse.class);    

        when(request.getParameter("radiosgroup")).thenReturn("pbs");
        System.out.println("Open page propertyBilling.jsp");

        new Controller().doPost(request, response);

        verify(request, atLeast(1)).getParameter("radiosgroup"); 
       assertEquals("Result1: ", "pbs", request.getParameter("radiosgroup"));
       System.out.println("**********************************");
	}
	
	@Test
	public void testDoPost2() throws Exception {
		HttpServletRequest request = mock(HttpServletRequest.class);       
        HttpServletResponse response = mock(HttpServletResponse.class);    

        when(request.getParameter("radiosgroup")).thenReturn("cbs");
        System.out.println("Open page carsBilling.jsp");

        new Controller().doPost(request, response);

        verify(request, atLeast(1)).getParameter("radiosgroup"); 
       assertEquals("Result2: ", "cbs", request.getParameter("radiosgroup"));
       System.out.println("**********************************");
	}
	
	@Test
	public void testDoPost3() throws Exception {
		HttpServletRequest request = mock(HttpServletRequest.class);       
        HttpServletResponse response = mock(HttpServletResponse.class);    

        when(request.getParameter("radiosgroup")).thenReturn("abs");
        System.out.println("Open page cigAlcBilling.jsp");

        new Controller().doPost(request, response);

        verify(request, atLeast(1)).getParameter("radiosgroup"); 
       assertEquals("Result3: ", "abs", request.getParameter("radiosgroup"));
       System.out.println("**********************************");
	}

}
