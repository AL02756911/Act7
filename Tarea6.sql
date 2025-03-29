-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: act7
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `course_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caratula` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contenido` text COLLATE utf8mb4_unicode_ci,
  `kit_robotica` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grupo_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cursos_course_key_unique` (`course_key`),
  KEY `cursos_grupo_id_foreign` (`grupo_id`),
  CONSTRAINT `cursos_grupo_id_foreign` FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'Rob102','Quae reprehenderit magnam occaecati.','https://via.placeholder.com/640x480.png/001144?text=technics+fuga','Deserunt aut consequatur rerum aperiam. Voluptatem provident illum recusandae dolor. Ut quasi quibusdam aliquam eveniet reprehenderit. Et molestiae voluptas mollitia rerum nam molestiae minus. Quis itaque omnis modi.','StarterKit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(2,'Rob987','Modi accusantium quas et.','https://via.placeholder.com/640x480.png/0011bb?text=technics+totam','Et aliquam ipsa maiores atque. Et omnis tempore incidunt odit aliquid omnis ipsam sit. Voluptatum iste eos magnam molestiae dolor perspiciatis necessitatibus consectetur. Labore minima dignissimos voluptatem nobis quam nesciunt qui asperiores.','Educational Robotics Kit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(3,'Rob341','Dolor totam atque culpa.','https://via.placeholder.com/640x480.png/009944?text=technics+tenetur','Et et illo recusandae consectetur. Sint labore eveniet fugiat qui magni cupiditate vitae neque. Ut necessitatibus repellat mollitia repellat.','StarterKit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(4,'Rob413','Ipsam praesentium error aspernatur.','https://via.placeholder.com/640x480.png/00aa99?text=technics+dolores','Unde et officia nam quia accusantium nulla. Repellat rerum dignissimos dolores velit nihil reiciendis nihil. Vel rerum dolorem sunt voluptas ea natus. Quod est minus consectetur nam.','StarterKit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(5,'Rob549','Sed non omnis.','https://via.placeholder.com/640x480.png/000099?text=technics+est','Expedita est rem rerum accusamus voluptatem atque esse ad. Repudiandae a dolorum sint aut recusandae rerum animi consequuntur. Aut quae nihil rem at.','Kit5',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(6,'Rob771','Id aut aut.','https://via.placeholder.com/640x480.png/004422?text=technics+qui','Quis tempore voluptatum qui adipisci harum. Dolorem eum earum aspernatur ut consequatur quia. Molestiae temporibus porro cupiditate perspiciatis.','Educational Robotics Kit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(7,'Rob447','Similique est sed quia quam.','https://via.placeholder.com/640x480.png/009999?text=technics+porro','Totam amet deserunt necessitatibus dolor. Officiis magni suscipit aut placeat. Debitis nesciunt ut inventore. Qui debitis rem fugiat pariatur. Nisi non ut earum quos deserunt dolorem.','Educational Robotics Kit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(8,'Rob850','Expedita perferendis dolores commodi.','https://via.placeholder.com/640x480.png/008855?text=technics+corrupti','Cumque animi id at. Et aliquid nobis ut vel. Quo et et est eum. Mollitia mollitia eum voluptatem adipisci consequatur quam et. Doloribus qui unde harum eius et voluptates in.','StarterKit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(9,'Rob351','Perferendis molestiae rem veritatis.','https://via.placeholder.com/640x480.png/009944?text=technics+necessitatibus','Natus et et natus vel id. Debitis laudantium autem quod cupiditate aperiam eveniet quaerat. Sequi laudantium ducimus qui doloribus.','Educational Robotics Kit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(10,'Rob335','Suscipit incidunt aliquam.','https://via.placeholder.com/640x480.png/007777?text=technics+beatae','Ut aperiam aut sequi magni. Aut beatae eum molestias adipisci quasi in dignissimos omnis. Hic atque voluptatem distinctio.','StarterKit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(11,'Rob730','Sed distinctio quisquam ipsam.','https://via.placeholder.com/640x480.png/008855?text=technics+repellendus','Fuga sequi soluta aliquid voluptate laboriosam. Pariatur et ducimus ea itaque. Sit sed voluptatem consequatur est. Iusto et error rem odio suscipit sed voluptate.','Kit5',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(12,'Rob191','Qui voluptas repudiandae quis.','https://via.placeholder.com/640x480.png/008800?text=technics+qui','Sequi non repudiandae et repellat voluptate tenetur. Eveniet voluptate natus et aliquam omnis dignissimos. Aut incidunt incidunt delectus eos numquam aut. Et totam voluptate et est.','Kit5',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(13,'Rob196','Aliquid et ex iste.','https://via.placeholder.com/640x480.png/0066dd?text=technics+pariatur','Enim voluptate dolores perferendis ut nesciunt et velit. Deleniti similique sequi inventore eos nihil et aut. Tempore delectus distinctio delectus consequatur. Dolores aut odit voluptatem et et voluptatem in. Unde maiores autem ut eius necessitatibus.','Educational Robotics Kit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(14,'Rob657','Est quia id.','https://via.placeholder.com/640x480.png/00cc55?text=technics+rerum','Fugit quae est expedita omnis cupiditate omnis eligendi suscipit. Ut quis dicta sint ipsum aliquid sit impedit. Voluptas quaerat eum ipsam reiciendis nemo dicta optio. Suscipit non qui ut voluptates voluptatem atque consequuntur mollitia.','Educational Robotics Kit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(15,'Rob502','Laboriosam ut aut.','https://via.placeholder.com/640x480.png/006677?text=technics+necessitatibus','Corporis omnis nesciunt aut voluptas eaque. Dicta velit eum reiciendis aliquam tempore eos amet. Voluptas explicabo neque alias blanditiis.','Educational Robotics Kit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(16,'Rob757','Corporis autem sit.','https://via.placeholder.com/640x480.png/0099dd?text=technics+quia','Sed laudantium mollitia velit. Id fuga suscipit ipsum quas repellat qui. Dolore accusamus at laudantium inventore voluptas veritatis. Quibusdam libero quas numquam eos distinctio et.','StarterKit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(17,'Rob124','Quisquam est est qui consectetur.','https://via.placeholder.com/640x480.png/00bbcc?text=technics+esse','Quas qui nisi fugit aut veritatis. Dolores totam non sed sed quasi aut ea.','Educational Robotics Kit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(18,'Rob729','Amet voluptate.','https://via.placeholder.com/640x480.png/00aaff?text=technics+et','Atque rem dolorem quaerat non culpa modi reiciendis labore. Quas velit laudantium reprehenderit nihil voluptatem praesentium. Voluptas doloremque animi facilis molestiae aut tempora a sed. Saepe expedita esse qui sequi laboriosam perferendis rem.','StarterKit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(19,'Rob791','Eum odio quia accusantium.','https://via.placeholder.com/640x480.png/00dd77?text=technics+eligendi','Quis est quasi ut reprehenderit. Quisquam soluta fugiat nihil illum quia. Rerum consequatur voluptatem ut numquam.','StarterKit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(20,'Rob721','Magni delectus quas.','https://via.placeholder.com/640x480.png/002211?text=technics+aut','Enim provident voluptate dignissimos debitis quo. Odit et rerum quis rerum dolor harum. Beatae et dolor dicta inventore.','Kit5',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(21,'Rob863','Omnis molestiae.','https://via.placeholder.com/640x480.png/00bbee?text=technics+voluptas','Autem ab praesentium voluptates maiores aut possimus velit. Velit rem quaerat nihil accusantium. Quo velit voluptatum nobis omnis aut provident nihil.','Kit5',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(22,'Rob507','Praesentium iste porro illo.','https://via.placeholder.com/640x480.png/00cccc?text=technics+nihil','Voluptas quidem et maxime sed beatae. Porro quae error in debitis incidunt deleniti.','Kit5',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(23,'Rob866','Tenetur animi in.','https://via.placeholder.com/640x480.png/0066ee?text=technics+aliquid','Exercitationem expedita dolorem quo est. Est et qui cupiditate qui. Sunt voluptatum cumque cum ad.','StarterKit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(24,'Rob391','Sunt quibusdam est alias.','https://via.placeholder.com/640x480.png/00aadd?text=technics+enim','Magnam non nulla ducimus similique dolorem quibusdam quas. Earum eos omnis aut. Hic veniam deserunt vel. Expedita suscipit vel quia deserunt expedita.','Educational Robotics Kit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(25,'Rob940','Veniam exercitationem vel dicta.','https://via.placeholder.com/640x480.png/0000cc?text=technics+id','Molestias inventore alias error voluptatem modi corrupti deleniti. Et quidem voluptas molestiae nam aut. Fugit molestias rerum odit. Nemo temporibus occaecati non facere et.','Kit5',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(26,'Rob875','Ut consequatur.','https://via.placeholder.com/640x480.png/000022?text=technics+reiciendis','Sed ut quo iste laudantium. Doloribus molestiae architecto maxime voluptatem rerum et. Enim id nemo et voluptas sit. Laudantium accusantium expedita dolorum unde consequatur unde.','StarterKit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(27,'Rob498','Nostrum sint.','https://via.placeholder.com/640x480.png/00bb66?text=technics+et','Vero ut nam magnam laboriosam. Velit et est consequuntur in quo sit voluptatum. Minus fugit perspiciatis aperiam velit.','StarterKit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(28,'Rob126','In neque quis.','https://via.placeholder.com/640x480.png/00bb99?text=technics+commodi','Dolorum exercitationem enim necessitatibus et in vero. Facere nostrum repudiandae voluptas eum consectetur blanditiis eius corporis. Animi iusto quidem ab quidem delectus veritatis. Aliquid quidem dolores illum numquam officiis omnis.','StarterKit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(29,'Rob343','Tempora excepturi libero eaque.','https://via.placeholder.com/640x480.png/002233?text=technics+aut','Quia et delectus saepe quibusdam. Deserunt consequatur iusto aut distinctio fugiat. Dolorem ex commodi minima sint consequatur.','Kit5',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(30,'Rob312','Consequatur ab distinctio incidunt.','https://via.placeholder.com/640x480.png/0055aa?text=technics+assumenda','Consequatur at molestiae non. Assumenda adipisci eaque sapiente quidem. Aut sint et ut excepturi tempora ut. Quas quia et dolore quidem. Libero rerum qui voluptatum vero architecto quas voluptatem.','Kit5',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(31,'Rob779','Nihil aut repellat asperiores.','https://via.placeholder.com/640x480.png/003366?text=technics+sed','Saepe enim delectus cumque nostrum. Quo inventore aspernatur autem ipsa placeat quos. Optio ipsam consequatur velit beatae illo totam praesentium quia.','StarterKit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(32,'Rob164','Quod repudiandae quis adipisci.','https://via.placeholder.com/640x480.png/00bbaa?text=technics+et','Iure ipsa facere atque corrupti necessitatibus eum. Dolores numquam id rerum quo adipisci vel. Laboriosam explicabo sed animi odit alias rerum. Blanditiis numquam aut maxime aperiam velit illum laboriosam.','Educational Robotics Kit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(33,'Rob992','Corrupti atque commodi.','https://via.placeholder.com/640x480.png/0077cc?text=technics+esse','Soluta quo non facere. Molestiae recusandae perferendis facere error optio. Nisi quo doloremque inventore aliquid atque.','Educational Robotics Kit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(34,'Rob421','Consectetur quia non dolores.','https://via.placeholder.com/640x480.png/0044dd?text=technics+enim','Nulla vel voluptas non aliquam. Non pariatur perferendis placeat ut.','StarterKit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(35,'Rob656','Qui qui sit.','https://via.placeholder.com/640x480.png/003333?text=technics+nam','Id sapiente et cupiditate aut. Excepturi aut sunt velit illum. Magnam architecto sequi ut voluptatem id quos nemo. Sequi consequuntur non ea dolor.','Kit5',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(36,'Rob702','Nostrum cum facere dolor.','https://via.placeholder.com/640x480.png/006600?text=technics+modi','Aut enim id in ut quo. Et qui omnis esse et quia soluta est. Consectetur qui quas et. Eos dolores facilis dolor nihil.','StarterKit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(37,'Rob752','Tempora inventore ut dolorem.','https://via.placeholder.com/640x480.png/001122?text=technics+officiis','Omnis et eos aut. Amet sed quidem sit hic quo. Animi voluptate alias fugiat eum. Impedit aliquid sapiente at vel.','Kit5',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(38,'Rob699','Iure optio perferendis distinctio.','https://via.placeholder.com/640x480.png/004477?text=technics+enim','Omnis debitis magni culpa sed. Porro delectus maiores et modi distinctio. Autem dolorem enim quis deserunt voluptatibus molestiae. Quas dolores consequatur qui qui. Enim sit autem saepe accusantium culpa occaecati officiis.','Educational Robotics Kit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(39,'Rob293','Quo quia dolorem quas.','https://via.placeholder.com/640x480.png/00ff33?text=technics+et','Ex sit fuga ea. Et natus accusamus repellat et nostrum qui. Ea est mollitia nam dolor. Non laboriosam et at.','Kit5',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(40,'Rob232','Ex nulla consectetur vel.','https://via.placeholder.com/640x480.png/001100?text=technics+harum','Accusamus reprehenderit rerum et dolorem qui neque ipsam. Vel sit aut et eius ducimus dolor accusamus. Quis tenetur doloremque vel quidem rem inventore aperiam. Quod odit illo provident rerum placeat temporibus fugit.','StarterKit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(41,'Rob108','Distinctio porro sed sit.','https://via.placeholder.com/640x480.png/000000?text=technics+reprehenderit','Voluptatem laborum nesciunt qui nobis sit. Quos tempore quia ducimus et et eaque.','Educational Robotics Kit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(42,'Rob280','Et reprehenderit suscipit impedit.','https://via.placeholder.com/640x480.png/0088bb?text=technics+explicabo','Ut tempore corrupti qui sed earum illo. Debitis omnis aut a quo adipisci. Provident excepturi et amet nemo deleniti et ea. Dolorum dolore nisi ipsam eligendi.','Kit5',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(43,'Rob277','Delectus nihil ea et.','https://via.placeholder.com/640x480.png/004488?text=technics+cum','Maiores sed quaerat nihil iusto quis repudiandae soluta. Nam cum aperiam vero corporis distinctio voluptas dolorem rerum. Vel et et culpa aut non.','Educational Robotics Kit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(44,'Rob129','Cum ea illum.','https://via.placeholder.com/640x480.png/00ffee?text=technics+id','Placeat suscipit quo doloribus itaque vel autem ea aut. Qui optio voluptates facere nihil. Voluptatem est similique porro dolor laborum. Dolores voluptatem quibusdam ut quisquam.','Kit5',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(45,'Rob113','Neque quo similique fugiat.','https://via.placeholder.com/640x480.png/008800?text=technics+quo','Corrupti quod commodi neque ad. Doloremque voluptas inventore molestiae et ea qui eum dicta. Aut a occaecati eligendi veniam quis.','StarterKit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(46,'Rob356','Commodi et nulla.','https://via.placeholder.com/640x480.png/0000ee?text=technics+in','Voluptatibus quae et vero itaque alias voluptatum. Provident voluptas labore sit repellat amet possimus. Velit debitis et fuga pariatur.','Educational Robotics Kit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(47,'Rob789','Beatae quam odio.','https://via.placeholder.com/640x480.png/0099ff?text=technics+amet','Est perferendis magni aut ipsa. Laboriosam laborum fugiat adipisci nisi itaque rerum omnis est. Eaque non cupiditate repudiandae. Explicabo voluptate eos repellendus labore cum laboriosam facere.','StarterKit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(48,'Rob450','Nesciunt unde deserunt.','https://via.placeholder.com/640x480.png/0077bb?text=technics+dignissimos','Earum qui qui qui dolorem culpa sit doloribus blanditiis. Animi dolores sit voluptas omnis odio sunt.','Kit5',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(49,'Rob282','Excepturi et ut.','https://via.placeholder.com/640x480.png/0044aa?text=technics+tenetur','Et quas illo ut ut. Et corrupti perferendis alias molestias. Repellendus pariatur nobis voluptatum corrupti repellat sint. Ut sit fuga enim et.','Educational Robotics Kit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(50,'Rob726','Deserunt quia minima eum.','https://via.placeholder.com/640x480.png/00ff77?text=technics+vero','Deserunt incidunt quibusdam vitae debitis molestiae commodi. Quia eligendi sint voluptatibus sapiente fugiat quod excepturi. Aut nam fuga sed recusandae ut dignissimos cum. Quia velit impedit hic.','Educational Robotics Kit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(51,'Rob964','Ut eveniet omnis magnam.','https://via.placeholder.com/640x480.png/00aaee?text=technics+ea','Dolores delectus non autem expedita. Corrupti amet inventore voluptatem aliquam. Et asperiores ipsa laborum eius atque eos magni.','Kit5',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(52,'Rob171','Nihil molestias ut commodi.','https://via.placeholder.com/640x480.png/00ff33?text=technics+omnis','Quia accusamus aperiam id nihil porro. Explicabo voluptate amet aut veniam soluta voluptas et dicta. Voluptatum consequatur temporibus ut ducimus iure ut. Mollitia error eos vel unde non veritatis facilis repellat.','StarterKit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(53,'Rob469','Qui expedita.','https://via.placeholder.com/640x480.png/000022?text=technics+voluptatem','Sunt aut unde nihil sed aperiam. Ea est commodi id occaecati quia id repudiandae harum. Placeat et officia ratione magni amet. Nulla ut praesentium voluptate iste illo et. Debitis corporis autem quam architecto consequatur suscipit modi voluptate.','StarterKit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(54,'Rob679','Laboriosam illum ut et.','https://via.placeholder.com/640x480.png/000099?text=technics+perferendis','Ipsam nisi voluptas maiores. Laborum explicabo qui odit quisquam consequatur reiciendis. Magni dolor iusto non laborum labore.','Kit5',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(55,'Rob667','Quod non omnis repudiandae.','https://via.placeholder.com/640x480.png/0044ff?text=technics+quo','Et sit corrupti rem perspiciatis. Voluptas totam ipsum sequi maxime asperiores accusantium. Aut saepe earum repellendus omnis eveniet fugiat.','Educational Robotics Kit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(56,'Rob383','Rem sit ipsa vel omnis.','https://via.placeholder.com/640x480.png/007733?text=technics+placeat','Deserunt illo sed ipsum assumenda et omnis laudantium. Consequatur qui quis aut asperiores necessitatibus alias architecto. Minima beatae vel sunt dignissimos et. Tenetur aut ut architecto sit dolores.','Educational Robotics Kit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(57,'Rob982','Occaecati ex.','https://via.placeholder.com/640x480.png/00aa55?text=technics+adipisci','Harum et aut minima consequatur. Ut nobis voluptas rem amet animi. Recusandae debitis natus amet sit.','Educational Robotics Kit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(58,'Rob788','Quidem autem.','https://via.placeholder.com/640x480.png/008888?text=technics+cum','Animi ut soluta mollitia qui esse ut vel debitis. Commodi atque dolores voluptas ut est quisquam ut cumque. Molestiae illum non amet omnis ratione. Dolor quia animi voluptatem incidunt et aliquid.','Kit5',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(59,'Rob796','Non error.','https://via.placeholder.com/640x480.png/00bb55?text=technics+ea','Numquam ab ut laboriosam totam at et veritatis. Non ipsa explicabo id non deleniti et praesentium. Doloremque ea nihil reprehenderit non corrupti beatae porro.','Kit5',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(60,'Rob207','Quasi fuga quisquam error.','https://via.placeholder.com/640x480.png/002277?text=technics+suscipit','Aliquam laboriosam et et laudantium. Praesentium asperiores et ut ab officia beatae. Recusandae eligendi dolorum qui adipisci ex quis. Itaque fuga perspiciatis aut.','Educational Robotics Kit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(61,'Rob795','Id facere.','https://via.placeholder.com/640x480.png/0000aa?text=technics+dolores','Distinctio ut sequi debitis excepturi. Aut a eos laboriosam vel et incidunt. Nam sit nostrum odit autem pariatur eum culpa.','Educational Robotics Kit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(62,'Rob997','Ratione sequi odit.','https://via.placeholder.com/640x480.png/00dd22?text=technics+mollitia','Aspernatur autem commodi tempora provident doloribus eveniet molestiae. Praesentium voluptatem et numquam voluptates ut aut fuga. Voluptatem dolor dolores ea nihil ex. Magni dolor error voluptas iusto eveniet voluptatem.','Kit5',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(63,'Rob177','Amet est nesciunt.','https://via.placeholder.com/640x480.png/002211?text=technics+sint','Nihil ratione maxime neque. Officia sunt expedita et optio eum dicta. Voluptatum saepe repellendus labore minima.','Kit5',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(64,'Rob339','Esse expedita quis quia.','https://via.placeholder.com/640x480.png/00cc00?text=technics+quidem','Ex et voluptas minus. Autem et blanditiis sint omnis ex laborum dignissimos. Assumenda possimus voluptatem et amet aliquid nihil reprehenderit rem. Ea rem aut autem doloremque dolorem natus.','Kit5',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(65,'Rob649','Id molestiae molestiae nulla.','https://via.placeholder.com/640x480.png/0055dd?text=technics+rerum','Enim ab et id rerum rem. Ducimus optio voluptate provident praesentium reiciendis necessitatibus consequuntur. Quia illum veniam itaque doloribus enim eius. Reprehenderit esse assumenda qui et. Magnam iusto excepturi illo velit non.','StarterKit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(66,'Rob703','Facere voluptatem dignissimos.','https://via.placeholder.com/640x480.png/007722?text=technics+ut','Doloribus ipsam rerum quos ullam dolor velit magnam. Esse quia accusantium possimus soluta beatae.','Educational Robotics Kit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(67,'Rob907','Autem iste laboriosam unde.','https://via.placeholder.com/640x480.png/00ff99?text=technics+sit','Sed iure est dolor error. Aspernatur magnam illum aut laborum amet magni est. Fugit est voluptatum reprehenderit delectus nesciunt illo ut expedita. Dolorem reiciendis nostrum cumque. Suscipit explicabo quisquam autem consequatur.','Educational Robotics Kit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(68,'Rob755','Repudiandae autem incidunt.','https://via.placeholder.com/640x480.png/006688?text=technics+nesciunt','Harum in deserunt cum voluptatem et ipsum. Odio veniam quia voluptas voluptatem nemo cum. Ea dolor hic illum tempora architecto expedita et.','Kit5',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(69,'Rob981','Nesciunt quia dignissimos laudantium.','https://via.placeholder.com/640x480.png/00ff55?text=technics+qui','Sequi laborum occaecati ex illum consectetur. Sit beatae fugiat atque enim aut. Sed minima ipsum earum et.','Educational Robotics Kit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(70,'Rob993','Quis mollitia et id.','https://via.placeholder.com/640x480.png/00aa11?text=technics+nobis','Quo ea iure maxime tempora omnis saepe. Et enim labore explicabo tenetur harum minima.','Kit5',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(71,'Rob658','Repellendus voluptas in.','https://via.placeholder.com/640x480.png/0044ff?text=technics+non','Autem aut dicta qui. Enim ipsum porro sunt esse saepe voluptas. Quia sequi omnis porro doloribus soluta eaque et.','Kit5',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(72,'Rob938','Et iusto aut.','https://via.placeholder.com/640x480.png/005577?text=technics+nemo','Qui dignissimos consequatur eos mollitia itaque neque possimus adipisci. Rerum maxime eveniet amet voluptate optio. Omnis consequatur qui cum et aspernatur assumenda.','StarterKit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(73,'Rob295','Fugiat maiores cupiditate.','https://via.placeholder.com/640x480.png/001122?text=technics+aut','Et reiciendis dolorum consequatur aut facilis qui nihil. In qui praesentium quo molestias dolor. Quo veritatis provident occaecati deserunt est expedita.','StarterKit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(74,'Rob879','Rerum quod ducimus.','https://via.placeholder.com/640x480.png/00dd66?text=technics+quae','Nihil excepturi dolorem perspiciatis quo officia nesciunt modi. Perferendis ex est delectus. Ut voluptate eos nesciunt et doloremque voluptatum iusto.','Educational Robotics Kit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(75,'Rob619','Facilis ullam.','https://via.placeholder.com/640x480.png/0044ff?text=technics+dolore','Dicta modi illum praesentium. Repellendus neque itaque nesciunt eius. Sequi sed ea voluptates repudiandae quaerat rem dolores.','Kit5',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(76,'Rob347','Sapiente quasi provident non a.','https://via.placeholder.com/640x480.png/00bbee?text=technics+est','Quo voluptatem eligendi laudantium cum. Consequatur rem quia sed consectetur. Delectus mollitia quam accusamus ex aperiam voluptatum. Quia suscipit quidem molestiae quasi soluta dolorem architecto.','Kit5',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(77,'Rob772','Aperiam asperiores ut.','https://via.placeholder.com/640x480.png/0099ff?text=technics+voluptatem','Possimus voluptatem quod inventore enim ut consequuntur quasi exercitationem. Quo assumenda assumenda labore ut. Voluptatem et dignissimos neque qui adipisci. Excepturi enim aut nisi laborum quasi numquam.','Educational Robotics Kit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(78,'Rob664','Autem vel aspernatur voluptate.','https://via.placeholder.com/640x480.png/00dddd?text=technics+repellendus','Dolorem est nemo amet sit. Non facere optio enim aperiam. Porro nihil dolorem quaerat exercitationem. Voluptate dolor voluptatem ut.','Educational Robotics Kit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(79,'Rob226','Ut veritatis odio.','https://via.placeholder.com/640x480.png/0011ff?text=technics+perferendis','At soluta debitis et. Assumenda non ea dolore ipsam. Omnis quibusdam dolorem est commodi et veritatis consequatur.','StarterKit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(80,'Rob199','Quas et et voluptatem.','https://via.placeholder.com/640x480.png/0099bb?text=technics+et','Consequuntur quisquam facilis culpa optio. Ipsa dolorum debitis totam autem occaecati aliquam quo mollitia. Pariatur ut nemo debitis accusamus qui.','Kit5',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(81,'Rob654','Nemo rerum aut architecto.','https://via.placeholder.com/640x480.png/00dd00?text=technics+rerum','Sit eos quo voluptatem. Aut atque veniam consectetur beatae ut et voluptas fuga. Delectus itaque optio harum ab minus. Ab iste minima ea quibusdam alias quia.','Kit5',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(82,'Rob242','Natus mollitia.','https://via.placeholder.com/640x480.png/001155?text=technics+repellendus','Porro qui et consequuntur et enim. Magnam dolores est non enim sint neque et. Incidunt dolorum consequuntur occaecati maiores odio deserunt. Repellendus autem enim eligendi accusantium velit praesentium numquam.','Educational Robotics Kit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(83,'Rob678','Autem ex quod enim.','https://via.placeholder.com/640x480.png/005511?text=technics+qui','Aspernatur recusandae libero nihil non quia dolores et sunt. Ut quis libero non voluptas. Facere vitae pariatur aut in eos.','StarterKit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(84,'Rob936','Sed aperiam non eos.','https://via.placeholder.com/640x480.png/00aaaa?text=technics+eum','Est possimus exercitationem distinctio cumque sunt deserunt eveniet placeat. Voluptatibus nobis cupiditate nostrum autem. Occaecati qui vero est omnis. Quam veniam velit iusto architecto consequatur delectus consequatur et.','Educational Robotics Kit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(85,'Rob500','Et praesentium vel.','https://via.placeholder.com/640x480.png/00cc33?text=technics+rerum','Ut occaecati sed ad qui. Dolores odit sequi enim nemo. Recusandae quisquam placeat officia nisi officiis quae modi. Quia nemo praesentium aut.','Educational Robotics Kit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(86,'Rob303','Debitis nihil repellendus.','https://via.placeholder.com/640x480.png/00dd22?text=technics+nihil','Qui est aspernatur blanditiis omnis nihil est incidunt. Possimus exercitationem eos voluptatem eaque quibusdam. Ut error consequuntur officia quia adipisci ut ut. Voluptas minus et necessitatibus consequatur quam.','Educational Robotics Kit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(87,'Rob117','Corporis impedit earum.','https://via.placeholder.com/640x480.png/000077?text=technics+maiores','Ut quo occaecati autem id non qui. Ducimus laboriosam omnis dignissimos qui. Molestiae adipisci occaecati sint accusantium iure libero quis. Quidem qui atque quod deserunt iusto saepe. Cum ad ut molestias nihil quis.','Kit5',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(88,'Rob698','Porro occaecati.','https://via.placeholder.com/640x480.png/003311?text=technics+fugit','Et iste deleniti itaque at qui assumenda perferendis. Perspiciatis ut id alias. Aut quia deleniti id esse suscipit aut.','StarterKit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(89,'Rob797','Qui unde vel quidem.','https://via.placeholder.com/640x480.png/00bbbb?text=technics+harum','Ducimus sit officiis deserunt error incidunt eum. Ipsa harum qui occaecati quibusdam ducimus ab voluptatum. Non dolore animi dolorum libero corporis rerum sit.','StarterKit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(90,'Rob636','Voluptas voluptatem enim et.','https://via.placeholder.com/640x480.png/00ff66?text=technics+sapiente','Qui quae consequuntur ipsum accusantium eos ut maxime reiciendis. Et molestiae nihil sint minus voluptates optio sit fuga. Doloremque voluptatem neque ut sunt modi blanditiis et. Eligendi sequi omnis dolor.','Kit5',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(91,'Rob962','Quia voluptatem harum ea.','https://via.placeholder.com/640x480.png/0033cc?text=technics+reiciendis','Molestiae natus rem et omnis fugiat ut sed et. Aspernatur sunt sequi dicta ut. Repellat delectus est maxime distinctio. Harum nesciunt cum facere qui sit delectus est.','Kit5',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(92,'Rob326','Minima odit officiis.','https://via.placeholder.com/640x480.png/004455?text=technics+beatae','Iusto tempore minus a labore. Mollitia earum quia alias vitae. Repellat tempore omnis fuga. Veniam consequuntur sit rem similique ad a molestiae.','Educational Robotics Kit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(93,'Rob634','Ipsam ullam omnis sunt.','https://via.placeholder.com/640x480.png/0000ff?text=technics+magnam','Porro recusandae et quas sit. Qui harum fugiat in et. Ut a eum necessitatibus qui. Aut sunt non et ratione.','StarterKit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(94,'Rob555','Aut voluptatum delectus qui.','https://via.placeholder.com/640x480.png/00bb22?text=technics+ducimus','Fuga unde ut ex et error non sapiente recusandae. Eum velit et et sed commodi iste. Repellendus et et in.','Educational Robotics Kit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(95,'Rob497','Consequatur minus omnis.','https://via.placeholder.com/640x480.png/00cccc?text=technics+itaque','Et omnis ducimus atque hic quibusdam. Iste consequatur quo fugiat aut. Possimus culpa ut non odit quaerat dolorum deserunt.','StarterKit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(96,'Rob224','Et quisquam ab.','https://via.placeholder.com/640x480.png/00eeee?text=technics+laudantium','Voluptatem sed adipisci inventore voluptatibus qui aut ut inventore. Animi ipsam harum delectus at quas. Possimus vel quibusdam exercitationem nisi culpa temporibus. Rerum id blanditiis magnam ut sit dolores quis.','Educational Robotics Kit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(97,'Rob143','Mollitia ratione eligendi.','https://via.placeholder.com/640x480.png/004477?text=technics+ipsum','Possimus qui vero aut deleniti quae. Nihil reprehenderit consequatur ad velit velit ut. Molestiae nam doloremque ducimus ipsum libero cum dolor maxime. Consectetur autem quisquam rerum laborum sint.','Educational Robotics Kit',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(98,'Rob541','Dicta ab aperiam.','https://via.placeholder.com/640x480.png/00ff99?text=technics+ipsum','Hic nihil magni tempora officia voluptas rerum. Numquam voluptatem occaecati id libero ipsa et. Quam sit recusandae est soluta.','Kit5',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(99,'Rob819','Ea molestiae qui tempore.','https://via.placeholder.com/640x480.png/00aa77?text=technics+quis','Ea quis in quae consequatur. Eveniet quisquam eum assumenda sit aliquam consequatur. Et ad consequatur sed animi architecto est et. Expedita ipsam sunt eos corporis.','Kit5',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35'),(100,'Rob305','Expedita autem et qui.','https://via.placeholder.com/640x480.png/00ee55?text=technics+et','Quis odio commodi odit laborum aliquid quidem. Aut et enim sapiente. Deleniti magni accusamus animi dolorem et possimus ipsam. Quia sed impedit tenetur sint.','Kit5',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35');
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupos`
--

DROP TABLE IF EXISTS `grupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupos`
--

LOCK TABLES `grupos` WRITE;
/*!40000 ALTER TABLE `grupos` DISABLE KEYS */;
/*!40000 ALTER TABLE `grupos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kits`
--

DROP TABLE IF EXISTS `kits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kits` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kits`
--

