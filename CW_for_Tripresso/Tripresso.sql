-- MySQL dump 10.13  Distrib 5.7.22, for osx10.12 (x86_64)
--
-- Host: 0.0.0.0    Database: Tripresso
-- ------------------------------------------------------
-- Server version	5.7.20

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
-- Current Database: `Tripresso`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `Tripresso` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `Tripresso`;

--
-- Table structure for table `agencytable`
--

DROP TABLE IF EXISTS `agencytable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agencytable` (
  `agency_id` int(11) NOT NULL AUTO_INCREMENT,
  `agency_text` varchar(255) NOT NULL,
  PRIMARY KEY (`agency_id`),
  UNIQUE KEY `agency_text` (`agency_text`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agencytable`
--

LOCK TABLES `agencytable` WRITE;
/*!40000 ALTER TABLE `agencytable` DISABLE KEYS */;
INSERT INTO `agencytable` VALUES (3,'gloriatour'),(1,'orangetour');
/*!40000 ALTER TABLE `agencytable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bigtable`
--

DROP TABLE IF EXISTS `bigtable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bigtable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` mediumtext CHARACTER SET utf8,
  `product_num` varchar(255) NOT NULL,
  `product_price` text NOT NULL,
  `product_days` mediumtext CHARACTER SET utf8,
  `product_total` text NOT NULL,
  `product_available` text NOT NULL,
  `product_date_normal` text NOT NULL,
  `agency_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_num` (`product_num`),
  KEY `agency_id` (`agency_id`),
  CONSTRAINT `bigtable_ibfk_1` FOREIGN KEY (`agency_id`) REFERENCES `agencytable` (`agency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bigtable`
--

LOCK TABLES `bigtable` WRITE;
/*!40000 ALTER TABLE `bigtable` DISABLE KEYS */;
INSERT INTO `bigtable` VALUES (1,'5星【直飛】加贈洞穴飯店蕃紅花城11日','ME1180903TKA','47,900','11天','22','0','2018/09/03',1),(2,'Hello!長榮荷德比法3遊船OUTLET10天','EW1080903BRA','69,900','10天','26','0','2018/09/03',1),(3,'南歐伊比利半島西班牙、葡萄牙、直布羅陀、畢爾包浪漫美食15天','ES1580904TKA','124,900','15天','27','26','2018/09/04',1),(4,'榮耀斯堪地那維亞之旅-北歐五國、冰島、峽灣觀景列車經典12日','EN1280904SKB','134,900','12天','26','25','2018/09/04',1),(5,'親子水陸雙樂園5日','ICN180905KEB','13,000','5天','16','16','2018/09/05',1),(6,'哈韓94狂～超人氣三大主題5日','ICN180905KEA','15,000','5天','16','16','2018/09/05',1),(7,'精緻千禧號遊輪-阿拉斯加哈伯冰河南下航線12天','EC1280905BRA','114,900','12天','36','0','2018/09/05',1),(8,'東京蝦拼半自助漫遊五日','TYO180906ITA','21,999','5天','16','15','2018/09/06',1),(9,'5星巴爾幹半島克斯蒙3國雙跳島、雙國家公園、三遊船12天','EE1280906OSA','117,900','12天','26','25','2018/09/06',1),(10,'肯亞野性呼喚10天非洲王子系列','AK1080906KQA','159,900','10天','13','12','2018/09/06',1),(11,'奧捷雙國、米其林、湖區、古堡、遊船、雙登塔10天(長榮直飛)','EE1080907BRA','62,900','10天','26','25','2018/09/07',1),(12,'西班牙七大城聖家堂佛朗明哥晚餐秀10日','SS1080907TKA','69,900','10天','26','25','2018/09/07',1),(13,'直飛土耳其世界遺產、愛琴海蕃紅花10日(5晚5星+1晚洞穴)','ME1080908TKA','48,900','10天','26','0','2018/09/08',1),(14,'肯亞我要玩狠大8天','AK0880908KQA','125,900','8天','13','12','2018/09/08',1),(15,'品味法拉利南北義龐貝藍洞OUTLET10天','EW1080909QRA','75,900','10天','26','25','2018/09/09',1),(16,'浪漫愛琴海雙島：聖托里尼、米克諾斯、天空之城、諸神的故鄉、希臘10天之旅','ES1080909CAA','77,900','10天','16','0','2018/09/09',1),(17,'Hello!長榮荷德比法3遊船OUTLET10天','EW1080901BRA','69,900','10天','26','0','2018/09/10',1),(18,'美麗新視界~張家界鳳凰古城6天','DYG180911CZB','23,900','6天','16','15','2018/09/11',1),(19,'親子水陸雙樂園5日','ICN180912KEB','13,000','5天','16','16','2018/09/12',1),(20,'哈韓94狂～超人氣三大主題5日','ICN180912KEA','15,000','5天','16','16','2018/09/12',1),(41,'【夏艷濟州】韓國濟州奇幻山坡、泰迪熊野生動物王國、透明獨木舟、樂高樂園、塗鴉秀５日','CJU05IT8901A','18,500','5天','18','0','2018/09/01',3),(42,'蟹GO江南~戀戀西湖四季周莊漫步思南路五日(升等乙晚白金瑞士酒店+VIP三排座椅、無購物、無自費)','HGHB5CA8901A','19,900','5天','17','16','2018/09/01',3),(43,'升等乙晚君瀾度假酒店南寧德天瀑布、通靈大峽谷、巴馬長壽村六天(無購物、無自費)','NNGA6CZ8901A','22,900','6天','20','19','2018/09/01',3),(44,'《小城故事金三角風情》清邁聖獅公園、放天燈體驗、大象便便紙DIY、泰式指壓、湄登叢林騎象、夜間動物園五日(含稅簽/長榮)','CNXAABR8901A','24,300','5天','20','0','2018/09/01',3),(45,'海天佛國普陀山、雪竇寺朝聖五日(無購物、無自費)','NGBA5AE8901A','24,900','5天','17','16','2018/09/01',3),(46,'《泰航星空聯盟》情定普吉～摩登VILLA+喀比紅樹林泛舟探險+柏森大自然森呼吸幻多奇主題樂園5日(6人成行)(含稅簽)','HKTTETG8901A','27,400','5天','16','15','2018/09/01',3),(47,'東方航空-奇美廬山、黃山奇景雙遺產、宏村景德鎮、最美婺源徽韻秀六日(無購物、無自費)','TXNH6MU8901A','27,900','6天','22','0','2018/09/01',3),(48,'【首釜濟瘋跳島】(含小費)～升等特二飯店～龍蝦一隻雞、甘川洞文化村、英式小火車、五彩星光村、SPA汗蒸幕、塗鴉秀７日','SELA7OZ8901A','29,000','7天','16','15','2018/09/01',3),(49,'《泰北清邁好時光》森林百萬渡假村激流泛舟叢林探險大象便便紙DIY夜間動物園五日遊(含稅簽/無購物/白天無自費/長榮)','CNXABBR8901A','30,300','5天','20','0','2018/09/01',3),(50,'就要玩東京～渡假勝地輕井澤．那須．東武世界．名湯饗食遊','JTOK5CX8901A','31,800','5天','32','31','2018/09/01',3),(51,'大圓滿東澳全覽好味廚師帽9天(含小費)','AUMA9CI8901A','66,800','9天','22','21','2018/09/01',3),(52,'～每月促銷最低價，一口價～【精選釜慶】汗蒸幕體驗、佛國寺、泰迪熊博物館、天空步道、海洋博物館、太宗台、甘川洞文化村４日','SELB4BX8902A','8,499','4天','33','0','2018/09/02',3),(53,'【戲雪趣】愛寶樂園、冰雪王國、單車樂活、童話村、時尚明洞、塗鴉秀５天','SELA5OZ8902A','11,500','5天','23','0','2018/09/02',3),(54,'【花漾韓國】～入住首爾市區飯店+升等五花飯店～韓服體驗、愛寶樂園、冰雪樂園、光明洞窟、拌飯秀５天','SELA5OZ8902C','14,500','5天','23','0','2018/09/02',3),(55,'【線上旅展】就去新加坡玩吧自由輕鬆走四日遊【送環球影城門票＋園區餐券】(二人成行)','SIND4CI8902A','16,000','4天','6','6','2018/09/02',3),(56,'【線上旅展】星光熠熠新加坡環球影城濱海灣花園金沙娛樂城超值四日(四人成行)','SINI4CI8902A','20,500','4天','6','6','2018/09/02',3),(57,'【童趣韓國】～全程五花住宿＆不進人蔘寶肝店～韓服漫遊、愛寶樂園、汗蒸幕、亂打秀５天','SELA5OZ8902B','20,500','5天','23','0','2018/09/02',3),(58,'【馬新旺福】馬新雙國吉隆坡高塔自助餐馬六甲5D立體藝術館金沙娛樂城超值五日遊(新加坡一晚)','KS205CI8902A','20,588','5天','14','0','2018/09/02',3),(59,'《小城故事金三角風情》清邁聖獅公園、放天燈體驗、大象便便紙DIY、泰式指壓、湄登叢林騎象、夜間動物園五日(含稅簽/長榮)','CNXAABR8902A','23,800','5天','31','0','2018/09/02',3),(60,'《大城小愛》～六人成行，含導遊小費～走訪歷史古城、柚木古米船遊河、水上市場、嘟嘟車遊泰國五日','BKKBHCI8902A','24,300','5天','6','6','2018/09/02',3),(61,'全新《金喜泰國》～六人成行，含小費，不走珠寶蛇園～金莎美島、精彩人妖秀VIP、河畔夜市泰國五日','BKKBQCI8902A','25,000','5天','6','6','2018/09/02',3),(62,'【米其林一星】食尚樂活新加坡環球影城S.E.A.海洋館濱海灣花園世界最高摩天輪四日【小孩不佔-5000】(4人成行)','SINA4CI8902A','25,800','4天','18','17','2018/09/02',3),(63,'菲趣宿霧與鯨共遊薄荷島+資生堂島雙跳島超級玩家五日遊(BR)','CEBC5BR8902A','26,500','5天','16','0','2018/09/02',3),(64,'《泰北清邁好時光》森林百萬渡假村激流泛舟叢林探險大象便便紙DIY夜間動物園五日遊(含稅簽/無購物/白天無自費/長榮)','CNXABBR8902A','29,800','5天','20','0','2018/09/02',3),(65,'【四國PAK】魔女宅急便小豆島、祖谷秘境、神穩少女道後五日','JTAK5CI8902A','35,900','5天','24','23','2018/09/02',3),(66,'就要玩日本～北陸立山黑部．童話合掌村．峽谷遊船溫泉六日遊','JNPL6CI8902A','36,800','6天','27','26','2018/09/02',3),(67,'【舒活秘境】～兩人成行，無購物，含簽證，含小費～珊月灣浮潛、環島富貴大佛、古式按摩、蘇美島五日遊','BKKBPCI8902A','39,500','5天','8','8','2018/09/02',3),(68,'【送漫遊wifi】雪梨墨爾本雙城八日含小費雙夜遊','AUSM8CI8902A','55,800','8天','0','0','2018/09/02',3),(69,'【歡樂沖繩】～琉球海洋博、永旺夢樂城、美國村、歡樂四日','JOKA4CI8903C','19,900','4天','22','0','2018/09/03',3),(70,'《小城故事金三角風情》清邁聖獅公園、放天燈體驗、大象便便紙DIY、泰式指壓、湄登叢林騎象、夜間動物園五日(含稅簽/長榮)','CNXAABR8903A','23,800','5天','20','0','2018/09/03',3),(71,'《泰北清邁好時光》森林百萬渡假村激流泛舟叢林探險大象便便紙DIY夜間動物園五日遊(含稅簽/無購物/白天無自費/長榮)','CNXABBR8903A','29,800','5天','20','0','2018/09/03',3),(72,'就要玩北海道～百萬夜景、三大螃蟹食放題、浪漫小樽輕鬆遊五日','JSPK5CI8903A','32,800','5天','32','31','2018/09/03',3),(73,'【時尚玩釜山】～升等五花飯店～佛國寺、八公山纜車、西面鬧區、天空步道、甘川洞文化村５日','SELB5BX8904A','11,500','5天','18','17','2018/09/04',3),(74,'【秒殺！玩首爾】★不走人蔘護肝寶★明洞半天自由行、樂天超市、ＡＲ美術館、弘大藝術街、夜燈節５日','SELA5OZ8904A','14,900','5天','18','17','2018/09/04',3),(75,'【橫行霸道】～帝王蟹吃到飽～泰國水上市場、出海六合一、爆笑鐵路、騎大象、ＳＰＡ、泰迪熊、火車夜市５日','BKKBSSL8904A','15,500','5天','16','15','2018/09/04',3),(76,'【線上旅展】就去新加坡玩吧自由輕鬆走四日遊【送環球影城門票＋園區餐券】(二人成行)','SIND4CI8904A','16,000','4天','6','6','2018/09/04',3),(77,'【線上旅展】星光熠熠新加坡環球影城濱海灣花園金沙娛樂城超值四日(四人成行)','SINI4CI8904A','20,500','4天','6','6','2018/09/04',3),(78,'【馬新旺福】馬新雙國吉隆坡高塔自助餐馬六甲5D立體藝術館金沙娛樂城超值五日遊(新加坡一晚)','KS205CI8904A','20,588','5天','18','17','2018/09/04',3),(79,'【首濟愛雙飛】神話主題樂園、泰迪熊博物館、樂高積木館、7017空中花園、ONEMOUNT冰雪樂園、明洞購物趣、塗鴉秀六日','SELA6OZ8904A','21,500','6天','16','15','2018/09/04',3),(80,'《小城故事金三角風情》清邁聖獅公園、放天燈體驗、大象便便紙DIY、泰式指壓、湄登叢林騎象、夜間動物園五日(含稅簽/長榮)','CNXAABR8904A','23,800','5天','20','0','2018/09/04',3),(110,'【星光燦爛FUN暑假】檳城蘭卡威三離島天空步道升旗山纜車3D立體畫館SKY旋轉塔五日','PENI5CI8904A','25,300','5天','18','17','2018/09/04',3),(111,'【米其林一星】食尚樂活新加坡環球影城S.E.A.海洋館濱海灣花園世界最高摩天輪四日【小孩不佔-5000】(4人成行)','SINA4CI8904A','25,800','4天','18','17','2018/09/04',3),(112,'菲趣宿霧與鯨共遊薄荷島+資生堂島雙跳島超級玩家五日遊(BR)','CEBC5BR8904A','26,500','5天','16','0','2018/09/04',3),(113,'《泰航星空聯盟》情定普吉～摩登VILLA+喀比紅樹林泛舟探險+柏森大自然森呼吸幻多奇主題樂園5日(6人成行)(含稅簽)','HKTTETG8904A','27,400','5天','16','15','2018/09/04',3),(114,'《泰北清邁好時光》森林百萬渡假村激流泛舟叢林探險大象便便紙DIY夜間動物園五日遊(含稅簽/無購物/白天無自費/長榮)','CNXABBR8904A','29,800','5天','20','0','2018/09/04',3),(115,'就要玩九州～天空步道夢大吊橋湯布院雙溫泉河豚美食五日遊','JFOK5CI8904A','29,800','5天','26','25','2018/09/04',3),(116,'降價囉！就要玩北海道~馬牧場百萬夜景雙纜車哈密瓜螃蟹放題五日遊','JSPK5BR8904A','31,900','5天','28','0','2018/09/04',3),(117,'就要玩日本～北陸立山黑部．童話合掌村．峽谷遊船溫泉六日遊','JNPL6CI8904A','36,800','6天','27','26','2018/09/04',3),(118,'雪梨墨爾本雙城八日(含小費)-早晚','AUSM8CI8904A','55,800','8天','22','0','2018/09/04',3),(119,'JL日本假期～花現北海道～知床遊船‧禮文+利尻雙島‧稚內七日','JLPK7JL8904A','60,900','7天','25','0','2018/09/04',3),(120,'【橫行霸道】～帝王蟹吃到飽～泰國水上市場、出海六合一、爆笑鐵路、騎大象、ＳＰＡ、泰迪熊、火車夜市５日','BKKBSXW8905A','15,500','5天','16','15','2018/09/05',3),(121,'【夏艷濟州】韓國濟州神話樂園、3D奧妙藝術館、海上噴射快艇、鐵道自行車、亂打秀４日','CJU04IT8905A','15,900','4天','24','0','2018/09/05',3),(122,'【直航→江南、杭州進/上海出】雙古鎮(南潯.木瀆)、船遊京杭大運河、虎跑泉聽泉特色美食五天(無購物.無自費)','HGHA5CA8905A','17,900','5天','17','16','2018/09/05',3),(123,'江南雙古鎮、船遊京杭運河、登環球金融中心100層、上海郵輪大船豪華酒店5日遊(含稅、無購物)','HGHC5CA8905A','18,900','5天','17','16','2018/09/05',3),(124,'溫州雁蕩山、南溪江、洞頭望海樓半屏山、土豪宴五日(入住五星酒店、無購物、無自費)','WNZC5CA8905A','20,900','5天','20','19','2018/09/05',3),(125,'《小城故事金三角風情》清邁聖獅公園、放天燈體驗、大象便便紙DIY、泰式指壓、湄登叢林騎象、夜間動物園五日(含稅簽/長榮)','CNXAABR8905A','24,300','5天','20','0','2018/09/05',3),(126,'《大城小愛》～六人成行，含導遊小費～走訪歷史古城、柚木古米船遊河、水上市場、嘟嘟車遊泰國五日','BKKBHCI8905A','24,800','5天','6','6','2018/09/05',3),(127,'全新《金喜泰國》～六人成行，含小費，不走珠寶蛇園～金莎美島、精彩人妖秀VIP、河畔夜市泰國五日','BKKBQCI8905A','25,500','5天','6','6','2018/09/05',3),(128,'【兩晚喜來登酒店+華麗自助餐價值RMB238】桂林世外桃源、印象劉三姐五天(VIP三排椅+WIFI+無購物、無自費)','KWLC5CZ8905A','25,900','5天','16','15','2018/09/05',3),(129,'張家界、鳳凰古城、天門山峽谷風情雲天渡六日(VIP三排椅、無購物)','DYGA6CZ8905A','25,900','6天','16','15','2018/09/05',3),(130,'關島自由行五日遊(早去晚回)~含稅金~','GUMF5CI8905A','26,888','5天','6','6','2018/09/05',3),(131,'就是要玩帛琉四日遊','RORE4CI8905A','28,800','4天','10','10','2018/09/05',3),(132,'漫步山東台兒莊海上摩天輪天蒙山懸崖棧道玻璃橋尋蟹採果趣8天(無購物、無自費)','TAOA8CI8905A','28,900','8天','16','15','2018/09/05',3),(133,'菲趣宿霧與鯨共游薄荷島沙丁魚風暴海豚游蹤精彩五日遊(BR)(2晚渡假村)(2人成行)','CEBB5BR8905A','29,500','5天','16','0','2018/09/05',3),(134,'帛琉夢幻海王子四日遊(金鑽版)','RYY04CI8905A','29,800','4天','10','10','2018/09/05',3),(135,'【艾上青島】獨家安排五星艾美+龍蝦自助餐、泰山玉皇頂、曲阜孔廟、美食品酒八日(無購物、無自費、無車購)','TAOB8CI8905A','29,900','8天','16','15','2018/09/05',3),(136,'《泰北清邁好時光》森林百萬渡假村激流泛舟叢林探險大象便便紙DIY夜間動物園五日遊(含稅簽/無購物/白天無自費/長榮)','CNXABBR8905A','30,300','5天','20','0','2018/09/05',3),(137,'帛琉海陸美食+三次出海+三次夜遊(含夜釣)四日遊','RLL04CI8905A','30,800','4天','8','8','2018/09/05',3),(138,'探索千年古都西安、世界奇蹟兵馬俑、夢迴大唐歌舞秀八日(五星悅椿溫泉酒店、無購物、無自費)','XIYA8MU8905A','30,900','8天','17','16','2018/09/05',3),(139,'【直航～兩省遊】西安+河南～兵馬俑.西嶽華山.少林寺.龍門石窟.清明上河園.五星酒店.三排椅車.無購物八天','XIYC8MU8905A','33,900','8天','17','16','2018/09/05',3),(140,'就要玩日本～東京伊豆半島景觀列車、寢姿山、熱海溫泉美食五日','JTIT5CI8905B','34,800','5天','28','27','2018/09/05',3),(160,'潑墨黃山•傳奇宏村•狀元休甯5日','TXN180912BRC','23,900','5天','17','16','2018/09/12',1),(161,'迴響夢駝鈴系列〜河西走廊五彩山、莫高窟、鳴沙山+月牙泉8日','LHW180912HUB','39,900','8天','16','15','2018/09/12',1),(162,'東京蝦拼半自助漫遊五日','TYO180913ITA','21,999','5天','16','15','2018/09/13',1),(163,'肯亞野性呼喚10天非洲王子系列','AK1080913KQA','159,900','10天','13','12','2018/09/13',1),(164,'北疆~東方瑞士喀那斯˙禾木˙巴音布魯克12日','URC180914HUD','61,900','12天','16','15','2018/09/14',1),(165,'奧捷雙國、米其林、湖區、古堡、遊船、雙登塔10天(長榮直飛)','EE1080914BRA','62,900','10天','26','25','2018/09/14',1),(166,'小資奇幻極光4+1晚2次遇見極光','AS0680915ZZA','17,900','6天','4','4','2018/09/15',1),(167,'摩洛哥10天卡薩布蘭、卡四大皇城、撒哈拉沙漠、阿班哈杜','AN1080915QRA','69,900','10天','26','0','2018/09/15',1),(168,'海洋自主號西加勒比海牙買加、大開曼群島、墨西哥11日','EC1180915BRA','69,900','11天','20','0','2018/09/15',1),(169,'肯亞我要玩狠大8天','AK0880915KQA','125,900','8天','13','12','2018/09/15',1),(170,'東方夏威夷~陽光沙灘椰林超值海南5日','HAK180916HUB','11,999','5天','16','15','2018/09/16',1),(171,'東方夏威夷~陽光沙灘椰林熱情海南5日','HAK180916HUA','17,900','5天','16','15','2018/09/16',1),(172,'亞特蘭蒂斯~東方夏威夷˙陽光沙灘椰林頂級海南5日','HAK180916HUC','19,900','5天','16','15','2018/09/16',1),(173,'黃山典雅輕鬆行~黃山•宏村•唐模法國鄉村7日','TXN180916BRB','28,800','7天','16','15','2018/09/16',1),(174,'張家界天門山袁家界鳳凰古城玻璃橋精選8日','CSX180917CZC','28,900','8天','17','16','2018/09/17',1),(175,'迴響夢駝鈴系列〜河西走廊五彩山、莫高窟、鳴沙山+月牙泉8日','LHW180917HUA','39,900','8天','16','15','2018/09/17',1),(176,'Hello!長榮荷德比法3遊船OUTLET10天','EW1080917BRA','69,900','10天','26','0','2018/09/17',1),(177,'秘境克斯波國家公園10天(一中段)','EE1080917OSA','78,900','10天','26','25','2018/09/17',1),(178,'美麗新視界~張家界鳳凰古城6天','DYG180918CZB','23,900','6天','16','15','2018/09/18',1),(179,'超值熱賣哈韓5日遊','ICN180919KEE','10,999','5天','19','19','2018/09/19',1),(180,'親子水陸雙樂園5日','ICN180919KEB','13,000','5天','16','16','2018/09/19',1),(181,'哈韓94狂～超人氣三大主題5日','ICN180919KEA','15,000','5天','16','16','2018/09/19',1),(182,'潑墨黃山•傳奇宏村•狀元休甯5日','TXN180919BRC','23,900','5天','17','16','2018/09/19',1),(183,'迴響夢駝鈴系列〜河西走廊五彩山、莫高窟、鳴沙山+月牙泉8日','LHW180919HUB','39,900','8天','16','15','2018/09/19',1),(184,'東京蝦拼半自助漫遊五日','TYO180920ITA','23,999','5天','16','15','2018/09/20',1),(185,'初戀幸福極光4+1晚4次遇見極光','AS0680920ZZA','26,900','6天','4','4','2018/09/20',1),(186,'肯亞野性呼喚10天非洲王子系列','AK1080920KQA','159,900','10天','13','12','2018/09/20',1),(187,'奧捷雙國、米其林、湖區、古堡、遊船、雙登塔10天(長榮直飛)','EE1080921BRA','62,900','10天','26','25','2018/09/21',1),(188,'西班牙七大城聖家堂佛朗明哥晚餐秀10日','SS1080921TKA','69,900','10天','26','25','2018/09/21',1),(189,'親子水陸雙樂園5日','ICN180922KEB','16,000','5天','16','16','2018/09/22',1),(190,'哈韓94狂～超人氣三大主題5日','ICN180922KEA','17,000','5天','16','16','2018/09/22',1),(191,'肯亞我要玩狠大8天','AK0880922KQA','125,900','8天','13','12','2018/09/22',1),(192,'東方夏威夷~陽光沙灘椰林超值海南5日','HAK180923HUB','11,999','5天','16','0','2018/09/23',1),(193,'東方夏威夷~陽光沙灘椰林熱情海南5日','HAK180923HUA','17,900','5天','16','0','2018/09/23',1),(194,'亞特蘭蒂斯~東方夏威夷˙陽光沙灘椰林頂級海南5日','HAK180923HUC','19,900','5天','16','0','2018/09/23',1),(195,'黃山典雅輕鬆行~黃山•宏村•唐模法國鄉村7日','TXN180923BRB','28,800','7天','16','0','2018/09/23',1),(196,'就是愛德瑞、鐵力士山、天鵝堡、羅騰堡、OUTLET10天','EW1080923CAA','75,900','10天','27','24','2018/09/23',1),(197,'Hello!長榮荷德比法3遊船OUTLET10天','EW1080924BRA','69,900','10天','26','0','2018/09/24',1),(198,'雙城夢幻極光5+1晚3次遇見極光','AS0780925ZZA','29,900','7天','4','4','2018/09/25',1),(199,'印度傳奇～金三角、泰姬瑪哈陵、貴族皇宮瑜珈冥想體驗８天','DEL08180925B','34,900','8天','26','15','2018/09/25',1),(200,'5星【直飛】加贈洞穴飯店、3D光雕秀蕃紅花城11日','ME1180925TKA','47,900','11天','26','1','2018/09/25',1);
/*!40000 ALTER TABLE `bigtable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gloriatour`
--

DROP TABLE IF EXISTS `gloriatour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gloriatour` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` mediumtext CHARACTER SET utf8,
  `product_num` varchar(255) NOT NULL,
  `product_price` text NOT NULL,
  `product_days` mediumtext CHARACTER SET utf8,
  `product_total` text NOT NULL,
  `product_available` text NOT NULL,
  `product_date_normal` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_num` (`product_num`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gloriatour`
--

LOCK TABLES `gloriatour` WRITE;
/*!40000 ALTER TABLE `gloriatour` DISABLE KEYS */;
INSERT INTO `gloriatour` VALUES (10,'【泰享樂】～不走蛇園～拉瑪雅納水上樂園、四面佛、鋼鐵人博物館超值五日遊(含稅)','BKKHFCI8831A','16,700','5天','18','17','2018/08/31'),(11,'【夏艷濟州】韓國濟州奇幻山坡、泰迪熊野生動物王國、透明獨木舟、樂高樂園、塗鴉秀５日','CJU05IT8831A','18,500','5天','19','0','2018/08/31'),(12,'《小城故事金三角風情》清邁聖獅公園、放天燈體驗、大象便便紙DIY、泰式指壓、湄登叢林騎象、夜間動物園五日(含稅簽/長榮)','CNXAABR8831A','25,300','5天','20','19','2018/08/31'),(13,'【星光燦爛FUN暑假】檳城蘭卡威三離島天空步道升旗山纜車3D立體畫館SKY旋轉塔五日','PENI5CI8831A','25,800','5天','18','17','2018/08/31'),(14,'【FUN暑假】菲航直飛菲常渴望巴拉望一島一飯店超級玩家五日遊(2人成行)','PPSD5PR8831A','27,500','5天','20','0','2018/08/31'),(15,'超值玩東京～渡假勝地輕井澤．迪士尼．東武樂園．採果樂自主遊','JTOK5CI8831B','29,800','5天','28','27','2018/08/31'),(16,'關島自由行五日遊(早去晚回)~含稅金~','GUMF5CI8831A','30,888','5天','6','6','2018/08/31'),(17,'《泰北清邁好時光》森林百萬渡假村激流泛舟叢林探險大象便便紙DIY夜間動物園五日遊(含稅簽/無購物/白天無自費/長榮)','CNXABBR8831A','31,000','5天','20','19','2018/08/31'),(18,'【FUN暑假】菲航直飛菲常渴望巴拉望新尊爵五日遊(兩晚渡假村)(2人成行)','PPSA5PR8831A','31,900','5天','20','0','2018/08/31'),(19,'FUN暑假玩九州～豪斯登堡．機器人．企鵝．旅人列車歡樂五日','JFFC5CI8831B','38,800','5天','26','25','2018/08/31'),(20,'【四國PAK】深度四國～道後溫泉、四萬十川遊船、秘境六日遊','JTAK6CI8831A','42,900','6天','20','19','2018/08/31'),(21,'【夏艷濟州】韓國濟州奇幻山坡、泰迪熊野生動物王國、透明獨木舟、樂高樂園、塗鴉秀５日','CJU05IT8901A','18,500','5天','18','0','2018/09/01'),(22,'蟹GO江南~戀戀西湖四季周莊漫步思南路五日(升等乙晚白金瑞士酒店+VIP三排座椅、無購物、無自費)','HGHB5CA8901A','19,900','5天','17','16','2018/09/01'),(23,'升等乙晚君瀾度假酒店南寧德天瀑布、通靈大峽谷、巴馬長壽村六天(無購物、無自費)','NNGA6CZ8901A','22,900','6天','20','19','2018/09/01'),(24,'《小城故事金三角風情》清邁聖獅公園、放天燈體驗、大象便便紙DIY、泰式指壓、湄登叢林騎象、夜間動物園五日(含稅簽/長榮)','CNXAABR8901A','24,300','5天','20','0','2018/09/01'),(25,'海天佛國普陀山、雪竇寺朝聖五日(無購物、無自費)','NGBA5AE8901A','24,900','5天','17','16','2018/09/01'),(26,'《泰航星空聯盟》情定普吉～摩登VILLA+喀比紅樹林泛舟探險+柏森大自然森呼吸幻多奇主題樂園5日(6人成行)(含稅簽)','HKTTETG8901A','27,400','5天','16','15','2018/09/01'),(27,'東方航空-奇美廬山、黃山奇景雙遺產、宏村景德鎮、最美婺源徽韻秀六日(無購物、無自費)','TXNH6MU8901A','27,900','6天','22','0','2018/09/01'),(28,'【首釜濟瘋跳島】(含小費)～升等特二飯店～龍蝦一隻雞、甘川洞文化村、英式小火車、五彩星光村、SPA汗蒸幕、塗鴉秀７日','SELA7OZ8901A','29,000','7天','16','15','2018/09/01'),(29,'《泰北清邁好時光》森林百萬渡假村激流泛舟叢林探險大象便便紙DIY夜間動物園五日遊(含稅簽/無購物/白天無自費/長榮)','CNXABBR8901A','30,300','5天','20','0','2018/09/01'),(39,'就要玩東京～渡假勝地輕井澤．那須．東武世界．名湯饗食遊','JTOK5CX8901A','31,800','5天','32','31','2018/09/01'),(40,'大圓滿東澳全覽好味廚師帽9天(含小費)','AUMA9CI8901A','66,800','9天','22','21','2018/09/01'),(41,'～每月促銷最低價，一口價～【精選釜慶】汗蒸幕體驗、佛國寺、泰迪熊博物館、天空步道、海洋博物館、太宗台、甘川洞文化村４日','SELB4BX8902A','8,499','4天','33','0','2018/09/02'),(42,'【戲雪趣】愛寶樂園、冰雪王國、單車樂活、童話村、時尚明洞、塗鴉秀５天','SELA5OZ8902A','11,500','5天','23','0','2018/09/02'),(43,'【花漾韓國】～入住首爾市區飯店+升等五花飯店～韓服體驗、愛寶樂園、冰雪樂園、光明洞窟、拌飯秀５天','SELA5OZ8902C','14,500','5天','23','0','2018/09/02'),(44,'【線上旅展】就去新加坡玩吧自由輕鬆走四日遊【送環球影城門票＋園區餐券】(二人成行)','SIND4CI8902A','16,000','4天','6','6','2018/09/02'),(45,'【線上旅展】星光熠熠新加坡環球影城濱海灣花園金沙娛樂城超值四日(四人成行)','SINI4CI8902A','20,500','4天','6','6','2018/09/02'),(46,'【童趣韓國】～全程五花住宿＆不進人蔘寶肝店～韓服漫遊、愛寶樂園、汗蒸幕、亂打秀５天','SELA5OZ8902B','20,500','5天','23','0','2018/09/02'),(47,'【馬新旺福】馬新雙國吉隆坡高塔自助餐馬六甲5D立體藝術館金沙娛樂城超值五日遊(新加坡一晚)','KS205CI8902A','20,588','5天','14','0','2018/09/02'),(48,'《小城故事金三角風情》清邁聖獅公園、放天燈體驗、大象便便紙DIY、泰式指壓、湄登叢林騎象、夜間動物園五日(含稅簽/長榮)','CNXAABR8902A','23,800','5天','31','0','2018/09/02'),(49,'《大城小愛》～六人成行，含導遊小費～走訪歷史古城、柚木古米船遊河、水上市場、嘟嘟車遊泰國五日','BKKBHCI8902A','24,300','5天','6','6','2018/09/02'),(50,'全新《金喜泰國》～六人成行，含小費，不走珠寶蛇園～金莎美島、精彩人妖秀VIP、河畔夜市泰國五日','BKKBQCI8902A','25,000','5天','6','6','2018/09/02'),(51,'【米其林一星】食尚樂活新加坡環球影城S.E.A.海洋館濱海灣花園世界最高摩天輪四日【小孩不佔-5000】(4人成行)','SINA4CI8902A','25,800','4天','18','17','2018/09/02'),(52,'菲趣宿霧與鯨共遊薄荷島+資生堂島雙跳島超級玩家五日遊(BR)','CEBC5BR8902A','26,500','5天','16','0','2018/09/02'),(53,'《泰北清邁好時光》森林百萬渡假村激流泛舟叢林探險大象便便紙DIY夜間動物園五日遊(含稅簽/無購物/白天無自費/長榮)','CNXABBR8902A','29,800','5天','20','0','2018/09/02'),(54,'【四國PAK】魔女宅急便小豆島、祖谷秘境、神穩少女道後五日','JTAK5CI8902A','35,900','5天','24','23','2018/09/02'),(55,'就要玩日本～北陸立山黑部．童話合掌村．峽谷遊船溫泉六日遊','JNPL6CI8902A','36,800','6天','27','26','2018/09/02'),(56,'【舒活秘境】～兩人成行，無購物，含簽證，含小費～珊月灣浮潛、環島富貴大佛、古式按摩、蘇美島五日遊','BKKBPCI8902A','39,500','5天','8','8','2018/09/02'),(57,'【送漫遊wifi】雪梨墨爾本雙城八日含小費雙夜遊','AUSM8CI8902A','55,800','8天','0','0','2018/09/02'),(58,'【歡樂沖繩】～琉球海洋博、永旺夢樂城、美國村、歡樂四日','JOKA4CI8903C','19,900','4天','22','0','2018/09/03'),(59,'《小城故事金三角風情》清邁聖獅公園、放天燈體驗、大象便便紙DIY、泰式指壓、湄登叢林騎象、夜間動物園五日(含稅簽/長榮)','CNXAABR8903A','23,800','5天','20','0','2018/09/03'),(60,'《泰北清邁好時光》森林百萬渡假村激流泛舟叢林探險大象便便紙DIY夜間動物園五日遊(含稅簽/無購物/白天無自費/長榮)','CNXABBR8903A','29,800','5天','20','0','2018/09/03'),(61,'就要玩北海道～百萬夜景、三大螃蟹食放題、浪漫小樽輕鬆遊五日','JSPK5CI8903A','32,800','5天','32','31','2018/09/03'),(62,'【時尚玩釜山】～升等五花飯店～佛國寺、八公山纜車、西面鬧區、天空步道、甘川洞文化村５日','SELB5BX8904A','11,500','5天','18','17','2018/09/04'),(63,'【秒殺！玩首爾】★不走人蔘護肝寶★明洞半天自由行、樂天超市、ＡＲ美術館、弘大藝術街、夜燈節５日','SELA5OZ8904A','14,900','5天','18','17','2018/09/04'),(64,'【橫行霸道】～帝王蟹吃到飽～泰國水上市場、出海六合一、爆笑鐵路、騎大象、ＳＰＡ、泰迪熊、火車夜市５日','BKKBSSL8904A','15,500','5天','16','15','2018/09/04'),(65,'【線上旅展】就去新加坡玩吧自由輕鬆走四日遊【送環球影城門票＋園區餐券】(二人成行)','SIND4CI8904A','16,000','4天','6','6','2018/09/04'),(66,'【線上旅展】星光熠熠新加坡環球影城濱海灣花園金沙娛樂城超值四日(四人成行)','SINI4CI8904A','20,500','4天','6','6','2018/09/04'),(67,'【馬新旺福】馬新雙國吉隆坡高塔自助餐馬六甲5D立體藝術館金沙娛樂城超值五日遊(新加坡一晚)','KS205CI8904A','20,588','5天','18','17','2018/09/04'),(68,'【首濟愛雙飛】神話主題樂園、泰迪熊博物館、樂高積木館、7017空中花園、ONEMOUNT冰雪樂園、明洞購物趣、塗鴉秀六日','SELA6OZ8904A','21,500','6天','16','15','2018/09/04'),(69,'《小城故事金三角風情》清邁聖獅公園、放天燈體驗、大象便便紙DIY、泰式指壓、湄登叢林騎象、夜間動物園五日(含稅簽/長榮)','CNXAABR8904A','23,800','5天','20','0','2018/09/04');
/*!40000 ALTER TABLE `gloriatour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orangetour`
--

DROP TABLE IF EXISTS `orangetour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orangetour` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` mediumtext CHARACTER SET utf8,
  `product_num` varchar(255) NOT NULL,
  `product_price` text NOT NULL,
  `product_days` mediumtext CHARACTER SET utf8,
  `product_total` text NOT NULL,
  `product_available` text NOT NULL,
  `product_date_normal` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_num` (`product_num`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orangetour`
--

LOCK TABLES `orangetour` WRITE;
/*!40000 ALTER TABLE `orangetour` DISABLE KEYS */;
INSERT INTO `orangetour` VALUES (1,'【雙點進出+三大名峰】峰花雪嶽瑞士9日','EW0980901CAA','69,900','9天','26','0','2018/09/01'),(2,'肯亞我要玩狠大8天','AK0880901KQA','125,900','8天','13','12','2018/09/01'),(3,'5星【直飛】加贈洞穴飯店蕃紅花城11日','ME1180903TKA','47,900','11天','22','0','2018/09/03'),(4,'Hello!長榮荷德比法3遊船OUTLET10天','EW1080903BRA','69,900','10天','26','0','2018/09/03'),(5,'南歐伊比利半島西班牙、葡萄牙、直布羅陀、畢爾包浪漫美食15天','ES1580904TKA','124,900','15天','27','26','2018/09/04'),(6,'榮耀斯堪地那維亞之旅-北歐五國、冰島、峽灣觀景列車經典12日','EN1280904SKB','134,900','12天','26','25','2018/09/04'),(7,'親子水陸雙樂園5日','ICN180905KEB','13,000','5天','16','16','2018/09/05'),(8,'哈韓94狂～超人氣三大主題5日','ICN180905KEA','15,000','5天','16','16','2018/09/05'),(9,'精緻千禧號遊輪-阿拉斯加哈伯冰河南下航線12天','EC1280905BRA','114,900','12天','36','0','2018/09/05'),(10,'東京蝦拼半自助漫遊五日','TYO180906ITA','21,999','5天','16','15','2018/09/06'),(11,'5星巴爾幹半島克斯蒙3國雙跳島、雙國家公園、三遊船12天','EE1280906OSA','117,900','12天','26','25','2018/09/06'),(12,'肯亞野性呼喚10天非洲王子系列','AK1080906KQA','159,900','10天','13','12','2018/09/06'),(13,'奧捷雙國、米其林、湖區、古堡、遊船、雙登塔10天(長榮直飛)','EE1080907BRA','62,900','10天','26','25','2018/09/07'),(14,'西班牙七大城聖家堂佛朗明哥晚餐秀10日','SS1080907TKA','69,900','10天','26','25','2018/09/07'),(15,'直飛土耳其世界遺產、愛琴海蕃紅花10日(5晚5星+1晚洞穴)','ME1080908TKA','48,900','10天','26','0','2018/09/08'),(16,'肯亞我要玩狠大8天','AK0880908KQA','125,900','8天','13','12','2018/09/08'),(17,'品味法拉利南北義龐貝藍洞OUTLET10天','EW1080909QRA','75,900','10天','26','25','2018/09/09'),(18,'浪漫愛琴海雙島：聖托里尼、米克諾斯、天空之城、諸神的故鄉、希臘10天之旅','ES1080909CAA','77,900','10天','16','0','2018/09/09'),(19,'Hello!長榮荷德比法3遊船OUTLET10天','EW1080901BRA','69,900','10天','26','0','2018/09/10'),(20,'美麗新視界~張家界鳳凰古城6天','DYG180911CZB','23,900','6天','16','15','2018/09/11'),(41,'親子水陸雙樂園5日','ICN180912KEB','13,000','5天','16','16','2018/09/12'),(42,'哈韓94狂～超人氣三大主題5日','ICN180912KEA','15,000','5天','16','16','2018/09/12'),(43,'潑墨黃山•傳奇宏村•狀元休甯5日','TXN180912BRC','23,900','5天','17','16','2018/09/12'),(44,'迴響夢駝鈴系列〜河西走廊五彩山、莫高窟、鳴沙山+月牙泉8日','LHW180912HUB','39,900','8天','16','15','2018/09/12'),(45,'東京蝦拼半自助漫遊五日','TYO180913ITA','21,999','5天','16','15','2018/09/13'),(46,'肯亞野性呼喚10天非洲王子系列','AK1080913KQA','159,900','10天','13','12','2018/09/13'),(47,'北疆~東方瑞士喀那斯˙禾木˙巴音布魯克12日','URC180914HUD','61,900','12天','16','15','2018/09/14'),(48,'奧捷雙國、米其林、湖區、古堡、遊船、雙登塔10天(長榮直飛)','EE1080914BRA','62,900','10天','26','25','2018/09/14'),(49,'小資奇幻極光4+1晚2次遇見極光','AS0680915ZZA','17,900','6天','4','4','2018/09/15'),(50,'摩洛哥10天卡薩布蘭、卡四大皇城、撒哈拉沙漠、阿班哈杜','AN1080915QRA','69,900','10天','26','0','2018/09/15'),(51,'海洋自主號西加勒比海牙買加、大開曼群島、墨西哥11日','EC1180915BRA','69,900','11天','20','0','2018/09/15'),(52,'肯亞我要玩狠大8天','AK0880915KQA','125,900','8天','13','12','2018/09/15'),(53,'東方夏威夷~陽光沙灘椰林超值海南5日','HAK180916HUB','11,999','5天','16','15','2018/09/16'),(54,'東方夏威夷~陽光沙灘椰林熱情海南5日','HAK180916HUA','17,900','5天','16','15','2018/09/16'),(55,'亞特蘭蒂斯~東方夏威夷˙陽光沙灘椰林頂級海南5日','HAK180916HUC','19,900','5天','16','15','2018/09/16'),(56,'黃山典雅輕鬆行~黃山•宏村•唐模法國鄉村7日','TXN180916BRB','28,800','7天','16','15','2018/09/16'),(57,'張家界天門山袁家界鳳凰古城玻璃橋精選8日','CSX180917CZC','28,900','8天','17','16','2018/09/17'),(58,'迴響夢駝鈴系列〜河西走廊五彩山、莫高窟、鳴沙山+月牙泉8日','LHW180917HUA','39,900','8天','16','15','2018/09/17'),(59,'Hello!長榮荷德比法3遊船OUTLET10天','EW1080917BRA','69,900','10天','26','0','2018/09/17'),(60,'秘境克斯波國家公園10天(一中段)','EE1080917OSA','78,900','10天','26','25','2018/09/17');
/*!40000 ALTER TABLE `orangetour` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-02  1:27:42