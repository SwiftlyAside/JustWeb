package Bean;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class CookieGenerator {
    public static Cookie getCookie(HttpServletRequest request, String name) {
        Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) {
            if (cookie.getName().contentEquals(name)) return cookie;
        }
        return null;
    }

    public static Cookie createCookie(String name, String value, String domain, String path, int maxAge, String encode) {
        Cookie cookie = null;
        try {
            cookie = new Cookie(URLEncoder.encode(name, encode), URLEncoder.encode(value, encode));
            cookie.setDomain(domain);
            cookie.setPath(path);
            cookie.setMaxAge(maxAge);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return cookie;
    }

    public static Cookie createCookie(String name, String value) {
        return new Cookie(name, value);
    }

    public static Cookie expiredCookie(String name, String value, int maxAge) {
        Cookie cookie = new Cookie(name, value);
        cookie.setMaxAge(maxAge);
        return cookie;
    }

}
