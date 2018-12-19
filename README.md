# MicroClouds

[ 版本正在升级,将启用Spring Boot + Shiro ,并遵循阿里巴巴Java开发手册规范代码 . 这将会大幅修改代码,我会注重注释,尽量多写有质量的代码和注释 .]

[ 同时利用现有资源,修改Web界面,加入更合理的布局,更美观的UI,这将重新设计网页页面UI . ]

[ 同时会保留旧项目的源码,不过旧代码也会根据阿里巴巴Java开发手册进行代码优化规范,适合初学者学习,并且可以作为期末作业的参考 .旧代码仓库到时候会更新 ]

Windows桌面版下载器地址 :  https://github.com/Fanqie22/Microclouds-Downloader ,可多线程断点下载 ,功能完善之后可连通数据库,上传/下载/管理文件更方便 

将加入Shiro安全框架管理认证,权限,会话以及密码加密 ,使其更完善 .

一个基于Spring/SpringMVC/Mybatis的云盘项目, 提供上传/下载/文件管理服务 .
使用Spring/SpringMVC/MyBatis框架搭建，通过配置SpringMVC DispatchServlet，实现ProgressListener接口，重写CommonsMultipartResolver方法实现文件上传进度监听 。可通过完整的文件逻辑系统管理用户文件 ，基于ResponseEntity实现用户下载。用户可通过web页面上传、下载、管理文件，也可以通过Windows版的下载器快速下载文件 ，下载器使用Java /Java Swing开发，支持多线程，可断点下载，用户可根据电脑情况自定义线程数。
主页

![](img/main.png)


上传页

![](img/upload.png)


注册页

![](img/register.png)


登录页

![](img/login.png)
