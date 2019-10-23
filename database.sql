-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: soloadventure
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `story_id` int(10) unsigned NOT NULL,
  `target_id` int(10) unsigned NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `story_id` (`story_id`),
  KEY `target_id` (`target_id`),
  CONSTRAINT `links_ibfk_1` FOREIGN KEY (`story_id`) REFERENCES `story` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `links_ibfk_2` FOREIGN KEY (`target_id`) REFERENCES `story` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
INSERT INTO `links` VALUES (1,1,2,'Fortsätt leka. '),(2,1,3,'Jobba.'),(3,2,4,'Gå ut i skogen.'),(4,2,5,'Stanna kvar i huset.'),(5,3,6,'Inne'),(6,3,7,'Ute'),(7,4,17,'OK'),(8,7,8,'Fly'),(9,7,9,'Vägra jobba'),(10,5,3,'Ta konsekvenserna'),(11,10,13,'Återvänd till huset'),(12,6,8,'Fly'),(13,6,9,'Utvisad'),(14,9,10,'OK'),(15,10,11,'Bär'),(16,10,12,'Vatten'),(17,11,14,'Ja.'),(18,11,10,'Nej.'),(19,13,3,'OK'),(20,8,17,'Ja.'),(21,8,5,'Nej.'),(22,12,15,'Ja.'),(27,12,10,'Nej.'),(31,17,18,'Leta efter mat.'),(33,17,19,'Sov.'),(35,18,20,'OK.'),(36,20,21,'Ät nu.'),(37,20,22,'Spara.'),(38,21,23,'OK.'),(39,22,23,'OK.'),(40,23,24,'Ät på huset.'),(41,23,25,'Avvakta.'),(42,24,27,'OK'),(43,25,26,'OK'),(44,27,28,'Be om ursäkt.'),(45,27,29,'Slåss mot häxan.'),(46,27,30,'Låtsas som inget.'),(47,29,33,'OK'),(48,33,34,'Gör som hon säger.'),(49,33,38,'Ta trollstaven.'),(50,33,39,'Försök att fly.'),(51,38,40,'Ja.'),(52,38,33,'Nej.'),(53,28,31,'OK.'),(54,31,29,'OK.'),(55,30,32,'OK'),(56,32,29,'OK'),(57,34,35,'Ja'),(58,34,33,'Nej'),(59,35,36,'Ja'),(60,35,37,'Nej'),(61,39,41,'Ja'),(62,39,33,'Nej'),(63,41,33,'OK'),(64,40,42,'A'),(65,40,43,'B'),(66,40,44,'C'),(67,42,45,'Ja'),(68,42,40,'Nej'),(69,43,46,'Ja'),(70,43,40,'Nej'),(71,44,47,'Ja'),(72,44,40,'Nej'),(73,47,1,'OK'),(74,46,48,'OK'),(75,48,49,'OK'),(76,19,23,'OK'),(77,37,33,'OK'),(78,0,1,'OK'),(79,49,1,'OK'),(80,51,1,'OK'),(81,52,1,'OK'),(82,26,1,'OK'),(83,14,1,'OK'),(84,15,1,'OK'),(85,36,1,'OK'),(86,16,1,'OK'),(87,45,1,'OK');
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `story`
--

DROP TABLE IF EXISTS `story`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `story` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `story`
--

