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
        name = "LoginServlet",
        urlPatterns = {"/login"}
    )
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
    	req.getRequestDispatcher("/portal").forward(req, resp);
		return;
    }
    
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
	        String redirectUrl = "";

		if(req.getParameter("fromURI") != null){
			redirectUrl = req.getParameter("fromURI");
		} else {
			redirectUrl = "https://platformdemo.herokuapp.com/nofromuri.html";
		}	
                String username = req.getParameter("UserName"); 
		String password = req.getParameter("Password");

		try{
			String URL = "https://platformdemo.oktapreview.com/";
			String APIKEY = "00KDoImEGLyvlD8tv3VgJHkPYIg0Oox0vXG6W2HqBI";	
			ApiClientConfiguration oktaSettings = new ApiClientConfiguration(URL, APIKEY);
			SessionApiClient sessionClient = new SessionApiClient(oktaSettings);
			Session mySession = sessionClient.createSessionWithCredentialsAndCookieToken(username, password);
			String token = mySession.getCookieToken();
			resp.sendRedirect(redirectUrl);
		} catch (ApiException e) {
			resp.sendRedirect("/portal");
		}
		return;
    }

}
