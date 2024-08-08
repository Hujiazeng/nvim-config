## 环境要求

使用萝卜工具对系统环境也有一定的要求。

在安装程序之前，检查你的服务器或者虚拟主机是否支持以下环境：

- N卡
- Windows系统


## 开始安装

通过本文档，或者交流群，将萝卜工具和声音服务下载至你的服务器或者虚拟主机后分别解压。

- 在声音服务目录，启动声音服务。

- 在萝卜工具目录，启动萝卜工具。

首次使用，注册新账号，然后登录即可开始使用。

如果你需要任何帮助，可以点击这里联系我们：[Join us](https://qm.qq.com/q/GuJXOQ3ziK)

<!-- - Apache伪静态规则：无需配置，规则就是程序根目录的.htaccess文件
- Nginx伪静态规则：
```
location / {
      if (!-e $request_filename){
              rewrite ^(.*)$ /index.php?s=$1 last; break;
      }
}
```
- Windows IIS 伪静态规则：
```
<rules>
	<rule name="acg_rewrite" stopProcessing="true">
		<match url="^(.*)$"/>
		<conditions logicalGrouping="MatchAll">
			<add input="{HTTP_HOST}" pattern="^(.*)$"/>
			<add input="{REQUEST_FILENAME}" matchType="IsFile" negate="true"/>
			<add input="{REQUEST_FILENAME}" matchType="IsDirectory" negate="true"/>
		</conditions>
		<action type="Rewrite" url="index.php?s={R:1}"/>
	</rule>
</rules>
```

配置完伪静态后，访问你的网站首页，即可进行安装。

安装完成后，后台地址是：`https://你的域名/admin` -->