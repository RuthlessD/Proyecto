package Controlador;

import java.io.IOException;
import DAO.UsuarioIntDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "Controlador", urlPatterns = {"/controlador"} )
public class Controlador extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    
    UsuarioIntDAO us;
    public Controlador() {
        super();
        us = new UsuarioIntDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ruta = "";
        String action = request.getParameter("action");
        
        if (action == null) {
            action = "inicio"; // Definir una acción por defecto
        }
        
        switch (action) {
            case "inicio":
                ruta = "/datos.jsp";
                break;
            default:
                ruta = "/error.jsp"; // Manejar acciones no válidas
                break;
        }
        try {
        	request.setAttribute("base", us.datosUsuario());
        }catch(Exception e) {
        	e.printStackTrace();
        }
        
        RequestDispatcher dispatcher = request.getRequestDispatcher(ruta);
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}

