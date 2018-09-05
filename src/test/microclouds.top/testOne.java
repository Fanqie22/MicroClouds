package microclouds.top;

import com.microclouddisks.dao.mainDao;
import com.microclouddisks.entity.logs;
import com.microclouddisks.service.mainService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;

/**
 * 配置spring和junit整合，这样junit在启动时就会加载spring容器 并且告诉junit spring配置文件的位置
 */
@RunWith(SpringJUnit4ClassRunner.class)
// 告诉junit spring的配置文件
@ContextConfiguration({"classpath:applicationContext.xml", "classpath:spring-mvc.xml"})
public class testOne {
    @Resource
    private mainDao mainDao;
    @Resource
    private mainService mainService;
    
    @Test
    public void test1(){
        logs log = new logs();
        log.setLogid("dd" + "-dd");
        log.setLogtype("上传文件");
        log.setLogtime("t354657687");
        log.setLogcontent("用户  上传了文件 : ");
        log.setUsermail("1393203396@qq.com");
        System.out.println("log : 2  " );
        int logs = mainService.logInsert(log);
        System.out.println("log : " + logs + "  ---- >  " + log);
    }
}
