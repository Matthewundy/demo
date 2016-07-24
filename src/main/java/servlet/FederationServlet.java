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
			String URL = "https://prs-poc.oktapreview.com";
			String APIKEY = "00SQ0wjP6mM48CvB-gt6Iuv9QgdSuX3MizQSK-xdkw";	
			ApiClientConfiguration oktaSettings = new ApiClientConfiguration(URL, APIKEY);
			UserApiClient usersClient = new UserApiClient(oktaSettings);
			User user = usersClient.getUser(username);
			req.setAttribute("username",user.getProfile().getLogin());
			if(user.getProfile().getUnmapped().get("idp") != null){

			if(user.getProfile().getUnmapped().get("idp").equals("PRS-Customer-A")){
				req.setAttribute("idp","PRS-Customer-A");
				req.setAttribute("url","https://prs-poc-customer.oktapreview.com/home/bookmark/0oa6wjidi9JJlZYb20h7/1280?fromHome=true");
}
			if(user.getProfile().getUnmapped().get("idp").equals("PRS-Customer-B")){
				req.setAttribute("idp","PRS-Customer-B");
				req.setAttribute("url","https://fs.demo-iam.com/adfs/ls/IdpInitiatedSignOn.aspx?RelayState=RPID%3Dhttps%253A%252F%252Fwww.okta.com%252Fsaml2%252Fservice-provider%252Fspzotjljqwhhcttplpon%26RelayState%3Dhttps%3A%2F%2Feuromonitorpoc.oktapreview.com%2Fapp%2Feuromonitorpoc_euromonitorpassport_1%2Fexk6mqdgvsyvhEIE20h7%2Fsso%2Fsaml");
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