LOCK TABLES `kits` WRITE;
/*!40000 ALTER TABLE `kits` DISABLE KEYS */;
INSERT INTO `kits` VALUES (1,'StarterKit','2025-03-30 05:07:35','2025-03-30 05:07:35'),(2,'Educational Robotics Kit','2025-03-30 05:07:35','2025-03-30 05:07:35'),(3,'Kit5','2025-03-30 05:07:35','2025-03-30 05:07:35');
/*!40000 ALTER TABLE `kits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material_didacticos`
--

DROP TABLE IF EXISTS `material_didacticos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `material_didacticos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archivo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `curso_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `material_didacticos_curso_id_foreign` (`curso_id`),
  CONSTRAINT `material_didacticos_curso_id_foreign` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material_didacticos`
--

LOCK TABLES `material_didacticos` WRITE;
/*!40000 ALTER TABLE `material_didacticos` DISABLE KEYS */;
/*!40000 ALTER TABLE `material_didacticos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_grupos_table',1),(2,'0001_01_01_000001_create_users_table',1),(3,'0001_01_01_000002_create_cache_table',1),(4,'0001_01_01_000003_create_jobs_table',1),(5,'2025_03_29_213731_create_cursos_table',1),(6,'2025_03_29_213736_create_material_didacticos_table',1),(7,'2025_03_29_225341_create_kits_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grupo_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_grupo_id_foreign` (`grupo_id`),
  CONSTRAINT `users_grupo_id_foreign` FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admon','admon@robotics.com',NULL,'$2y$12$dmZX.7mjeYqpG4.PycS1l.W0LAq6qI3/FVdULvAd8heCHOzLHMwfu',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35','Administrativo',NULL),(2,'Tecmilenio','tecmilenio@robotics.com',NULL,'$2y$12$JR1gnaZx.yfj1EOqbGLtH.szV3CNJSFPussxZ18QOOQ4tdBlidnLq',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35','Profesor',NULL),(3,'Estudiante','student@robotics.com',NULL,'$2y$12$6gHSxy4z2cmGvL9lNUMFn.cOm5o2XdwRF5qa9yCiD9oEVeHO50MIS',NULL,'2025-03-30 05:07:35','2025-03-30 05:07:35','Estudiante',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-29 17:08:23
