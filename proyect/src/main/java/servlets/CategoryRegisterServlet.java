package servlets;

import model.Category;

import model.repository.CategoryRepositoryImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;
@WebServlet("/registerCategory")
public class CategoryRegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //collect all form data
        String category_name = request.getParameter("category_name");

        // fill it up in a User bean
        Category category = new  Category(category_name);

        // call Repository layer and save the user object to DB
        model.repository.Repository<Category> repository = new CategoryRepositoryImpl();
        int rows = 0;
        try {
            rows = repository.saveObj(category);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        //prepare an information message for user about success or failure of the operation
        String infoMessage = null;
        if (rows == 0){
            //infoMessage = "Ocurrio un error!"
            System.out.println("Ocurrio un error!");
        } else {
            //infoMessage = "Registro exitoso!"
            System.out.println("Registro exitoso!");
        }

        //todo write the message back to the page in client browser
    }
}
