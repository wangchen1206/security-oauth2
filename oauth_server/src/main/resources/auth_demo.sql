-- MySQL dump 10.13  Distrib 5.7.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: auth_demo
-- ------------------------------------------------------
-- Server version	5.7.28-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `oauth_access_token`
--

DROP TABLE IF EXISTS `oauth_access_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_token` (
  `token_id` varchar(255) DEFAULT NULL COMMENT 'Âä†ÂØÜÁöÑaccess_tokenÁöÑÂÄº',
  `token` longblob COMMENT 'OAuth2AccessToken.javaÂØπË±°Â∫èÂàóÂåñÂêéÁöÑ‰∫åËøõÂà∂Êï∞ÊçÆ',
  `authentication_id` varchar(255) DEFAULT NULL COMMENT 'Âä†ÂØÜËøáÁöÑusername,client_id,scope',
  `user_name` varchar(255) DEFAULT NULL COMMENT 'ÁôªÂΩïÁöÑÁî®Êà∑Âêç',
  `client_id` varchar(255) DEFAULT NULL COMMENT 'ÂÆ¢Êà∑Á´ØID',
  `authentication` longblob COMMENT 'OAuth2Authentication.javaÂØπË±°Â∫èÂàóÂåñÂêéÁöÑ‰∫åËøõÂà∂Êï∞ÊçÆ',
  `refresh_token` varchar(255) DEFAULT NULL COMMENT 'Âä†ÂØÜÁöÑrefresh_tokenÁöÑÂÄº'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_token`
--

LOCK TABLES `oauth_access_token` WRITE;
/*!40000 ALTER TABLE `oauth_access_token` DISABLE KEYS */;
INSERT INTO `oauth_access_token` (`token_id`, `token`, `authentication_id`, `user_name`, `client_id`, `authentication`, `refresh_token`) VALUES ('3ced607a9690a14d55049ad84bf377d8',_binary '¨\Ì\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken≤û6$˙\Œ\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.Collections$EmptyMapY6ÖZ\‹\Á\–\0\0xpsr\0java.util.DatehjÅKYt\0\0xpw\0\0sR.íxsr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/\ﬂGcù\–…∑\0L\0\nexpirationq\0~\0xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens\·\ncT\‘^\0L\0valueq\0~\0xpt\0$300c2be2-9c04-4d70-bd3e-93a06c75cc90sq\0~\0	w\0\0sQ\‹,Dxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readxt\0bearert\0$c3668824-8ef5-451a-9844-2b310c8da27d','05c82586cc8d6f9caa2e9853cadf5aab','cc','cc',_binary '¨\Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0\"com.cc.oauth.server.entity.SysRole˙êó¡$°\0L\0idt\0Ljava/lang/Integer;L\0roleDesct\0Ljava/lang/String;L\0roleNameq\0~\0xpsr\0java.lang.Integer‚†§˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî\‡ã\0\0xp\0\0\0t\0readt\0readxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0ccsr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rresponse_typet\0codet\0\rclient_secrett\0111111t\0codet\09E2VwXt\0\ngrant_typet\0authorization_codet\0	client_idt\0ccxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readxsq\0~\0.w\0\0\0?@\0\0\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0\0L\0roleq\0~\0xpt\0readxsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0http://www.baidu.compsq\0~\0.w\0\0\0?@\0\0\0\0\0t\0product_apixsq\0~\0.w\0\0\0?@\0\0\0\0\0q\0~\0\"xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0xq\0~\0=sr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0 2DA9E382DD397DBF073C9942EAAE441Apsr\0\"com.cc.oauth.server.entity.SysUser_qu\Ë~\·\ﬁ˙\0L\0idq\0~\0L\0passwordq\0~\0L\0rolesq\0~\0L\0statusq\0~\0L\0usernameq\0~\0xpq\0~\0t\0<$2a$10$2WwI2zQ7yTO.pliwB3/hpejAkXxv.A59w/xXzCCXGyrBy1QrfYWhWsq\0~\0\0\0\0w\0\0\0q\0~\0xpt\0cc','afcc57a7f2886de5b17004c652a08aa3'),('373d32aa70f58e49d121933ba826b82f',_binary '¨\Ì\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken≤û6$˙\Œ\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.Collections$EmptyMapY6ÖZ\‹\Á\–\0\0xpsr\0java.util.DatehjÅKYt\0\0xpw\0\0sR+ˇ\‰xsr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/\ﬂGcù\–…∑\0L\0\nexpirationq\0~\0xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens\·\ncT\‘^\0L\0valueq\0~\0xpt\0$47d3b4e0-a93b-4385-86b1-87bbd6d8e0f8sq\0~\0	w\0\0sQŸö#xsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writext\0bearert\0$fdd7ec08-9680-4a0f-8cad-832bca6a3e76','731da1831e04b8d9222c79c2923092f7','cc','cc',_binary '¨\Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0\"com.cc.oauth.server.entity.SysRole˙êó¡$°\0L\0idt\0Ljava/lang/Integer;L\0roleDesct\0Ljava/lang/String;L\0roleNameq\0~\0xpsr\0java.lang.Integer‚†§˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî\‡ã\0\0xp\0\0\0t\0readt\0readxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0ccsr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rresponse_typet\0codet\0\rclient_secrett\0111111t\0codet\0J1vrJKt\0\ngrant_typet\0authorization_codet\0	client_idt\0ccxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writexsq\0~\0.w\0\0\0?@\0\0\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0\0L\0roleq\0~\0xpt\0readxsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0http://www.baidu.compsq\0~\0.w\0\0\0?@\0\0\0\0\0t\0product_apixsq\0~\0.w\0\0\0?@\0\0\0\0\0q\0~\0\"xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0xq\0~\0>sr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0 2DA9E382DD397DBF073C9942EAAE441Apsr\0\"com.cc.oauth.server.entity.SysUser_qu\Ë~\·\ﬁ˙\0L\0idq\0~\0L\0passwordq\0~\0L\0rolesq\0~\0L\0statusq\0~\0L\0usernameq\0~\0xpq\0~\0t\0<$2a$10$2WwI2zQ7yTO.pliwB3/hpejAkXxv.A59w/xXzCCXGyrBy1QrfYWhWsq\0~\0\0\0\0w\0\0\0q\0~\0xpt\0cc','0c9a71c425a9fa283d46e07a6f2d2dc1');
/*!40000 ALTER TABLE `oauth_access_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_approvals`
--

DROP TABLE IF EXISTS `oauth_approvals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_approvals` (
  `userId` varchar(255) DEFAULT NULL COMMENT 'ÁôªÂΩïÁöÑÁî®Êà∑Âêç',
  `clientId` varchar(255) DEFAULT NULL COMMENT 'ÂÆ¢Êà∑Á´ØID',
  `scope` varchar(255) DEFAULT NULL COMMENT 'Áî≥ËØ∑ÁöÑÊùÉÈôêËåÉÂõ¥',
  `status` varchar(10) DEFAULT NULL COMMENT 'Áä∂ÊÄÅÔºàApproveÊàñDenyÔºâ',
  `expiresAt` datetime DEFAULT NULL COMMENT 'ËøáÊúüÊó∂Èó¥',
  `lastModifiedAt` datetime DEFAULT NULL COMMENT 'ÊúÄÁªà‰øÆÊîπÊó∂Èó¥'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_approvals`
--

LOCK TABLES `oauth_approvals` WRITE;
/*!40000 ALTER TABLE `oauth_approvals` DISABLE KEYS */;
INSERT INTO `oauth_approvals` (`userId`, `clientId`, `scope`, `status`, `expiresAt`, `lastModifiedAt`) VALUES ('cc','user_client','read','APPROVED','2020-08-15 15:25:39','2020-07-15 15:25:39'),('cc','user_client','write','APPROVED','2020-08-15 15:25:39','2020-07-15 15:25:39'),('cc','cc','write','APPROVED','2020-08-15 17:22:44','2020-07-15 17:22:44'),('cc','cc','read','APPROVED','2020-08-15 17:22:44','2020-07-15 17:22:44');
/*!40000 ALTER TABLE `oauth_approvals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_client_details`
--

DROP TABLE IF EXISTS `oauth_client_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_client_details` (
  `client_id` varchar(255) NOT NULL COMMENT 'ÂÆ¢Êà∑Á´ØID',
  `resource_ids` varchar(255) DEFAULT NULL COMMENT 'ËµÑÊ∫êIDÈõÜÂêà,Â§ö‰∏™ËµÑÊ∫êÊó∂Áî®ÈÄóÂè∑(,)ÂàÜÈöî',
  `client_secret` varchar(255) DEFAULT NULL COMMENT 'ÂÆ¢Êà∑Á´ØÂØÜÂåô',
  `scope` varchar(255) DEFAULT NULL COMMENT 'ÂÆ¢Êà∑Á´ØÁî≥ËØ∑ÁöÑÊùÉÈôêËåÉÂõ¥',
  `authorized_grant_types` varchar(255) DEFAULT NULL COMMENT 'ÂÆ¢Êà∑Á´ØÊîØÊåÅÁöÑgrant_type',
  `web_server_redirect_uri` varchar(255) DEFAULT NULL COMMENT 'ÈáçÂÆöÂêëURI',
  `authorities` varchar(255) DEFAULT NULL COMMENT 'ÂÆ¢Êà∑Á´ØÊâÄÊã•ÊúâÁöÑSpring SecurityÁöÑÊùÉÈôêÂÄºÔºåÂ§ö‰∏™Áî®ÈÄóÂè∑(,)ÂàÜÈöî',
  `access_token_validity` int(11) DEFAULT NULL COMMENT 'ËÆøÈóÆ‰ª§ÁâåÊúâÊïàÊó∂Èó¥ÂÄº(Âçï‰Ωç:Áßí)',
  `refresh_token_validity` int(11) DEFAULT NULL COMMENT 'Êõ¥Êñ∞‰ª§ÁâåÊúâÊïàÊó∂Èó¥ÂÄº(Âçï‰Ωç:Áßí)',
  `additional_information` varchar(255) DEFAULT NULL COMMENT 'È¢ÑÁïôÂ≠óÊÆµ',
  `autoapprove` varchar(255) DEFAULT NULL COMMENT 'Áî®Êà∑ÊòØÂê¶Ëá™Âä®ApprovalÊìç‰Ωú'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_client_details`
--

LOCK TABLES `oauth_client_details` WRITE;
/*!40000 ALTER TABLE `oauth_client_details` DISABLE KEYS */;
INSERT INTO `oauth_client_details` (`client_id`, `resource_ids`, `client_secret`, `scope`, `authorized_grant_types`, `web_server_redirect_uri`, `authorities`, `access_token_validity`, `refresh_token_validity`, `additional_information`, `autoapprove`) VALUES ('cc','product_api','$2a$10$2WwI2zQ7yTO.pliwB3/hpejAkXxv.A59w/xXzCCXGyrBy1QrfYWhW','read,write','password,refresh_token,authorization_code,implicit','http://www.baidu.com','read',7200,1800,NULL,'true');
/*!40000 ALTER TABLE `oauth_client_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_client_token`
--

DROP TABLE IF EXISTS `oauth_client_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_client_token` (
  `token_id` varchar(255) DEFAULT NULL COMMENT 'Âä†ÂØÜÁöÑaccess_tokenÂÄº',
  `token` longblob COMMENT 'OAuth2AccessToken.javaÂØπË±°Â∫èÂàóÂåñÂêéÁöÑ‰∫åËøõÂà∂Êï∞ÊçÆ',
  `authentication_id` varchar(255) DEFAULT NULL COMMENT 'Âä†ÂØÜËøáÁöÑusername,client_id,scope',
  `user_name` varchar(255) DEFAULT NULL COMMENT 'ÁôªÂΩïÁöÑÁî®Êà∑Âêç',
  `client_id` varchar(255) DEFAULT NULL COMMENT 'ÂÆ¢Êà∑Á´ØID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_client_token`
--

LOCK TABLES `oauth_client_token` WRITE;
/*!40000 ALTER TABLE `oauth_client_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_client_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_code`
--

DROP TABLE IF EXISTS `oauth_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_code` (
  `code` varchar(255) DEFAULT NULL COMMENT 'ÊéàÊùÉÁ†Å(Êú™Âä†ÂØÜ)',
  `authentication` blob COMMENT 'AuthorizationRequestHolder.javaÂØπË±°Â∫èÂàóÂåñÂêéÁöÑ‰∫åËøõÂà∂Êï∞ÊçÆ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_code`
--

LOCK TABLES `oauth_code` WRITE;
/*!40000 ALTER TABLE `oauth_code` DISABLE KEYS */;
INSERT INTO `oauth_code` (`code`, `authentication`) VALUES ('1OEo6R',_binary '¨\Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0\"com.cc.oauth.server.entity.SysRole˙êó¡$°\0L\0idt\0Ljava/lang/Integer;L\0roleDesct\0Ljava/lang/String;L\0roleNameq\0~\0xpsr\0java.lang.Integer‚†§˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî\‡ã\0\0xp\0\0\0t\0readt\0readxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0user_clientsr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rresponse_typet\0codet\0	client_idq\0~\0xsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writexsq\0~\0\'w\0\0\0?@\0\0\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0\0L\0roleq\0~\0xpt\0readsq\0~\0,t\0writexsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0http://www.baidu.compsq\0~\0\'w\0\0\0?@\0\0\0\0\0t\0product_apixsq\0~\0\'w\0\0\0?@\0\0\0\0\0q\0~\0\"xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0xq\0~\09sr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0 011134940FBB2F1425E65661F544E279psr\0\"com.cc.oauth.server.entity.SysUser_qu\Ë~\·\ﬁ˙\0L\0idq\0~\0L\0passwordq\0~\0L\0rolesq\0~\0L\0statusq\0~\0L\0usernameq\0~\0xpq\0~\0t\0<$2a$10$2WwI2zQ7yTO.pliwB3/hpejAkXxv.A59w/xXzCCXGyrBy1QrfYWhWsq\0~\0\0\0\0w\0\0\0q\0~\0xpt\0cc'),('PI3Av7',_binary '¨\Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0\"com.cc.oauth.server.entity.SysRole˙êó¡$°\0L\0idt\0Ljava/lang/Integer;L\0roleDesct\0Ljava/lang/String;L\0roleNameq\0~\0xpsr\0java.lang.Integer‚†§˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî\‡ã\0\0xp\0\0\0t\0readt\0readxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0ccsr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rresponse_typet\0codet\0	client_idq\0~\0xsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writexsq\0~\0\'w\0\0\0?@\0\0\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0\0L\0roleq\0~\0xpt\0readsq\0~\0,t\0writexsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0http://www.baidu.compsq\0~\0\'w\0\0\0?@\0\0\0\0\0t\0product_apixsq\0~\0\'w\0\0\0?@\0\0\0\0\0q\0~\0\"xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0xq\0~\09sr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0 011134940FBB2F1425E65661F544E279psr\0\"com.cc.oauth.server.entity.SysUser_qu\Ë~\·\ﬁ˙\0L\0idq\0~\0L\0passwordq\0~\0L\0rolesq\0~\0L\0statusq\0~\0L\0usernameq\0~\0xpq\0~\0t\0<$2a$10$2WwI2zQ7yTO.pliwB3/hpejAkXxv.A59w/xXzCCXGyrBy1QrfYWhWsq\0~\0\0\0\0w\0\0\0q\0~\0xpt\0cc'),('LTsgOa',_binary '¨\Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0\"com.cc.oauth.server.entity.SysRole˙êó¡$°\0L\0idt\0Ljava/lang/Integer;L\0roleDesct\0Ljava/lang/String;L\0roleNameq\0~\0xpsr\0java.lang.Integer‚†§˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî\‡ã\0\0xp\0\0\0t\0readt\0readxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0ccsr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rresponse_typet\0codet\0	client_idq\0~\0t\0scopet\0readxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0q\0~\0%xsq\0~\0)w\0\0\0?@\0\0\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0\0L\0roleq\0~\0xpt\0readsq\0~\0,t\0writexsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0http://www.baidu.compsq\0~\0)w\0\0\0?@\0\0\0\0\0t\0product_apixsq\0~\0)w\0\0\0?@\0\0\0\0\0q\0~\0\"xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0xq\0~\09sr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0 B2CA530E5F7911B042D2A5017A40EB53psr\0\"com.cc.oauth.server.entity.SysUser_qu\Ë~\·\ﬁ˙\0L\0idq\0~\0L\0passwordq\0~\0L\0rolesq\0~\0L\0statusq\0~\0L\0usernameq\0~\0xpq\0~\0t\0<$2a$10$2WwI2zQ7yTO.pliwB3/hpejAkXxv.A59w/xXzCCXGyrBy1QrfYWhWsq\0~\0\0\0\0w\0\0\0q\0~\0xpt\0cc'),('N96Q7w',_binary '¨\Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0\"com.cc.oauth.server.entity.SysRole˙êó¡$°\0L\0idt\0Ljava/lang/Integer;L\0roleDesct\0Ljava/lang/String;L\0roleNameq\0~\0xpsr\0java.lang.Integer‚†§˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî\‡ã\0\0xp\0\0\0t\0readt\0readxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0ccsr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rresponse_typet\0codet\0	client_idq\0~\0t\0scopet\0readxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0q\0~\0%xsq\0~\0)w\0\0\0?@\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0http://www.baidu.compsq\0~\0)w\0\0\0?@\0\0\0\0\0t\0product_apixsq\0~\0)w\0\0\0?@\0\0\0\0\0q\0~\0\"xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0xq\0~\04sr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0 B2CA530E5F7911B042D2A5017A40EB53psr\0\"com.cc.oauth.server.entity.SysUser_qu\Ë~\·\ﬁ˙\0L\0idq\0~\0L\0passwordq\0~\0L\0rolesq\0~\0L\0statusq\0~\0L\0usernameq\0~\0xpq\0~\0t\0<$2a$10$2WwI2zQ7yTO.pliwB3/hpejAkXxv.A59w/xXzCCXGyrBy1QrfYWhWsq\0~\0\0\0\0w\0\0\0q\0~\0xpt\0cc'),('0FMIiK',_binary '¨\Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0\"com.cc.oauth.server.entity.SysRole˙êó¡$°\0L\0idt\0Ljava/lang/Integer;L\0roleDesct\0Ljava/lang/String;L\0roleNameq\0~\0xpsr\0java.lang.Integer‚†§˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî\‡ã\0\0xp\0\0\0t\0readt\0readxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0ccsr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rresponse_typet\0codet\0	client_idq\0~\0t\0scopet\0readxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0q\0~\0%xsq\0~\0)w\0\0\0?@\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0http://www.baidu.compsq\0~\0)w\0\0\0?@\0\0\0\0\0t\0product_apixsq\0~\0)w\0\0\0?@\0\0\0\0\0q\0~\0\"xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0xq\0~\04sr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0 B2CA530E5F7911B042D2A5017A40EB53psr\0\"com.cc.oauth.server.entity.SysUser_qu\Ë~\·\ﬁ˙\0L\0idq\0~\0L\0passwordq\0~\0L\0rolesq\0~\0L\0statusq\0~\0L\0usernameq\0~\0xpq\0~\0t\0<$2a$10$2WwI2zQ7yTO.pliwB3/hpejAkXxv.A59w/xXzCCXGyrBy1QrfYWhWsq\0~\0\0\0\0w\0\0\0q\0~\0xpt\0cc'),('0l4NUu',_binary '¨\Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0\"com.cc.oauth.server.entity.SysRole˙êó¡$°\0L\0idt\0Ljava/lang/Integer;L\0roleDesct\0Ljava/lang/String;L\0roleNameq\0~\0xpsr\0java.lang.Integer‚†§˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî\‡ã\0\0xp\0\0\0t\0readt\0readxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0ccsr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rresponse_typet\0codet\0	client_idq\0~\0t\0scopet\0readxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0q\0~\0%xsq\0~\0)w\0\0\0?@\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0http://www.baidu.compsq\0~\0)w\0\0\0?@\0\0\0\0\0t\0product_apixsq\0~\0)w\0\0\0?@\0\0\0\0\0q\0~\0\"xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0xq\0~\04sr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0 B2CA530E5F7911B042D2A5017A40EB53psr\0\"com.cc.oauth.server.entity.SysUser_qu\Ë~\·\ﬁ˙\0L\0idq\0~\0L\0passwordq\0~\0L\0rolesq\0~\0L\0statusq\0~\0L\0usernameq\0~\0xpq\0~\0t\0<$2a$10$2WwI2zQ7yTO.pliwB3/hpejAkXxv.A59w/xXzCCXGyrBy1QrfYWhWsq\0~\0\0\0\0w\0\0\0q\0~\0xpt\0cc');
/*!40000 ALTER TABLE `oauth_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_token`
--

DROP TABLE IF EXISTS `oauth_refresh_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_token` (
  `token_id` varchar(255) DEFAULT NULL COMMENT 'Âä†ÂØÜËøáÁöÑrefresh_tokenÁöÑÂÄº',
  `token` longblob COMMENT 'OAuth2RefreshToken.javaÂØπË±°Â∫èÂàóÂåñÂêéÁöÑ‰∫åËøõÂà∂Êï∞ÊçÆ ',
  `authentication` longblob COMMENT 'OAuth2Authentication.javaÂØπË±°Â∫èÂàóÂåñÂêéÁöÑ‰∫åËøõÂà∂Êï∞ÊçÆ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_token`
--

LOCK TABLES `oauth_refresh_token` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_token` DISABLE KEYS */;
INSERT INTO `oauth_refresh_token` (`token_id`, `token`, `authentication`) VALUES ('274ce1e5ace26ffcc75a4bbd31dbabbf',_binary '¨\Ì\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/\ﬂGcù\–…∑\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens\·\ncT\‘^\0L\0valuet\0Ljava/lang/String;xpt\0$52a03f47-e021-4e4e-a652-d471fbc4a798sr\0java.util.DatehjÅKYt\0\0xpw\0\0sQùïÚx',_binary '¨\Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0\"com.cc.oauth.server.entity.SysRole˙êó¡$°\0L\0idt\0Ljava/lang/Integer;L\0roleDesct\0Ljava/lang/String;L\0roleNameq\0~\0xpsr\0java.lang.Integer‚†§˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî\‡ã\0\0xp\0\0\0t\0readt\0readxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0ccsr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0codet\0RbP0stt\0\ngrant_typet\0authorization_codet\0scopet\0readt\0\rresponse_typet\0codet\0\rclient_secrett\0111111t\0	client_idt\0ccxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readxsq\0~\00w\0\0\0?@\0\0\0\0\0\0xsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0http://www.baidu.compsq\0~\00w\0\0\0?@\0\0\0\0\0t\0product_apixsq\0~\00w\0\0\0?@\0\0\0\0\0q\0~\0(xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0xq\0~\0<sr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0 CB8B17998B43CE94EEEBCA8538A9C89Epsr\0\"com.cc.oauth.server.entity.SysUser_qu\Ë~\·\ﬁ˙\0L\0idq\0~\0L\0passwordq\0~\0L\0rolesq\0~\0L\0statusq\0~\0L\0usernameq\0~\0xpq\0~\0t\0<$2a$10$2WwI2zQ7yTO.pliwB3/hpejAkXxv.A59w/xXzCCXGyrBy1QrfYWhWsq\0~\0\0\0\0w\0\0\0q\0~\0xpt\0cc'),('3326076bb39f6e460abaf0cf13dba07c',_binary '¨\Ì\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/\ﬂGcù\–…∑\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens\·\ncT\‘^\0L\0valuet\0Ljava/lang/String;xpt\0$e7920ce0-b2bc-4be9-8bdd-6e7b8a18240dsr\0java.util.DatehjÅKYt\0\0xpw\0\0sQ•\·x',_binary '¨\Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0\"com.cc.oauth.server.entity.SysRole˙êó¡$°\0L\0idt\0Ljava/lang/Integer;L\0roleDesct\0Ljava/lang/String;L\0roleNameq\0~\0xpsr\0java.lang.Integer‚†§˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî\‡ã\0\0xp\0\0\0t\0readt\0readxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0ccsr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rresponse_typet\0codet\0\rclient_secrett\0111111t\0codet\0kcEV2xt\0\ngrant_typet\0authorization_codet\0	client_idt\0ccxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writexsq\0~\0.w\0\0\0?@\0\0\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0\0L\0roleq\0~\0xpt\0readsq\0~\03t\0writexsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0http://www.baidu.compsq\0~\0.w\0\0\0?@\0\0\0\0\0t\0product_apixsq\0~\0.w\0\0\0?@\0\0\0\0\0q\0~\0\"xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0xq\0~\0@sr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0 CB8B17998B43CE94EEEBCA8538A9C89Epsr\0\"com.cc.oauth.server.entity.SysUser_qu\Ë~\·\ﬁ˙\0L\0idq\0~\0L\0passwordq\0~\0L\0rolesq\0~\0L\0statusq\0~\0L\0usernameq\0~\0xpq\0~\0t\0<$2a$10$2WwI2zQ7yTO.pliwB3/hpejAkXxv.A59w/xXzCCXGyrBy1QrfYWhWsq\0~\0\0\0\0w\0\0\0q\0~\0xpt\0cc'),('1becd7ce05cc0b1c55f8804c41f997e8',_binary '¨\Ì\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/\ﬂGcù\–…∑\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens\·\ncT\‘^\0L\0valuet\0Ljava/lang/String;xpt\0$3ef6635a-8372-4980-b481-24787f90cf31sr\0java.util.DatehjÅKYt\0\0xpw\0\0sQØM∞x',_binary '¨\Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0\"com.cc.oauth.server.entity.SysRole˙êó¡$°\0L\0idt\0Ljava/lang/Integer;L\0roleDesct\0Ljava/lang/String;L\0roleNameq\0~\0xpsr\0java.lang.Integer‚†§˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî\‡ã\0\0xp\0\0\0t\0readt\0readxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0ccsr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rresponse_typet\0codet\0\rclient_secrett\0111111t\0codet\09eHpujt\0\ngrant_typet\0authorization_codet\0	client_idt\0ccxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writexsq\0~\0.w\0\0\0?@\0\0\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0\0L\0roleq\0~\0xpt\0readsq\0~\03t\0writexsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0http://www.baidu.compsq\0~\0.w\0\0\0?@\0\0\0\0\0t\0product_apixsq\0~\0.w\0\0\0?@\0\0\0\0\0q\0~\0\"xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0xq\0~\0@sr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0 B5FA1652968515A33CC4491F237DEB98psr\0\"com.cc.oauth.server.entity.SysUser_qu\Ë~\·\ﬁ˙\0L\0idq\0~\0L\0passwordq\0~\0L\0rolesq\0~\0L\0statusq\0~\0L\0usernameq\0~\0xpq\0~\0t\0<$2a$10$2WwI2zQ7yTO.pliwB3/hpejAkXxv.A59w/xXzCCXGyrBy1QrfYWhWsq\0~\0\0\0\0w\0\0\0q\0~\0xpt\0cc'),('0c9a71c425a9fa283d46e07a6f2d2dc1',_binary '¨\Ì\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/\ﬂGcù\–…∑\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens\·\ncT\‘^\0L\0valuet\0Ljava/lang/String;xpt\0$47d3b4e0-a93b-4385-86b1-87bbd6d8e0f8sr\0java.util.DatehjÅKYt\0\0xpw\0\0sQŸö#x',_binary '¨\Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0\"com.cc.oauth.server.entity.SysRole˙êó¡$°\0L\0idt\0Ljava/lang/Integer;L\0roleDesct\0Ljava/lang/String;L\0roleNameq\0~\0xpsr\0java.lang.Integer‚†§˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî\‡ã\0\0xp\0\0\0t\0readt\0readxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0ccsr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rresponse_typet\0codet\0\rclient_secrett\0111111t\0codet\0IIb8Ttt\0\ngrant_typet\0authorization_codet\0	client_idt\0ccxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writexsq\0~\0.w\0\0\0?@\0\0\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0\0L\0roleq\0~\0xpt\0readsq\0~\03t\0writexsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0http://www.baidu.compsq\0~\0.w\0\0\0?@\0\0\0\0\0t\0product_apixsq\0~\0.w\0\0\0?@\0\0\0\0\0q\0~\0\"xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0xq\0~\0@sr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0 2DA9E382DD397DBF073C9942EAAE441Apsr\0\"com.cc.oauth.server.entity.SysUser_qu\Ë~\·\ﬁ˙\0L\0idq\0~\0L\0passwordq\0~\0L\0rolesq\0~\0L\0statusq\0~\0L\0usernameq\0~\0xpq\0~\0t\0<$2a$10$2WwI2zQ7yTO.pliwB3/hpejAkXxv.A59w/xXzCCXGyrBy1QrfYWhWsq\0~\0\0\0\0w\0\0\0q\0~\0xpt\0cc'),('afcc57a7f2886de5b17004c652a08aa3',_binary '¨\Ì\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/\ﬂGcù\–…∑\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens\·\ncT\‘^\0L\0valuet\0Ljava/lang/String;xpt\0$300c2be2-9c04-4d70-bd3e-93a06c75cc90sr\0java.util.DatehjÅKYt\0\0xpw\0\0sQ\‹,Dx',_binary '¨\Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0\"com.cc.oauth.server.entity.SysRole˙êó¡$°\0L\0idt\0Ljava/lang/Integer;L\0roleDesct\0Ljava/lang/String;L\0roleNameq\0~\0xpsr\0java.lang.Integer‚†§˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî\‡ã\0\0xp\0\0\0t\0readt\0readxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0refresht\0;Lorg/springframework/security/oauth2/provider/TokenRequest;L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0ccsr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap\⁄¡\√`\—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rresponse_typet\0codet\0\rclient_secrett\0111111t\0codet\09E2VwXt\0\ngrant_typet\0authorization_codet\0	client_idt\0ccxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSet\ÿl\◊Zï\›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readxsq\0~\0.w\0\0\0?@\0\0\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0\0L\0roleq\0~\0xpt\0readxsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xt\0http://www.baidu.compsq\0~\0.w\0\0\0?@\0\0\0\0\0t\0product_apixsq\0~\0.w\0\0\0?@\0\0\0\0\0q\0~\0\"xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0xq\0~\0=sr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0 2DA9E382DD397DBF073C9942EAAE441Apsr\0\"com.cc.oauth.server.entity.SysUser_qu\Ë~\·\ﬁ˙\0L\0idq\0~\0L\0passwordq\0~\0L\0rolesq\0~\0L\0statusq\0~\0L\0usernameq\0~\0xpq\0~\0t\0<$2a$10$2WwI2zQ7yTO.pliwB3/hpejAkXxv.A59w/xXzCCXGyrBy1QrfYWhWsq\0~\0\0\0\0w\0\0\0q\0~\0xpt\0cc');
/*!40000 ALTER TABLE `oauth_refresh_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) DEFAULT NULL,
  `role_desc` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` (`id`, `role_name`, `role_desc`) VALUES (1,'read','read'),(2,'write','write');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` (`id`, `username`, `password`, `status`) VALUES (1,'cc','$2a$10$2WwI2zQ7yTO.pliwB3/hpejAkXxv.A59w/xXzCCXGyrBy1QrfYWhW',NULL),(2,'ck','$2a$10$2WwI2zQ7yTO.pliwB3/hpejAkXxv.A59w/xXzCCXGyrBy1QrfYWhW',NULL);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_role` (
  `uid` int(11) DEFAULT NULL,
  `rid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` (`uid`, `rid`) VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-15 17:31:33
