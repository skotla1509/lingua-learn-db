CREATE DATABASE  IF NOT EXISTS `language_learning` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `language_learning`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: language_learning
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `feedback_id` int NOT NULL AUTO_INCREMENT,
  `rating` decimal(3,2) NOT NULL,
  `comment` text,
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flashcard`
--

DROP TABLE IF EXISTS `flashcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flashcard` (
  `card_id` int NOT NULL AUTO_INCREMENT,
  `front_text` varchar(100) NOT NULL,
  `back_text` text NOT NULL,
  `deck_id` int NOT NULL,
  PRIMARY KEY (`card_id`),
  KEY `fk_flashcard_deck_id` (`deck_id`),
  CONSTRAINT `fk_flashcard_deck_id` FOREIGN KEY (`deck_id`) REFERENCES `flashcard_deck` (`deck_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flashcard`
--

LOCK TABLES `flashcard` WRITE;
/*!40000 ALTER TABLE `flashcard` DISABLE KEYS */;
/*!40000 ALTER TABLE `flashcard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flashcard_deck`
--

DROP TABLE IF EXISTS `flashcard_deck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flashcard_deck` (
  `deck_id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text,
  `language_id` int NOT NULL,
  PRIMARY KEY (`deck_id`),
  KEY `fk_flashcard_deck_language_id` (`language_id`),
  CONSTRAINT `fk_flashcard_deck_language_id` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flashcard_deck`
--

LOCK TABLES `flashcard_deck` WRITE;
/*!40000 ALTER TABLE `flashcard_deck` DISABLE KEYS */;
/*!40000 ALTER TABLE `flashcard_deck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language` (
  `language_id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_exchange_post`
--

DROP TABLE IF EXISTS `language_exchange_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_exchange_post` (
  `post_id` int NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `user_id` varchar(320) NOT NULL,
  `language_id` int NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `fk_language_exchange_post_user` (`user_id`),
  KEY `fk_language_exchange_post_language` (`language_id`),
  CONSTRAINT `fk_language_exchange_post_language` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_language_exchange_post_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_exchange_post`
--

