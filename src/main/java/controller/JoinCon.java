package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.UserDAO;
import user.UserDTO;

@WebServlet("/JoinCon")
public class JoinCon extends HttpServlet {

   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("EUC-KR");

         String email = request.getParameter("email");
         String pw = request.getParameter("pw");
         String name = request.getParameter("name");

            UserDAO dao = new UserDAO();
            UserDTO User = new UserDTO(email, pw, name);
            
            int cnt = dao.user_join(User);
            
            System.out.println(cnt);
            
            if(cnt>0) {
               
               RequestDispatcher dispatcher 
                     = request.getRequestDispatcher("index.jsp"); 
              // request
               request.setAttribute("email", email);
               // )
               dispatcher.forward(request, response);
//               response.sendRedirect("join_success.jsp?email="+email);
            }else {
               response.sendRedirect("/LuxuryPratice2/examples/login.jsp");
            }
         } 
   }
