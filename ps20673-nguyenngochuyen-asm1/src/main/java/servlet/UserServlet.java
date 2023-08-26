package servlet;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import constant.SessionAttr;

import constant.SessionAttr;

import service.impl.UserServiceImpl;
import service.impl.VideoServiceImpl;
import bean.User;
import bean.Video;
import service.UserService;
import service.VideoService;
import service.impl.EmailServiceImpl;
import service.EmailService;
@WebServlet(urlPatterns = { "/login", "/logout", "/register", "/forgotPass", "/changePass" })
public class UserServlet extends HttpServlet {
	
	
	private UserService userService = new UserServiceImpl();
	private VideoService videoService = new VideoServiceImpl();
	private EmailService emailService = new EmailServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String path = req.getServletPath();
		switch (path) {
		case "/login":
			doGetLogin(req, resp);
			break;
		case "/register":
			doGetRegister(req, resp);
			break;
		case "/logout":
			doGetLogout(req, resp);
			break;
		case "/forgotPass":
			doGetForgotPass(req, resp);
			break;
		case "/changePass":
			doGetChangePass(req, resp);
			break;	
		}

	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session = req.getSession();

		String path = req.getServletPath(); // localhost/asm/login - Path is Login - know? - re~ nhanh'
		switch (path) {
		case "/login":
			doPostLogin(session, req, res);
			break;
		case "/register":
			doPostRegister(session, req, res);
			break;
		case "/forgotPass":
			doPostForgotPass(req,res);
			break;
		case "/changePass":
			doPostChangePass(session,req,res);
			break;
		}
	}
	
	private void doGetLogin(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/user/login.jsp");
		requestDispatcher.forward(req, resp);
	}
	private void doGetRegister(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/user/Registration.jsp");
		requestDispatcher.forward(req, resp);
	}
	private void doGetLogout(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		session.removeAttribute(SessionAttr.CURRENT_USER);
		resp.sendRedirect("home");
	}
	private void doGetForgotPass(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
	
		req.getRequestDispatcher("/views/user/forgotpass.jsp").forward(req, resp);
	}
	private void doGetChangePass(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
	
		req.getRequestDispatcher("/views/user/changepass.jsp").forward(req, resp);
	}
	
	private void doPostLogin(HttpSession session, HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		
		
		User user = userService.login(username, password);
		if (user != null) {
			session.setAttribute(SessionAttr.CURRENT_USER, user);
			res.sendRedirect("home");
		} else {
			res.sendRedirect("login");	
		}
	}
	private void doPostRegister(HttpSession session, HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String email = req.getParameter("email");

		User user = userService.create(username, password, email);

		if (user != null) {
			emailService.sendMail(getServletContext(), user, "welcome");
			session.setAttribute(SessionAttr.CURRENT_USER, user);
			res.sendRedirect("home");

		}  else {
			res.sendRedirect("register");
		}
	}
	private void doPostForgotPass(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		resp.setContentType("application/json");
		String email = req.getParameter("email");

		User userWithNewPass = userService.resetPassword(email);

		if (userWithNewPass != null) {
			emailService.sendMail(getServletContext(), userWithNewPass, "forgot");
			resp.setStatus(204);
		} else {
			resp.setStatus(400);
		}
	}
	private void doPostChangePass(HttpSession session,HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		resp.setContentType("application/json");
		String currentPassword = req.getParameter("currentPassword");
		String newPass = req.getParameter("newPass");
		User currentUser = (User) session.getAttribute(SessionAttr.CURRENT_USER);
		if(currentUser.getPassword().equals(currentUser)) {
			currentUser.setPassword(newPass);
			User updatedUser = userService.update(currentUser);
			if(updatedUser!=null) {
			session.setAttribute(SessionAttr.CURRENT_USER, updatedUser);
				resp.setStatus(204);
			}else {
				resp.setStatus(400);
			}
		}else {
			resp.setStatus(400);
		}
	
	}
}