LOCK TABLES `language_exchange_post` WRITE;
/*!40000 ALTER TABLE `language_exchange_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `language_exchange_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `learning`
--

DROP TABLE IF EXISTS `learning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `learning` (
  `user_id` varchar(320) NOT NULL,
  `language_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`language_id`),
  KEY `fk_learning_language` (`language_id`),
  CONSTRAINT `fk_learning_language` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_learning_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `learning`
--

LOCK TABLES `learning` WRITE;
/*!40000 ALTER TABLE `learning` DISABLE KEYS */;
/*!40000 ALTER TABLE `learning` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_fill_the_blank`
--

DROP TABLE IF EXISTS `question_fill_the_blank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question_fill_the_blank` (
  `que_id` int NOT NULL AUTO_INCREMENT,
  `text` varchar(300) NOT NULL,
  `ans` varchar(300) NOT NULL,
  `deck_id` int NOT NULL,
  PRIMARY KEY (`que_id`),
  KEY `fk_question_fill_the_blank_deck_id` (`deck_id`),
  CONSTRAINT `fk_question_fill_the_blank_deck_id` FOREIGN KEY (`deck_id`) REFERENCES `flashcard_deck` (`deck_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_fill_the_blank`
--

LOCK TABLES `question_fill_the_blank` WRITE;
/*!40000 ALTER TABLE `question_fill_the_blank` DISABLE KEYS */;
/*!40000 ALTER TABLE `question_fill_the_blank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_multiple_choice`
--

DROP TABLE IF EXISTS `question_multiple_choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question_multiple_choice` (
  `que_id` int NOT NULL AUTO_INCREMENT,
  `text` varchar(300) NOT NULL,
  `ans` varchar(300) NOT NULL,
  `option1` varchar(300) NOT NULL,
  `option2` varchar(300) NOT NULL,
  `option3` varchar(300) NOT NULL,
  `option4` varchar(300) NOT NULL,
  `deck_id` int NOT NULL,
  PRIMARY KEY (`que_id`),
  KEY `fk_question_multiple_choice_deck_id` (`deck_id`),
  CONSTRAINT `fk_question_multiple_choice_deck_id` FOREIGN KEY (`deck_id`) REFERENCES `flashcard_deck` (`deck_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_multiple_choice`
--

LOCK TABLES `question_multiple_choice` WRITE;
/*!40000 ALTER TABLE `question_multiple_choice` DISABLE KEYS */;
/*!40000 ALTER TABLE `question_multiple_choice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_true_or_false`
--

DROP TABLE IF EXISTS `question_true_or_false`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question_true_or_false` (
  `que_id` int NOT NULL AUTO_INCREMENT,
  `text` varchar(300) NOT NULL,
  `ans` varchar(300) NOT NULL,
  `deck_id` int NOT NULL,
  PRIMARY KEY (`que_id`),
  KEY `fk_question_true_or_false_deck_id` (`deck_id`),
  CONSTRAINT `fk_question_true_or_false_deck_id` FOREIGN KEY (`deck_id`) REFERENCES `flashcard_deck` (`deck_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_true_or_false`
--

LOCK TABLES `question_true_or_false` WRITE;
/*!40000 ALTER TABLE `question_true_or_false` DISABLE KEYS */;
/*!40000 ALTER TABLE `question_true_or_false` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_favorites`
--

DROP TABLE IF EXISTS `user_favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_favorites` (
  `user_id` varchar(320) NOT NULL,
  `deck_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`deck_id`),
  KEY `fk_user_favorites_deck` (`deck_id`),
  CONSTRAINT `fk_user_favorites_deck` FOREIGN KEY (`deck_id`) REFERENCES `flashcard_deck` (`deck_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user_favorites_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_favorites`
--

LOCK TABLES `user_favorites` WRITE;
/*!40000 ALTER TABLE `user_favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_feedback`
--

DROP TABLE IF EXISTS `user_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_feedback` (
  `user_id` varchar(320) NOT NULL,
  `deck_id` int NOT NULL,
  `feedback_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`deck_id`,`feedback_id`),
  KEY `fk_user_feedback_deck` (`deck_id`),
  KEY `fk_user_feedback_feedback` (`feedback_id`),
  CONSTRAINT `fk_user_feedback_deck` FOREIGN KEY (`deck_id`) REFERENCES `flashcard_deck` (`deck_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user_feedback_feedback` FOREIGN KEY (`feedback_id`) REFERENCES `feedback` (`feedback_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user_feedback_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_feedback`
--

LOCK TABLES `user_feedback` WRITE;
/*!40000 ALTER TABLE `user_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_practice_history`
--

DROP TABLE IF EXISTS `user_practice_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_practice_history` (
  `user_id` varchar(320) NOT NULL,
  `deck_id` int NOT NULL,
  `score_received` tinyint NOT NULL,
  PRIMARY KEY (`user_id`,`deck_id`),
  KEY `fk_user_practice_history_deck` (`deck_id`),
  CONSTRAINT `fk_user_practice_history_deck` FOREIGN KEY (`deck_id`) REFERENCES `flashcard_deck` (`deck_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user_practice_history_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_practice_history`
--

LOCK TABLES `user_practice_history` WRITE;
/*!40000 ALTER TABLE `user_practice_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_practice_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'language_learning'
--

--
-- Dumping routines for database 'language_learning'
--
/*!50003 DROP FUNCTION IF EXISTS `avg_rating_for_deck` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `avg_rating_for_deck`(
    p_deck_id INT
) RETURNS decimal(3,2)
    READS SQL DATA
    DETERMINISTIC
BEGIN
    DECLARE avg_rating DECIMAL(3,2);

    SELECT AVG(rating) INTO avg_rating
    FROM feedback f
    INNER JOIN user_feedback uf ON f.feedback_id = uf.feedback_id
    WHERE uf.deck_id = p_deck_id;

    RETURN avg_rating;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `check_favorite` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `check_favorite`(p_user_id VARCHAR(10), p_deck_id INT) RETURNS int
    READS SQL DATA
    DETERMINISTIC
BEGIN
    DECLARE result INT;
    SELECT COUNT(*) INTO result FROM user_favorites WHERE deck_id = p_deck_id AND user_id = p_user_id;
    RETURN result;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_learning` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_learning`(
	IN p_user_id VARCHAR(10),
	IN p_language_id INT
)
this_proc: BEGIN
	DECLARE message VARCHAR(255);
	DECLARE success INT DEFAULT 0;
	DECLARE exit handler for sqlexception
	BEGIN
		SELECT success, 'An error occurred while executing SQL statement' as message;
	END;
    
	-- Testing of arguments
	IF p_user_id IS NULL OR p_user_id = '' THEN
		SET message = 'User ID cannot be empty.';
		SELECT success, message;
		LEAVE this_proc;
	END IF;
    
	IF p_language_id IS NULL OR p_language_id = '' THEN
		SET message = 'Language ID cannot be empty.';
		SELECT success, message;
		LEAVE this_proc;
	END IF;
    
    BEGIN
		-- Insert values into table if it does not exist
		INSERT IGNORE INTO learning(user_id, language_id) 
			VALUES(p_user_id, p_language_id);
		-- Check if the insert affected any rows
		IF ROW_COUNT() > 0 THEN
			SELECT 1 as success, 'Learning added successfully' as message;
		ELSE
			SELECT 1 as success, 'Learning already exists' as message;
		END IF;
    END;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_new_feedback` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_new_feedback`(
    IN p_user_id VARCHAR(10),
    IN p_deck_id INT,
    IN p_rating DECIMAL(3,2),
    IN p_comment TEXT
)
this_proc: BEGIN
	DECLARE feedback_id INT;
	DECLARE message VARCHAR(255);
	DECLARE success INT DEFAULT 0;
	DECLARE exit handler for sqlexception
	BEGIN
		SELECT success, 'An error occurred while executing SQL statement' as message;
	END;
    
	-- Testing of arguments
	IF p_user_id IS NULL OR p_user_id = '' THEN
		SET message = 'User ID cannot be empty.';
		SELECT success, message;
		LEAVE this_proc;
	END IF;
    
	IF p_deck_id IS NULL OR p_deck_id = '' THEN
		SET message = 'Deck ID cannot be empty.';
		SELECT success, message;
		LEAVE this_proc;
	END IF;
    
	IF p_rating IS NULL OR p_rating = '' THEN
		SET message = 'Rating cannot be empty.';
		SELECT success, message;
		LEAVE this_proc;
	END IF;
    

	BEGIN
		-- Insert into the feedback table
		INSERT INTO feedback (rating, comment)
		VALUES (p_rating, p_comment);

		-- Get the last inserted feedback_id
		SELECT LAST_INSERT_ID() INTO feedback_id;
		
		-- Insert into the user_feedback table
		INSERT INTO user_feedback (user_id, deck_id, feedback_id)
		VALUES (p_user_id, p_deck_id, feedback_id);
		
		SELECT 1 as success, 'Feedback added successfully' as message;
		-- Select newly inserted post
		SELECT 
		  u.user_id, 
		  u.first_name, 
		  u.last_name, 
		  fd.name AS deck_name, 
		  f.rating, 
		  f.comment
		FROM 
		  user u
		  INNER JOIN user_feedback uf ON u.user_id = uf.user_id
		  INNER JOIN flashcard_deck fd ON uf.deck_id = fd.deck_id
		  INNER JOIN feedback f ON uf.feedback_id = f.feedback_id
		WHERE 
		  uf.user_id = p_user_id AND 
		  uf.deck_id = p_deck_id AND 
		  uf.feedback_id = feedback_id;
	END;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_language_exchange_post` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_language_exchange_post`(
	IN p_user_id VARCHAR(10),
    IN p_content TEXT,
    IN p_language_id INT
)
this_proc: BEGIN
	DECLARE message VARCHAR(255);
	DECLARE success INT DEFAULT 0;
	DECLARE exit handler for sqlexception
	BEGIN
		SELECT success, 'An error occurred while executing SQL statement' as message;
	END;
    
	-- Testing of arguments
	IF p_user_id IS NULL OR p_user_id = '' THEN
		SET message = 'User ID cannot be empty.';
		SELECT success, message;
		LEAVE this_proc;
	END IF;
    
	IF p_content IS NULL OR p_content = '' THEN
		SET message = 'Post content cannot be empty.';
		SELECT success, message;
		LEAVE this_proc;
	END IF;
    
	IF p_language_id IS NULL OR p_language_id = '' THEN
		SET message = 'Language ID cannot be empty.';
		SELECT success, message;
		LEAVE this_proc;
	END IF;
    
    BEGIN
		-- Insert values into table
		INSERT INTO language_exchange_post(user_id, content,language_id) 
			VALUES(p_user_id, p_content, p_language_id);
		SELECT 1 as success, 'Post created successfully' as message;
		
		-- Select newly inserted post
		SELECT lep.post_id, lep.content, u.user_id, u.first_name, u.last_name 
		FROM language_exchange_post lep
		JOIN user u ON lep.user_id = u.user_id 
		WHERE post_id = LAST_INSERT_ID();
	END;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_practice_history_for_deck` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_practice_history_for_deck`(
    IN p_user_id VARCHAR(10),
    IN p_deck_id INT,
    IN p_score INT
)
this_proc: BEGIN
	DECLARE message VARCHAR(255);
	DECLARE success INT DEFAULT 0;
	DECLARE exit handler for sqlexception
	BEGIN
		SELECT success, 'An error occurred while executing SQL statement' as message;
	END;
    
	-- Testing of arguments
	IF p_user_id IS NULL OR p_user_id = '' THEN
		SET message = 'User ID cannot be empty.';
		SELECT success, message;
		LEAVE this_proc;
	END IF;
    
    IF p_deck_id IS NULL OR p_deck_id = '' THEN
		SET message = 'Deck ID cannot be empty.';
		SELECT success, message;
		LEAVE this_proc;
	END IF;
    
    IF p_score IS NULL OR p_score = '' THEN
		SET message = 'Score cannot be empty.';
		SELECT success, message;
		LEAVE this_proc;
	END IF;
    
    BEGIN
		-- Check if entry already exists for user_id and deck_id
		IF EXISTS (SELECT * FROM user_practice_history WHERE user_id = p_user_id AND deck_id = p_deck_id) THEN
			-- Update score
			UPDATE user_practice_history SET score_received = p_score WHERE user_id = p_user_id AND deck_id = p_deck_id;
			SELECT 1 as success, 'Practice History updated successfully' as message;
		ELSE
			-- Insert values into table
			INSERT INTO user_practice_history (user_id, deck_id, score_received) VALUES (p_user_id, p_deck_id, p_score);
			SELECT 1 as success, 'Practice History added successfully' as message;
		END IF;
		
		-- Select newly inserted post
		SELECT * FROM user_practice_history WHERE user_id = p_user_id AND deck_id = p_deck_id;
    END;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_user`(
    IN p_user_id VARCHAR(10),
    IN p_password VARCHAR(10),
    IN p_first_name VARCHAR(50),
    IN p_last_name VARCHAR(50)
)
this_proc: BEGIN
    DECLARE message VARCHAR(255);
    DECLARE success INT DEFAULT 0;
    DECLARE exit handler for sqlexception
	BEGIN
		SELECT success, 'An error occurred while executing SQL statement' as message;
	END;
    
    -- Testing of arguments
    IF p_user_id IS NULL OR p_user_id = '' THEN
        SET message = 'User ID cannot be empty.';
        SELECT success, message;
        LEAVE this_proc;
    END IF;
    
    IF p_password IS NULL OR p_password = '' THEN
        SET message = 'Password cannot be empty.';
        SELECT success, message;
        LEAVE this_proc;
    END IF;
    
    IF p_first_name IS NULL OR p_first_name = '' THEN
        SET message = 'First name cannot be empty.';
        SELECT success, message;
        LEAVE this_proc;
    END IF;
    
    IF p_last_name IS NULL OR p_last_name = '' THEN
        SET message = 'Last name cannot be empty.';
        SELECT success, message;
        LEAVE this_proc;
    END IF;

    BEGIN
        -- Insert values into table
        INSERT INTO user(user_id, password, first_name, last_name) 
            VALUES(p_user_id, p_password, p_first_name, p_last_name);
        SET success = 1;
    END;

    SELECT success, 'User created successfully' as message;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_language_exchange_post` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_language_exchange_post`(
    IN p_post_id INT
)
this_proc: BEGIN
	DECLARE message VARCHAR(255);
	DECLARE success INT DEFAULT 0;
	DECLARE exit handler for sqlexception
	BEGIN
		SELECT success, 'An error occurred while executing SQL statement' as message;
	END;
    
	-- Testing of arguments
	IF p_post_id IS NULL OR p_post_id = '' THEN
		SET message = 'Post ID cannot be empty.';
		SELECT success, message;
		LEAVE this_proc;
	END IF;
    
	BEGIN
		-- Insert values into table
		DELETE FROM language_exchange_post WHERE post_id = p_post_id;
        IF ROW_COUNT() > 0 THEN
			SELECT 1 as success, 'Post deleted successfully' as message;
		ELSE
			SELECT 0 as success, 'Post not found' as message;
		END IF;
    END;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_all_cards_by_deck` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_all_cards_by_deck`(
IN p_deck_id INT
)
this_proc: BEGIN
	DECLARE message VARCHAR(255);
	DECLARE success INT DEFAULT 0;
	DECLARE exit handler for sqlexception
	BEGIN
		SELECT success, 'An error occurred while executing SQL statement' as message;
	END;
    
	-- Testing of arguments
	IF p_deck_id IS NULL OR p_deck_id = '' THEN
		SET message = 'Deck ID cannot be empty.';
		SELECT success, message;
		LEAVE this_proc;
	END IF;
    
    BEGIN
		-- Select all languages
		SELECT 1 as success, 'Query successful' as message;
		-- Select all posts by language
		SELECT * FROM flashcard WHERE deck_id = p_deck_id;
    END;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_all_decks_by_language` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_all_decks_by_language`(
IN p_language_id INT
)
this_proc: BEGIN
	DECLARE message VARCHAR(255);
	DECLARE success INT DEFAULT 0;
	DECLARE exit handler for sqlexception
	BEGIN
		SELECT success, 'An error occurred while executing SQL statement' as message;
	END;
    
	-- Testing of arguments
	IF p_language_id IS NULL OR p_language_id = '' THEN
		SET message = 'Language ID cannot be empty.';
		SELECT success, message;
		LEAVE this_proc;
	END IF;
    
    BEGIN
		-- Select all languages
		SELECT 1 as success, 'Query successful' as message;
		-- Select all languages
		SELECT * FROM flashcard_deck WHERE language_id = p_language_id;
    END;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_all_languages` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_all_languages`()
BEGIN
	DECLARE exit handler for sqlexception
	BEGIN
		SELECT 0 as success, 'An error occurred while executing SQL statement' as message;
	END;
    
	-- Select all languages
    SELECT 1 as success, 'Query successful' as message;
    SELECT * FROM language;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_all_posts_by_language` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_all_posts_by_language`(
IN p_language_id INT
)
this_proc: BEGIN
	DECLARE message VARCHAR(255);
	DECLARE success INT DEFAULT 0;
	DECLARE exit handler for sqlexception
	BEGIN
		SELECT success, 'An error occurred while executing SQL statement' as message;
	END;
    
	-- Testing of arguments
	IF p_language_id IS NULL OR p_language_id = '' THEN
		SET message = 'Language ID cannot be empty.';
		SELECT success, message;
		LEAVE this_proc;
	END IF;
    
    BEGIN
		SELECT 1 as success, 'Query successful' as message;
		-- Select all posts by language
		SELECT lep.post_id, lep.content, u.user_id, u.first_name, u.last_name 
		FROM language_exchange_post lep
		JOIN user u ON lep.user_id = u.user_id 
		WHERE lep.language_id = p_language_id;
	END;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_all_questions_by_deck` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_all_questions_by_deck`(
IN p_deck_id INT
)
this_proc: BEGIN
	DECLARE message VARCHAR(255);
	DECLARE success INT DEFAULT 0;
	DECLARE exit handler for sqlexception
	BEGIN
		SELECT success, 'An error occurred while executing SQL statement' as message;
	END;
    
	-- Testing of arguments
	IF p_deck_id IS NULL OR p_deck_id = '' THEN
		SET message = 'Deck ID cannot be empty.';
		SELECT success, message;
		LEAVE this_proc;
	END IF;
    
    BEGIN
		SELECT 1 as success, 'Query successful' as message;
		-- Select all posts by language	
			SELECT 'MCQ' AS "type", qmc.que_id, qmc.text, qmc.ans, qmc.option1, qmc.option2, qmc.option3, qmc.option4
			FROM question_multiple_choice qmc
			WHERE qmc.deck_id = p_deck_id
		UNION
			SELECT 'FIB' AS "type", qfib.que_id, qfib.text, qfib.ans, null AS option1, null AS option2, null AS option3, null AS option4
			FROM question_fill_the_blank qfib
			WHERE qfib.deck_id = p_deck_id
		UNION
			SELECT 'TF' AS "type", qtf.que_id, qtf.text, qtf.ans, null AS option1, null AS option2, null AS option3, null AS option4
			FROM question_true_or_false qtf
			WHERE qtf.deck_id = p_deck_id;
	END;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_feedback_of_deck` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_feedback_of_deck`(
    IN p_deck_id INT
)
this_proc: BEGIN
	DECLARE message VARCHAR(255);
	DECLARE success INT DEFAULT 0;
	DECLARE exit handler for sqlexception
	BEGIN
		SELECT success, 'An error occurred while executing SQL statement' as message;
	END;
    
	-- Testing of arguments
	IF p_deck_id IS NULL OR p_deck_id = '' THEN
		SET message = 'Deck ID cannot be empty.';
		SELECT success, message;
		LEAVE this_proc;
	END IF;
    
    BEGIN
		SELECT 1 as success, 'Query successful' as message;
		SELECT 
		  u.user_id, 
		  u.first_name, 
		  u.last_name, 
		  fd.name AS deck_name, 
		  f.rating, 
		  f.comment
		FROM 
		  user u
		  INNER JOIN user_feedback uf ON u.user_id = uf.user_id
		  INNER JOIN flashcard_deck fd ON uf.deck_id = fd.deck_id
		  INNER JOIN feedback f ON uf.feedback_id = f.feedback_id
		WHERE 
		  uf.deck_id = p_deck_id;
	END;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_languages_of_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_languages_of_user`(
	IN p_user_id VARCHAR(10)
)
this_proc: BEGIN
	DECLARE message VARCHAR(255);
	DECLARE success INT DEFAULT 0;
	DECLARE exit handler for sqlexception
	BEGIN
		SELECT success, 'An error occurred while executing SQL statement' as message;
	END;
    
	-- Testing of arguments
	IF p_user_id IS NULL OR p_user_id = '' THEN
		SET message = 'User ID cannot be empty.';
		SELECT success, message;
		LEAVE this_proc;
	END IF;
    
    BEGIN
		SELECT 1 as success, 'Query successful' as message;
		-- Select all languages by user_id
		SELECT  la.name
			FROM learning le
			JOIN language la ON le.language_id = la.language_id
			JOIN user u ON le.user_id = u.user_id
			WHERE le.user_id = p_user_id;
	END;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_user_by_credentials` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_user_by_credentials`(
	IN p_user_id VARCHAR(10),
    IN p_password VARCHAR(10)
)
this_proc: BEGIN
	DECLARE message VARCHAR(255);
	DECLARE success INT DEFAULT 0;
    DECLARE exit handler for sqlexception
	BEGIN
		SELECT success, 'An error occurred while executing SQL statement' as message;
	END;
	
	-- Testing of arguments
	IF p_user_id IS NULL OR p_user_id = '' THEN
		SET message = 'User ID cannot be empty.';
		SELECT success, message;
		LEAVE this_proc;
	END IF;
    
	IF p_password IS NULL OR p_password = '' THEN
		SET message = 'Password cannot be empty.';
		SELECT success, message;
		LEAVE this_proc;
	END IF;
    
    BEGIN
		-- Select user by user_id, password
		SET success = 1;
        SELECT success, 'User Found' as message;
		SELECT * FROM user WHERE user_id = p_user_id AND password = p_password;
	END;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_user_by_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_user_by_id`(
	IN p_user_id VARCHAR(10)
)
this_proc: BEGIN
	DECLARE message VARCHAR(255);
	DECLARE success INT DEFAULT 0;
    DECLARE exit handler for sqlexception
	BEGIN
		SELECT success, 'An error occurred while executing SQL statement' as message;
	END;
	
	-- Testing of arguments
	IF p_user_id IS NULL OR p_user_id = '' THEN
		SET message = 'User ID cannot be empty.';
		SELECT success, message;
		LEAVE this_proc;
	END IF;

	BEGIN
		-- Select user by user_id
		SET success = 1;
        SELECT success, 'User Found' as message;
        SELECT * FROM user WHERE user_id = p_user_id;
	END;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_user_flashcard_stats` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_user_flashcard_stats`(
	IN p_user_id VARCHAR(320)
)
this_proc: BEGIN
	DECLARE message VARCHAR(255);
	DECLARE success INT DEFAULT 0;
	DECLARE exit handler for sqlexception
	BEGIN
		SELECT success, 'An error occurred while executing SQL statement' as message;
	END;
    
	-- Testing of arguments
	IF p_user_id IS NULL OR p_user_id = '' THEN
		SET message = 'User ID cannot be empty.';
		SELECT success, message;
		LEAVE this_proc;
	END IF;
    
    BEGIN
		SELECT 1 as success, 'Query successful' as message;
		SELECT la.name as language_name, AVG(h.score_received) as avg_score
		FROM learning l
		JOIN flashcard_deck d ON l.language_id = d.language_id
		JOIN language la ON l.language_id = la.language_id
		JOIN user_practice_history h ON d.deck_id = h.deck_id
		WHERE l.user_id = p_user_id AND h.user_id = p_user_id
		GROUP BY l.language_id, d.deck_id;
    END;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `mark_unmark_favorite_deck_for_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `mark_unmark_favorite_deck_for_user`(
    IN p_user_id VARCHAR(10),
    IN p_deck_id INT
)
this_proc: BEGIN
	DECLARE message VARCHAR(255);
	DECLARE success INT DEFAULT 0;
	DECLARE exit handler for sqlexception
	BEGIN
		SELECT success, 'An error occurred while executing SQL statement' as message;
	END;
    
	-- Testing of arguments
	IF p_user_id IS NULL OR p_user_id = '' THEN
		SET message = 'User ID cannot be empty.';
		SELECT success, message;
		LEAVE this_proc;
	END IF;
    
    IF p_deck_id IS NULL OR p_deck_id = '' THEN
		SET message = 'Deck ID cannot be empty.';
		SELECT success, message;
		LEAVE this_proc;
	END IF;
    
    BEGIN
		-- Check if entry already exists for user_id and deck_id
		IF EXISTS (SELECT * FROM user_favorites WHERE user_id = p_user_id AND deck_id = p_deck_id) THEN
			-- Delete entry
			DELETE FROM user_favorites WHERE user_id = p_user_id AND deck_id = p_deck_id;
			SELECT 1 as success, 'Unmarked favorite successfully' as message;
		ELSE
			-- Insert entry
			INSERT INTO user_favorites (user_id, deck_id) VALUES (p_user_id, p_deck_id);
			SELECT 1 as success, 'Marked favorite successfully' as message;
		END IF;
    END;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `stop_learning_language` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `stop_learning_language`(
    IN p_user_id VARCHAR(10), 
    IN p_language_id INT
)
this_proc: BEGIN
	DECLARE message VARCHAR(255);
	DECLARE success INT DEFAULT 0;
	DECLARE exit handler for sqlexception
	BEGIN
		SELECT success, 'An error occurred while executing SQL statement' as message;
	END;
    
	-- Testing of arguments
	IF p_user_id IS NULL OR p_user_id = '' THEN
		SET message = 'User ID cannot be empty.';
		SELECT success, message;
		LEAVE this_proc;
	END IF;
    
	IF p_language_id IS NULL OR p_language_id = '' THEN
		SET message = 'Language ID cannot be empty.';
		SELECT success, message;
		LEAVE this_proc;
	END IF;
    
    BEGIN
		-- Create temporary table to store deck_ids
		CREATE TEMPORARY TABLE temp_deck_ids AS SELECT deck_id FROM flashcard_deck WHERE language_id = p_language_id;
		
		-- Delete entry from learning table
		DELETE FROM learning WHERE user_id = p_user_id AND language_id = p_language_id;
		
		-- Delete entry from user_favorite for all decks related to language_id
		DELETE FROM user_favorites WHERE user_id = p_user_id AND deck_id IN (SELECT deck_id FROM temp_deck_ids);
		
		-- Delete entry from feedback table for matching feedback_id
		DELETE FROM feedback WHERE feedback_id IN (SELECT feedback_id FROM user_feedback WHERE user_id = p_user_id AND deck_id IN (SELECT deck_id FROM temp_deck_ids));
		
		-- Delete entry from user_practice_history for all decks related to language_id
		DELETE FROM user_practice_history WHERE user_id = p_user_id AND deck_id IN (SELECT deck_id FROM temp_deck_ids);
		
		-- Delete entry from language_exchange_post for all posts related to language_id
		DELETE FROM language_exchange_post WHERE user_id = p_user_id AND language_id = p_language_id;
		
		-- Drop temporary table
		DROP TEMPORARY TABLE IF EXISTS temp_deck_ids;
		SELECT 1 as success, 'End learning succesfully' as message;
    END;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_user_password` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_user_password`(
  IN p_user_id VARCHAR(10),
  IN p_password VARCHAR(10)
)
this_proc: BEGIN
	DECLARE message VARCHAR(255);
	DECLARE success INT DEFAULT 0;
	DECLARE exit handler for sqlexception
	BEGIN
		SELECT success, 'An error occurred while executing SQL statement' as message;
	END;
    
	-- Testing of arguments
	IF p_user_id IS NULL OR p_user_id = '' THEN
		SET message = 'User ID cannot be empty.';
		SELECT success, message;
		LEAVE this_proc;
	END IF;
    
	IF p_password IS NULL OR p_password = '' THEN
		SET message = 'Password cannot be empty.';
		SELECT success, message;
		LEAVE this_proc;
	END IF;
    
    BEGIN
		-- Update user password
		UPDATE user SET password = p_password WHERE user_id = p_user_id;
		SELECT 1 as success, 'User updated successfully' as message;
    END;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-21 22:14:11
