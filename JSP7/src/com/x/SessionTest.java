package com.x;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

@WebListener
public class SessionTest implements HttpSessionAttributeListener {
    private static final Map<String, HttpSession> sessionMap = new ConcurrentHashMap<>();

    public synchronized static void getSessions() {
        for (String key : sessionMap.keySet()) {
            System.out.println("key: " + key);
            HttpSession value = sessionMap.get(key);
            System.out.println("value: " + value);
            if (value != null)
                System.out.println("value attr: " + value.getAttribute("userId"));
        }
    }

    @Override
    public void attributeAdded(HttpSessionBindingEvent se) {
        sessionMap.put(se.getSession().getId(), se.getSession());
        System.out.println("Attribute Added");
    }

    @Override
    public void attributeRemoved(HttpSessionBindingEvent se) {
        System.out.println("Attribute Removed");
    }

    @Override
    public void attributeReplaced(HttpSessionBindingEvent se) {
        System.out.println("Attribute Replaced");
    }
}
