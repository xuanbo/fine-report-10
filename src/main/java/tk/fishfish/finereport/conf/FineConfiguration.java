package tk.fishfish.finereport.conf;

import com.fr.startup.FineWebApplicationInitializer;
import org.apache.catalina.Context;
import org.springframework.beans.factory.BeanCreationException;
import org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.io.File;

/**
 * 帆软配置
 *
 * @author 奔波儿灞
 * @since 1.0
 */
@Configuration
public class FineConfiguration {

    /**
     * 初始化帆软Web环境
     *
     * @return FineWebApplicationInitializer
     */
    @Bean
    public FineWebApplicationInitializer initializer() {
        return new FineWebApplicationInitializer();
    }

    /**
     * 自定义帆软webapp目录，从src/main/webapp重定向到env下
     *
     * @return TomcatServletWebServerFactory
     */
    @Bean
    public TomcatServletWebServerFactory tomcatServletWebServerFactory() {
        return new TomcatServletWebServerFactory() {
            @Override
            protected void postProcessContext(Context context) {
                File file = new File("env");
                if (file.exists() && file.isDirectory()) {
                    String env = file.getAbsoluteFile().getPath();
                    logger.info("Reset fine webapp dir: " + env);
                    context.setDocBase(env);
                } else {
                    throw new BeanCreationException("Fine webapp dir [env] not found");
                }
            }
        };
    }

}
