package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.okta.sdk.clients.UserApiClient;
import com.okta.sdk.clients.UserApiClient;
import com.okta.sdk.exceptions.ApiException;
import com.okta.sdk.framework.ApiClientConfiguration;
import com.okta.sdk.models.users.User;
import com.okta.sdk.models.users.UserProfile;

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
			String URL = "https://platformdemo.oktapreview.com";
			String APIKEY = "00KDoImEGLyvlD8tv3VgJHkPYIg0Oox0vXG6W2HqBI";	
			ApiClientConfiguration oktaSettings = new ApiClientConfiguration(URL, APIKEY);
			UserApiClient usersClient = new UserApiClient(oktaSettings);
			User user = usersClient.getUser(username);
			req.setAttribute("username",user.getProfile().getLogin());
			if(user.getProfile().getUnmapped().get("idp") != null){

			if(user.getProfile().getUnmapped().get("idp").equals("platformdemo-1")){
				req.setAttribute("idp","platformdemo-1");
				//req.setAttribute("url","https://platformdemo-1.oktapreview.com/home/bookmark/0oa88e5smy4ag4AAB0h7/1280");
				resp.sendRedirect("https://platformdemo-1.oktapreview.com/home/bookmark/0oa88e5smy4ag4AAB0h7/1280");
				return;
}
			if(user.getProfile().getUnmapped().get("idp").equals("platformdemo-2")){
				req.setAttribute("idp","platformdemo-2");
				//req.setAttribute("url","https://platformdemo-2.oktapreview.com/home/bookmark/0oa88dvx1fgb2EB6G0h7/1280");
				resp.sendRedirect("https://platformdemo-2.oktapreview.com/home/bookmark/0oa88dvx1fgb2EB6G0h7/1280");
				return;
}
} else {
	req.setAttribute("idp","None - local user");
        req.setAttribute("url","None");
}
		} catch (ApiException e) {
req.getRequestDispatcher("federation_auto.jsp").forward(req, resp);
		}

req.getRequestDispatcher("federation_auto_result.jsp").forward(req, resp);
		return;
    }

}
