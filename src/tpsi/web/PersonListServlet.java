package tpsi.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "PersonListServlet", urlPatterns = {"/personList"})
public class PersonListServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("iso-8859-2");
        response.setContentType("text/html;charset=UTF-8");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Person> osoby1 = new ArrayList<>();
        Person p1=new Person("Marcin","Smuda","msmuda@wp.pl");
        Person p2=new Person("Michał","Michalski","mmichalski@onet.pl");
        Person p3= new Person("Łukasz","Warchulski","latara95@gmail.com");
        osoby1.add(p1);
        osoby1.add(p2);
        osoby1.add(p3);
        request.setAttribute("osoby",osoby1);
        request.getRequestDispatcher("personList.jsp").forward(request, response);
    }
}