package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.Base64;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

@WebServlet(
        name = "MyServlet",
        urlPatterns = {"/portal"}
    )
public class HelloServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
	if(req.getParameter("token") != null){
		
    		req.getRequestDispatcher("portal.jsp").forward(req, resp);
	} else {
    		req.getRequestDispatcher("login.jsp").forward(req, resp);
	}
		return;
    }
    
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
    	
    	
		if(req.getParameter("SAMLResponse") != null){
			String responseMessage = req.getParameter("SAMLResponse");
			Base64.Decoder decoder = Base64.getDecoder();
			byte[] base64DecodedResponse = decoder.decode(responseMessage);
			String s = new String(base64DecodedResponse);
			req.setAttribute("saml",s);
			ByteArrayInputStream input = new ByteArrayInputStream(base64DecodedResponse);
		
			try {
				DocumentBuilderFactory documentBuilderFactory = DocumentBuilderFactory.newInstance();
				DocumentBuilder docBuilder = documentBuilderFactory.newDocumentBuilder();
				Document document = docBuilder.parse(input);
				NodeList nList = document.getElementsByTagName("saml2:Subject");
				Node samlSubject = nList.item(0);
				
				req.setAttribute("username",samlSubject.getTextContent());
				
			} catch (ParserConfigurationException e) {
				
			} catch (SAXException | IOException e) {
				
			} 
		}
		
    	req.getRequestDispatcher("portal.jsp").forward(req, resp);
		return;
    }

}
