package admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.databind.ObjectMapper;
import dto.UserDto;

import bean.User;
import bean.Video;
import constant.SessionAttr;
import dto.VideoLikedInfo;
import service.StatsService;
import service.impl.StatsServiceImpl;
import service.UserService;
import service.VideoService;
import service.impl.UserServiceImpl;
import service.impl.VideoServiceImpl;


@WebServlet(urlPatterns = { "/admin", "/admin/favorites","/admin/view" }, name = "HomeControllerOfAdmin")
public class AdminServlet extends HttpServlet {
	private StatsService statsService = new StatsServiceImpl();
	private VideoService videoService = new VideoServiceImpl();
	private UserService userService = new UserServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		User currentUser =  (User) session.getAttribute(SessionAttr.CURRENT_USER);
		if(currentUser != null && currentUser.getIsAdmin() == Boolean.TRUE) {
			String path = req.getServletPath(); //localhost/Asm-Java4/login - Path re nhanh phia sau ten Project
			switch (path) {
			case "/admin":
				doGetHome(req, resp);
				break;
			case "/admin/favorites":
				doGetFavorites(req, resp);
				break;
			
			}

		}else {
			resp.sendRedirect("home");
		}

	}
	private void doGetHome(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//Thong ke tat ca video va luot
		List<VideoLikedInfo> videos = statsService.findVideoLikedInfo();
		req.setAttribute("videos", videos);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/views/admin/home.jsp");
		dispatcher.forward(req, resp);
	}
	private void doGetFavorites(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//Set data thay doi theo combobox
		PrintWriter out = resp.getWriter();
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");// Set kieu tra ve la JSON
		String videoHref = req.getParameter("href");
		List<UserDto> users = userService.findUserLikedByVideoVideoHref(videoHref);
		if (users.isEmpty()) {
			resp.setStatus(400);
		} else {
			// Phai map User tu Object sang Json
			ObjectMapper mapper = new ObjectMapper();
			String dataResponse = mapper.writeValueAsString(users);
			//
			resp.setStatus(200); // co tra ve data json
			out.print(dataResponse); // in ra mang Users vua dc convert sang Json
			out.flush(); // xả stream - day ra

		}

	}
	
}
