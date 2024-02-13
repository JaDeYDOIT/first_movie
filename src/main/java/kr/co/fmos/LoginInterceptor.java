package kr.co.fmos;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Component
public class LoginInterceptor implements HandlerInterceptor {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String userId = (String) request.getSession().getAttribute("s_id");
		System.out.println(userId);
		if (userId == "guest") {
			response.setContentType("text/html; charset=UTF-8");
			String warningMessage = "로그인 후 이용해주세요.";
			String script = "alert('" + warningMessage + "');";
			response.getWriter().println("<script>" + script + "window.location.href='/main';</script>");

			return false;
		}

		return true;
	}
}
