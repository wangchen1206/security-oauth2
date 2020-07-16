使用springsecurity+oauth2+mysql+redis实现单点登录
springcloud-oauth2+springboot-security


1.springcloud-oauth2是通过资源服务器和认证服务器共同的TokenStore方式来进行认证的。(授权码方式，grant_type是 authorization_code)


首先第三方客户端在授权服务器进行授权，授权过程需要用户先登录授权服务器（也就是用户允许第三方客户端使用用户信息）

客户端获得授权码，客户端通过授权码在授权服务器获取access_token，需要client_id,client_secret，类似微信商户管理app（这个就是在oauth_client_details表中管理的client）。

然后通过access_token获取资源服务器上的资源，资源服务器通过去readToken(资源服务器从数据库或redis或内存中读取token，这就要求，资源服务器和认证服务器共享同一个认证数据库或redis)。

2.用户名密码方式

		
直接请求/oauth/token获取token,在请求头加上Authentication(Basic Auth(Base64加密) client_id 和client_secret)或者再请求参数上加上client_id和client_secret，以及username和password,grant_type是password。就可以直接获取token。

3.注意区别用户的权限（在表sys_user_role）和客户端的权限（在表 oauth_client_details) 是不一样的。




jwtToken 非对称加密
1.首先使用keytool生成jks (Java Key Store) 密钥，按提示输入姓氏等信息
  
  keytool -genkeypair -alias cc-jwt -validity 3650 -keyalg RSA -keypass password -keystore cc-jwt.jks -storepass password
  
2.生成的私钥文件会在当前目录，把cc-jwt.jks复制到授权服务器的resources目录下
3.在cc-jwt.jks同目录下，执行命令生成公钥
    keytool -list -rfc --keystore cc-jwt.jks | openssl x509 -inform pem -pubkey
    输入口令：password
    复制公钥部分到 public.txt 放到资源服务器resources目录下