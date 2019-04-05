# MicroClouds  一个方便的文件存储云盘

 [ 置顶 ] 因毕业设计临近 , 并且需要上班 , 截止 2019年1月11日13:15:25 , 此项目整改完成 70% , 剩余部分进度将放缓 .

 版本正在升级 ! 旧代码功能有限 , 并且太臃肿了 , 数据库设计也不太合理 , 而且 AWS S3(一个文件存储服务) 的服务已经过期了 ,但是代码没移除 .
 
 新版本将新增启用Spring Boot + Shiro + Redis + Thymeleaf + Bootstrap + Mybatis .
 
 2018年12月19日开始更改,预计很快就完成更改 .
 
 此次改动幅度较大, 预计原项目 95% 的代码将不可用 . 相当于新写了一个项目 .
 
 可以到此处查看每次的提交 : https://github.com/Fanqie22/microclouds-spring-boot
 
 此次更新将带来 : 
 
1. 启用强大的 Spring Boot ,告别几乎所有的Spring 配置 .

2. 启用安全框架 Shiro ,管理 认证/权限/密码/会话 ,更安全 .

3. 启用 Redis 缓存常用数据 .

4. 优化文件系统, 高效合理存储文件 .

5. 启用 Netty 快速开发高性能、高可靠性的 microclouds 客户端程序 https://github.com/Fanqie22/Microclouds-Downloader

5. 抛弃臃肿的 JSP , 使用 Thymeleaf 渲染视图 , Thymeleaf可完全替代 JSP .

6. 借助webupload前端框架,配合后台实现大文件分片/断点上传,秒传,可暂停可取消,可查看上传进度

7. 启用 JMS ,实现web应用之间异步通信(异步发送消息) .

8. 启用 WebSocket ,实现 Web浏览器跟服务器异步通信 .

9. 使用 Spring 发送 EMail , 启用 Thymeleaf模板生成Email,  开启邮箱验证 , 安全验证 .

10. 更好更高效的代码, 使用 google 的 guava 工具类, 遵循阿里巴巴Java开发手册规范代码 , 这将会大幅修改代码, 注重注释, 尽量多写有质量的代码和注释 .

11. 更好的UI界面, 借助Bootstrap框架, 修改Web界面, 加入更合理的布局, 更美观的UI, 这将重新设计网页页面UI . 

12. 适合初学者学习,并且可以作为期末Java EE作业的参考,旧代码仓库到时候会更新.

13. 大幅优化 SQL语句, 表结构 . 最后会贴出相关表的SQL创建语句 .

14. 此项目开发完毕之后将继续开发其子项目 - windows桌面版的多线程下载器 https://github.com/Fanqie22/Microclouds-Downloader .

15. 敬请期待 ! 



第三方引用 :

1.非常感谢GitHub的样式,登录注册页面引用了GitHub : https://github.com 的样式 .