LOCK TABLES `story` WRITE;
/*!40000 ALTER TABLE `story` DISABLE KEYS */;
INSERT INTO `story` VALUES (0,'Hello World! Du bör inte vara på just denna delen av sidan, tryck på länken nedan för att komma till spelet!'),(1,'Välkommen till Hans och Greta - Alex Edition. Här kommer du att vara med i ett soloäventyr med Hans och Greta tema. Här är ditt första val. Du och ditt syskon leker trots att ni egentligen ska jobba. Er mamma kommer in i rummet. Vad gör ni?'),(2,'Mamman blir förbannad för att ni fortsätter att leka. Vad gör du?'),(3,'Du väljer att börja jobba, men du står mellan två val. Väljer du att jobba inne eller ute?'),(4,'Du väljer att gå ut i skogen.'),(5,'Du stannar kvar i huset.'),(6,'Du väljer att jobba inne, men du tycker att det blir tråkigt. Du står och väger mellan två val. Antingen så flyr du huset, eller så vägrar du att lyda din mammas order vilket troligtvis resulterar i att du blir utvisad från familjen. Vad väljer du?'),(7,'Du väljer att arbeta ute. Väl där ute inser du att du har möjligheten att dra dig undan från jobb. Efter ett tag ger du helt enkelt upp och du står inför två alternativ. Antingen så flyr du, ELLER så väljer du att vägra hjälpa din mamma, vilket kan sluta med att du blir utvisad. Vilket alternativ väljer du?'),(8,'Du väljer att fly. Är du säker på detta?'),(9,'Du blir utvisad från familjen eftersom att du vägrar att hjälpa till.'),(10,'Efter att du blivit utvisad måste du skaffa mat. Du har tre alternativ. Vad gör du?'),(11,'Du äter bären. Är det ditt slutgiltiga svar?'),(12,'Du dricker vattnet. Är det ditt slutgiltiga svar?'),(13,'Du valde att återvända till huset. Trots din tidigare vägran tar din mamma emot dig igen. Du blir däremot tvungen att jobba.'),(14,'Bären innehöll gift. Du dör.'),(15,'Vattnet var smutsigt och innehöll farliga bakterier. Du dör.'),(16,'Hello World! Denna del användes aldrig, så här är en länk tillbaka till början!'),(17,'Efter att du lämnat huset så går du vilse i skogen. Vad gör du?'),(18,'Du letar efter mat.'),(19,'Du går och lägger dig tidigt. '),(20,'Du hittar vad som, till-synes, ser ut att vara blåbär. Vad gör du?'),(21,'Du väljer att äta dem nu, energin lär behövas på en gång. '),(22,'Du väljer att gå och lägga dig istället.'),(23,'Du är nu vid häxans hus. Det är gjort av godis och ser väldigt ätbart ut. Vad gör du?'),(24,'Visst är det gott? Du fortsätter att äta på huset, all energi behövs.'),(25,'Du väljer att avvakta, det känns som ett smartare val. '),(26,'Det visar sig inte vara så smart. Du gömmer dig inte tillräckligt bra och du blir nedslagen av häxan. Tyvärr dör du här.'),(27,'Häxan märker nu att du äter på hennes hus, vilket inte tycks om av henne. Vad gör du nu?'),(28,'Du ber om ursäkt.'),(29,'Du väljer att bekämpa häxan och slåss mot henne.'),(30,'Du låtsas som ingenting har hänt.'),(31,'Ursäkten godtas INTE.'),(32,'Det gör bara saken värre'),(33,'Häxan startar ugnen som sitt första drag. Hon säger att hon inte kommer göra någon illa om du bara gör som hon säger. Vad väljer du att göra?'),(34,'Du väljer att göra som hon säger. Är du säker på att det är det du vill?'),(35,'Hon ber dig att bränna inne ditt syskon, kommer du att göra det?'),(36,'Hur kunde du gå på det? Grattis. Nu är både du och ditt syskon döda, då häxan inte ville ha en förrädare på sitt lag. Du är död. '),(37,'Du kommer alltså att behöva ett nytt alternativ. '),(38,'Du väljer att ta trollstaven. Är du säker på detta val?'),(39,'Du väljer att försöka fly. Är du säker på detta val?'),(40,'Det finns tre knappar på trollstaven, det som är känt är att en av dem kan kontrollera häxan, men det är oklart vilken. Vilken knapp väljer du? Tänk igenom ditt val noga.'),(41,'Du försöker att fly men du blir fast i huset. Du behöver alltså ett nytt alternativ.'),(42,'Är A ditt slutgiltiga svar?'),(43,'Är B ditt slutgiltiga svar?'),(44,'Är C ditt slutgiltiga svar?'),(45,'Efter att du tryckte på A så hamnar häxan i en bunker. En bomb släpps ner på huset och du och ditt syskon dör direkt.'),(46,'Efter att du tryckte på B så märker du att häxan börjar att bete sig konstigt. Det går inte så lång tid innan du inser att du kan kontrollera häxan med trollstaven, och du lurar in henne i ugnen, stänger in henne i ugnen, och sätter på värmen på ugnen. Häxan klarar inte av värmen och blir till aska.'),(47,'Efter att du tryckte på C så börjar allt kännas konstigt. Det slutar med att du och ditt syskon åker tillbaka i tiden, utan vetskapen om att något av detta har någonsin hänt. '),(48,'Grattis, häxan är besegrad och du har vunnit spelet!'),(49,'Tack så mycket för att du har spelat detta soloäventyr. Detta gjordes som ett projekt i Webbserverprogrammering 1. '),(51,'Spelreglerna är rätt så simpla.\r\nDu gör ett nytt val på varje sida, som påverkar hur berättelsen utvecklas. Vänligen svara så ärligt som möjligt för den bästa upplevelsen.'),(52,'Detta projekt var en del i kursen Webbserverprogrammering 1.');
/*!40000 ALTER TABLE `story` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-23 11:06:53
