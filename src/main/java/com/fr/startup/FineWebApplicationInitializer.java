package com.fr.startup;

import com.fr.jvm.assist.FineAssist;
import com.fr.stable.collections.combination.Pair;
import com.fr.stable.lifecycle.ErrorType;
import com.fr.stable.lifecycle.LifecycleFatalError;
import org.springframework.boot.web.servlet.RegistrationBean;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * 帆软配置
 *
 * @author 奔波儿灞
 * @since 1.0
 */
public class FineWebApplicationInitializer extends RegistrationBean {

    private static final String DESCRIPTION = "fineWebApplicationInitializer";

    private void initFineWeb(ServletContext servletContext) {
        boolean success = true;
        ErrorType errorType = null;
        boolean startup = FineAssist.containsToolsJar() && FineAssist.isStartUp();
        if (!startup) {
            success = false;
            errorType = ErrorType.TOOLS;
        } else {
            FineWebApplicationStartup.getInstance().init(servletContext);
            try {
                FineWebApplicationStartup.getInstance().start();
            } catch (LifecycleFatalError error) {
                success = false;
                errorType = error.getErrorType();
            }
        }

        if (success) {
            servletContext.addListener(new ServletContextListener() {
                @Override
                public void contextInitialized(ServletContextEvent event) {
                    FineWebApplicationStartup.getInstance().getSpringStarter().start();
                }

                @Override
                public void contextDestroyed(ServletContextEvent event) {
                    FineWebApplicationStartup.getInstance().stop();
                }
            });
        } else {
            MockServletStartUp.start(new Pair<>(servletContext, errorType));
        }
    }

    @Override
    protected String getDescription() {
        return DESCRIPTION;
    }

    @Override
    protected void register(String description, ServletContext servletContext) {
        initFineWeb(servletContext);
    }
}
