package com;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "CtrAloMundo", urlPatterns = {"/servlet/CtrAloMundo"})
public class CtrAloMundo extends HttpServlet {
  
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try ( PrintWriter out = response.getWriter()) {
            out.println("<html><head><title>Alo Mundo</title></head><body>");
            out.println("<h1>Alo Mundo</h1>");

            // Instancia o objeto AloMundo
            AloMundo alomundo = new AloMundo();
            alomundo.setNome(request.getParameter("nome")!=null?request.getParameter("nome"):"Docker");
         
           out.print("Alo Mundo, " + alomundo.getNome() + "! <p></body></html>");
        }
    }
}
