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
		
                String username = req.getParameter("UserName"); 
		String password = req.getParameter("Password");

		try{
			String URL = "https://prs-poc.oktapreview.com";
			String APIKEY = "00SQ0wjP6mM48CvB-gt6Iuv9QgdSuX3MizQSK-xdkw";	
			ApiClientConfiguration oktaSettings = new ApiClientConfiguration(URL, APIKEY);
			SessionApiClient sessionClient = new SessionApiClient(oktaSettings);
			Session mySession = sessionClient.createSessionWithCredentialsAndCookieToken(username, password);
			String token = mySession.getCookieToken();
			String redirectUrl="https://prs-poc.oktapreview.com/app/prspoc_prsportal_1/exk6whu6m8os3Ak5q0h7/sso/saml";
			resp.sendRedirect("https://prs-poc.oktapreview.com/login/sessionCookieRedirect?token=" + token + "&redirectUrl=" + redirectUrl);
		} catch (ApiException e) {
			resp.sendRedirect("/portal");
		}
		return;
    }

}
