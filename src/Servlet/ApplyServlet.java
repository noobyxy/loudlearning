package Servlet;

import Bean.Applience;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class ApplyServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        Applience applience = new Applience();
        applience.setComputerNum(Integer.valueOf(req.getParameter("ComputerNum")));
        applience.setServiceClass(req.getParameter("computerClass"));
        HttpSession session = req.getSession(true);
        session.setAttribute("applience",applience);
        //System.out.println(session.getAttribute("applience"));
        req.getRequestDispatcher("/submit2.jsp").forward(req,resp);
        //System.out.println(applience.getComputerNum());
        //System.out.println(applience.getServiceClass());
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }
}
