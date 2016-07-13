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
        name = "FederationServlet",
        urlPatterns = {"/federation"}
    )
public class FederationServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
    	req.getRequestDispatcher("federation_auto.jsp").forward(req, resp);
		return;
    }
    
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
		
                String username = req.getParameter("UserName"); 

		try{
			String URL = "https://euromonitorpoc.oktapreview.com";
			String APIKEY = "000Bt4MM9juwLryGcsbHpannrwCb3d8i9vd5Z288Hk";	
			ApiClientConfiguration oktaSettings = new ApiClientConfiguration(URL, APIKEY);
		} catch (ApiException e) {
req.getRequestDispatcher("federation_auto.jsp").forward(req, resp);
		}

req.getRequestDispatcher("federation_auto.jsp").forward(req, resp);
		return;
    }

}
