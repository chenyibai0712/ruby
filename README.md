# README

欢迎来到我的第一个ruby on rails 项目。还是有很多陌生的东西。我会慢慢的修改这个里面的东西。要是有什么问题，请直接留言。
此项目需要一些软件版本的支持

此项目安装方式设置
Ruby 2.4.3
rails 5.1.1
The bundler gem
postgresql 

1修改 config/database.yml下面的数据库连接配置
数据库IP 端口 数据库名称 用户名 密码 相关的内容修改成你自己的
然后执行：
 创建数据库rake db:create
 构建数据库rake db:migrate
 初始化数据rake db:seed
CD到项目的目录
rails s启动项目。
浏览器输入本机IP：3000
