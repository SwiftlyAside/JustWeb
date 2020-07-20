package com.x;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class SampleContext implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("START CONTEXT");
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("END CONTEXT");
    }
}
