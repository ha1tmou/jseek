CREATE DATABASE IF NOT EXISTS jseek;
USE jseek;

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `city` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `users` VALUES (1,'Hassan AM','hassanam@gmail.com','$2y$10$UkdJDaWLRHPVwOu3lb9XW.FZWZmFaLM0BJbaj0/7dvPIqs7sdDlvK','El Jadida','2024-08-22 12:55:59'),(7,'Hassan AIT MOUSSA','hassantmoussa@gmail.com','$2y$10$/I65PssGcM1SrDkqBKGLS.6c.8.9cH3w.5jIB10ozDU0eR0g0eEIi','Marrakesh','2024-09-16 08:56:31');

DROP TABLE IF EXISTS `listings`;

CREATE TABLE `listings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext,
  `salary` varchar(45) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `company` varchar(45) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `requirements` longtext,
  `benefits` longtext,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_listings_users_idx` (`user_id`),
  CONSTRAINT `fk_listings_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `listings` VALUES (21,7,'Java Developer','We are seeking a talented Java Developer to join our dynamic team and contribute to the development of innovative software solutions.','14000','','DTechInd','BD MLY 234','Rabat','+212 766-0987643','dtechind@gmail.com','','','2024-09-16 08:59:59'),(22,7,'Software Engineer','We are seeking a skilled software engineer to develop high-quality software solutions','14000','development, coding, java, python','Tech Solutions Inc','1234 BV Yy','Marrakesh',NULL,'info@techsolutions.com','Bachelor degree in Computer Science or related field, 3+ years of software development experience','Healthcare, flexible work hour','2024-09-16 10:47:47'),(23,7,'Marketing Specialist','We are looking for a Marketing Specialist to create and manage marketing campaigns','9000','marketing, advertising','Marketing Pros','123 Market BD','Casablanca','+212 677-345709','info@marketingpros.com','Bachelors degree in Marketing or related field, experience in digital marketing','Health and dental insurance, paid time off, remote work options','2024-09-16 10:54:13'),(24,7,'Graphic Designer','Join our creative team as a Graphic Designer and bring ideas to life','11000','graphic design, creative','CreativeWorks Inc','234 Design Blvd','Tangier',NULL,'info@creativeworks.com','achelors degree in Graphic Design or related field, proficiency in Adobe Creative Suite','Flexible work hours, creative work environment, opportunities for growth','2024-09-16 12:19:26');