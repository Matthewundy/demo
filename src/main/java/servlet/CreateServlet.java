package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.okta.sdk.clients.SessionApiClient;
import com.okta.sdk.clients.UserApiClient;
import com.okta.sdk.exceptions.ApiException;
import com.okta.sdk.framework.ApiClientConfiguration;
import com.okta.sdk.models.sessions.Session;

@WebServlet(
        name = "CreateServlet",
        urlPatterns = {"/create"}
    )
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
    	req.getRequestDispatcher("create.jsp").forward(req, resp);
		return;
    }
    
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
		
		String login = request.getParameter("login"); 
		String email = request.getParameter("email");
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");

		String password = request.getParameter("password");
		String sub = request.getParameter("sub");

		try{
			String URL = "https://euromonitorpoc.oktapreview.com";
			String APIKEY = "000Bt4MM9juwLryGcsbHpannrwCb3d8i9vd5Z288Hk";	
			ApiClientConfiguration oktaSettings = new ApiClientConfiguration(URL, APIKEY);
			UserApiClient usersClient = new UserApiClient(oktaSettings);
			User myUser = usersClient.createUser(firstName, lastName, login, email);
			usersClient.setPassword(myUser.getId(),password);
			req.getRequestDispatcher("create_result.jsp").forward(req, resp);

		} catch (ApiException e) {
			resp.sendRedirect("/create");
		}
		return;
    }

}
