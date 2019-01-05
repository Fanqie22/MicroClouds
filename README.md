# MicroClouds  一个方便的文件存储云盘

 版本正在升级 ! 旧代码太不规范太臃肿了 , 数据库设计也不合理 , 而且 AWS S3(一个文件存储服务) 的服务已经过期了(没钱续费 ) ,但是代码没移除 .
 
 新版本将新增启用Spring Boot + Shiro + Redis , 2018年12月19日开始更改,预计很快就完成更改 .
 
 此次改动幅度较大, 预计原项目 95% 的代码将不可用 . 相当于新写了一个项目 .
 
 可以到此处查看每次的提交 : https://github.com/Fanqie22/microclouds-spring-boot
 
 此次更新将带来 : 
 
1. 启用强大的 Spring Boot ,告别几乎所有的Spring 配置 .

2. 启用安全框架 Shiro ,管理 认证/权限/密码/会话 ,更安全 .

3. 启用 Redis 缓存数据 .

4. 抛弃臃肿的 JSP , 使用 Thymeleaf 渲染视图 , Thymeleaf可完全替代 JSP .

5. 启用 JMS ,实现web应用之间异步通信(异步发送消息) .

6. 启用 WebSocket ,实现 Web浏览器跟服务器异步通信 .

7. 使用 Spring 发送 EMail , 启用 Thymeleaf模板生成Email,  实现邮箱验证 , 安全验证 .

8. 更好更高效的代码, 遵循阿里巴巴Java开发手册规范代码 , 这将会大幅修改代码, 注重注释, 尽量多写有质量的代码和注释 .

9. 更好的UI界面, 利用现有资源, 修改Web界面, 加入更合理的布局, 更美观的UI, 这将重新设计网页页面UI . 

10. 适合初学者学习,并且可以作为期末Java EE作业的参考,旧代码仓库到时候会更新.

11. 大幅优化 SQL语句, 表结构 . 最后会贴出相关表的SQL创建语句 .

12. 敬请期待 ! 

Windows桌面版下载器地址 :  https://github.com/Fanqie22/Microclouds-Downloader ,可多线程断点下载 ,功能完善之后可连通数据库,上传/下载/管理文件更方便 (未完成)


第三方引用 :

1.非常感谢GitHub的样式,登录注册页面引用了GitHub : https://github.com 的样式 .

2.非常感谢medialoot, 首页的布局样式引用了 medialoot : https://medialoot.com/ 的样式.
