-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: XXXXXXXXXXXXXXXXXX.XXXXXXXXXXX.xx    Database: XXXXXXXXXXXXXXX
-- ------------------------------------------------------
-- Server version	X.X.X

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
-- Table structure for table `cmn_application_config`
--

DROP TABLE IF EXISTS `cmn_application_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cmn_application_config` (
  `application_config_id` int NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for the application config entry',
  `created_by` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LERN_DATABASE' COMMENT 'User or system that created this log entry',
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the log entry was created',
  `last_updated_by` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT 'LERN_DATABASE' COMMENT 'User or system that last updated this log entry',
  `last_update_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp when the log entry was last updated',
  `config_key_code` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Config key code for application config',
  `config_key_name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Config key name for application config',
  `config_value` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Config value for application config',
  `description` text COLLATE utf8mb4_unicode_ci COMMENT 'Description for application config',
  `environment` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Environment for application config',
  `module` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Module for application config',
  `active_flag` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Active flag for application config',
  `char_1` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Char 1 placeholder for application config',
  `char_2` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Char 2 placeholder for application config',
  `char_3` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Char 3 placeholder for application config',
  `char_4` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Char 4 placeholder for application config',
  `char_5` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Char 5 placeholder for application config',
  `number_1` int DEFAULT NULL COMMENT 'Number 1 placeholder for application config',
  `number_2` int DEFAULT NULL COMMENT 'Number 2 placeholder for application config',
  `number_3` int DEFAULT NULL COMMENT 'Number 3 placeholder for application config',
  `number_4` int DEFAULT NULL COMMENT 'Number 4 placeholder for application config',
  `number_5` int DEFAULT NULL COMMENT 'Number 5 placeholder for application config',
  `text_1` text COLLATE utf8mb4_unicode_ci COMMENT 'Text 1 placeholder for application config',
  `text_2` text COLLATE utf8mb4_unicode_ci COMMENT 'Text 2 placeholder for application config',
  `text_3` text COLLATE utf8mb4_unicode_ci COMMENT 'Text 3 placeholder for application config',
  `text_4` text COLLATE utf8mb4_unicode_ci COMMENT 'Text 4 placeholder for application config',
  `text_5` text COLLATE utf8mb4_unicode_ci COMMENT 'Text 5 placeholder for application config',
  PRIMARY KEY (`application_config_id`),
  UNIQUE KEY `idx_cmn_application_config_unique_config_key_code` (`config_key_code`),
  UNIQUE KEY `idx_cmn_application_config_unique_config_key_name` (`config_key_name`),
  KEY `idx_cmn_application_config_environment` (`environment`),
  KEY `idx_cmn_application_config_module` (`module`),
  CONSTRAINT `cmn_application_config_chk_1` CHECK ((`active_flag` in (_utf8mb4'Y',_utf8mb4'N')))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmn_logs`
--

DROP TABLE IF EXISTS `cmn_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cmn_logs` (
  `log_id` int NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for the log entry',
  `created_by` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LERN_DATABASE' COMMENT 'User or system that created this log entry',
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the log entry was created',
  `last_updated_by` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT 'LERN_DATABASE' COMMENT 'User or system that last updated this log entry',
  `last_update_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp when the log entry was last updated',
  `log_level` int NOT NULL COMMENT 'Log level (1-5) indicating severity',
  `session_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Session ID associated with the log entry',
  `session_user` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Session user (username) associated with the log entry',
  `log_environment` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The environment where the log entry was generated (e.g., production, staging)',
  `log_module` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The module where the log entry originated (e.g., user, auth)',
  `log_sub_module` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'The sub-module where the log entry originated, if applicable',
  `log_message_1` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Main message describing the log entry',
  `log_message_2` text COLLATE utf8mb4_unicode_ci COMMENT 'Secondary message providing additional context, if applicable',
  `log_message_3` text COLLATE utf8mb4_unicode_ci COMMENT 'Tertiary message providing further context, if applicable',
  `log_message_4` text COLLATE utf8mb4_unicode_ci COMMENT 'Additional message providing further details, if applicable',
  `log_message_5` text COLLATE utf8mb4_unicode_ci COMMENT 'Extra message providing any other context, if applicable',
  `stack` text COLLATE utf8mb4_unicode_ci COMMENT 'Stack trace information, if available, to diagnose errors',
  `app_version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Version of the application that generated the log entry',
  PRIMARY KEY (`log_id`),
  KEY `idx_cmn_logs_log_level` (`log_level`),
  KEY `idx_cmn_logs_session_id` (`session_id`),
  KEY `idx_cmn_logs_session_user` (`session_user`),
  KEY `idx_cmn_logs_log_environment` (`log_environment`),
  KEY `idx_cmn_logs_log_module` (`log_module`),
  KEY `idx_cmn_logs_log_sub_module` (`log_sub_module`),
  CONSTRAINT `cmn_logs_chk_1` CHECK ((`log_level` in (1,2,3,4,5)))
) ENGINE=InnoDB AUTO_INCREMENT=1454 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Table to store application logs with various levels of detail for debugging and tracking';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `cmn_logs_v`
--

DROP TABLE IF EXISTS `cmn_logs_v`;
/*!50001 DROP VIEW IF EXISTS `cmn_logs_v`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cmn_logs_v` AS SELECT 
 1 AS `log_id`,
 1 AS `log_level`,
 1 AS `session_id`,
 1 AS `session_user`,
 1 AS `log_environment`,
 1 AS `log_module`,
 1 AS `log_sub_module`,
 1 AS `log_message_1`,
 1 AS `log_message_2`,
 1 AS `log_message_3`,
 1 AS `log_message_4`,
 1 AS `log_message_5`,
 1 AS `stack`,
 1 AS `app_version`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cmn_parties`
--

DROP TABLE IF EXISTS `cmn_parties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cmn_parties` (
  `party_id` int NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for the party',
  `created_by` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LERN_DATABASE' COMMENT 'User who created this record',
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the user was created',
  `last_updated_by` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'LERN_DATABASE' COMMENT 'User who last updated this record',
  `last_update_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp when the user was last updated',
  `party_name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Partyname for the user',
  `email_address` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'E-mail address for the party',
  `active_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Active flag for the party. Can be Y or N',
  PRIMARY KEY (`party_id`),
  UNIQUE KEY `idx_cmn_parties_unique_party_name` (`party_name`),
  UNIQUE KEY `idx_cmn_parties_unique_email_address` (`email_address`),
  CONSTRAINT `cmn_parties_chk_1` CHECK ((`active_flag` in (_utf8mb4'Y',_utf8mb4'N')))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Table to store party data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmn_user_sessions`
--

DROP TABLE IF EXISTS `cmn_user_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cmn_user_sessions` (
  `user_session_id` int NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for the user session',
  `created_by` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LERN_DATABASE' COMMENT 'User who created this record',
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the user was created',
  `last_updated_by` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT 'LERN_DATABASE' COMMENT 'User who last updated this record',
  `last_update_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp when the user was last updated',
  `user_id` int NOT NULL COMMENT 'User ID for the user session. Foreign key from cmn_users',
  `session_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Session ID for the user session',
  `session_duration_min` int NOT NULL COMMENT 'Session duration in mintues for the user session',
  `active_flag` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Active flag for the user sessions. Can be Y or N',
  `session_start` timestamp NOT NULL COMMENT 'Session start for the user session',
  `session_end` datetime DEFAULT NULL COMMENT 'Session end for the user session',
  PRIMARY KEY (`user_session_id`),
  UNIQUE KEY `idx_cmn_user_sessions_unique_session_id` (`session_id`),
  UNIQUE KEY `idx_cmn_user_sessions_user_id` (`user_id`),
  CONSTRAINT `cmn_user_sessions_users_fk` FOREIGN KEY (`user_id`) REFERENCES `cmn_users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cmn_user_sessions_chk_1` CHECK ((`active_flag` in (_utf8mb4'Y',_utf8mb4'N')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Table to store sessions of users';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cmn_users`
--

DROP TABLE IF EXISTS `cmn_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cmn_users` (
  `user_id` int NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for the user',
  `created_by` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LERN_DATABASE' COMMENT 'User who created this record',
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the user was created',
  `last_updated_by` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT 'LERN_DATABASE' COMMENT 'User who last updated this record',
  `last_update_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp when the user was last updated',
  `party_id` int NOT NULL COMMENT 'Party ID for the user. Foreign key from cmn_parties',
  `user_name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Username for the user',
  `password` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Hashed password for the user (scrypt)',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `idx_cmn_users_unique_party_id` (`party_id`),
  UNIQUE KEY `idx_cmn_users_unique_user_name` (`user_name`),
  KEY `idx_cmn_users_password` (`password`),
  CONSTRAINT `cmn_users_parties_fk` FOREIGN KEY (`party_id`) REFERENCES `cmn_parties` (`party_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Table to store user data including authentication details';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `data_flash_cards`
--

DROP TABLE IF EXISTS `data_flash_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_flash_cards` (
  `flash_card_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for the flashcard',
  `created_by` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LERN_DATABASE' COMMENT 'User who created this record',
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the user was created',
  `last_updated_by` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT 'LERN_DATABASE' COMMENT 'User who last updated this record',
  `last_update_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp when the user was last updated',
  `flash_card_sub_category_id` int NOT NULL COMMENT 'Sub category id for the flash card',
  `title` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Title for the flash card',
  `front_content` json NOT NULL COMMENT 'Front side content for the flash card',
  `back_content` json NOT NULL COMMENT 'Back side content for the flash card',
  PRIMARY KEY (`flash_card_id`),
  KEY `idx_data_flash_cards_flash_card_sub_category_id` (`flash_card_sub_category_id`),
  KEY `idx_data_flash_cards_title` (`title`),
  CONSTRAINT `data_flash_cards_sub_categories_fk` FOREIGN KEY (`flash_card_sub_category_id`) REFERENCES `data_flash_cards_sub_categories` (`flash_card_sub_category_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Table to store flash cards data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `data_flash_cards_categories`
--

DROP TABLE IF EXISTS `data_flash_cards_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_flash_cards_categories` (
  `flash_card_category_id` int NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for the flashcard category',
  `created_by` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LERN_DATABASE' COMMENT 'User who created this record',
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the user was created',
  `last_updated_by` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT 'LERN_DATABASE' COMMENT 'User who last updated this record',
  `last_update_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp when the user was last updated',
  `flash_card_topic_id` int NOT NULL COMMENT 'Flash card topic id for the flash card category. Foreign key from data_flash_cards_topics',
  `category_name` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name for the flash card category',
  PRIMARY KEY (`flash_card_category_id`),
  KEY `idx_data_flash_cards_categories_flash_card_topic_id` (`flash_card_topic_id`),
  KEY `idx_data_flash_cards_categories_category_name` (`category_name`),
  CONSTRAINT `data_flash_cards_categories_flash_cards_topics_fk` FOREIGN KEY (`flash_card_topic_id`) REFERENCES `data_flash_cards_topics` (`flash_card_topic_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Table to store flash cards categories data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `data_flash_cards_file_paths`
--

DROP TABLE IF EXISTS `data_flash_cards_file_paths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_flash_cards_file_paths` (
  `flash_card_file_path_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for the flash card file path',
  `created_by` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LERN_DATABASE' COMMENT 'User who created this record',
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the user was created',
  `last_updated_by` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT 'LERN_DATABASE' COMMENT 'User who last updated this record',
  `last_update_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp when the user was last updated',
  `flash_card_id` bigint NOT NULL COMMENT 'Flash card id for the flash card file path',
  `file_path` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'File path for the flash card file path',
  PRIMARY KEY (`flash_card_file_path_id`),
  KEY `idx_data_flash_cards_file_paths_flash_card_id` (`flash_card_id`),
  CONSTRAINT `data_flash_cards_file_paths_flash_cards_fk` FOREIGN KEY (`flash_card_id`) REFERENCES `data_flash_cards` (`flash_card_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Table to store flash card file paths data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `data_flash_cards_sub_categories`
--

DROP TABLE IF EXISTS `data_flash_cards_sub_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_flash_cards_sub_categories` (
  `flash_card_sub_category_id` int NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for the flashcard sub category',
  `created_by` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LERN_DATABASE' COMMENT 'User who created this record',
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the user was created',
  `last_updated_by` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT 'LERN_DATABASE' COMMENT 'User who last updated this record',
  `last_update_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp when the user was last updated',
  `flash_card_category_id` int NOT NULL COMMENT 'Flash card category id for the flash card sub category. Foreign key from data_flash_card_categories',
  `sub_category_name` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name for the flash card sub category',
  PRIMARY KEY (`flash_card_sub_category_id`),
  KEY `idx_data_flash_cards_sub_categories_flash_card_category_id` (`flash_card_category_id`),
  KEY `idx_data_flash_cards_sub_categories_sub_category_name` (`sub_category_name`),
  CONSTRAINT `data_flash_cards_sub_categories_flash_cards_categories_fk` FOREIGN KEY (`flash_card_category_id`) REFERENCES `data_flash_cards_categories` (`flash_card_category_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Table to store flash cards sub categories data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `data_flash_cards_topics`
--

DROP TABLE IF EXISTS `data_flash_cards_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_flash_cards_topics` (
  `flash_card_topic_id` int NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for the flashcard topic',
  `created_by` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LERN_DATABASE' COMMENT 'User who created this record',
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the user was created',
  `last_updated_by` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT 'LERN_DATABASE' COMMENT 'User who last updated this record',
  `last_update_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp when the user was last updated',
  `topic_name` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name for the flash card topic',
  `description` text COLLATE utf8mb4_unicode_ci COMMENT 'Description for the flash card topic',
  `user_id` int NOT NULL COMMENT 'Id of the user who created the flash card topic',
  `public_flag` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Public flag for flash card topic',
  PRIMARY KEY (`flash_card_topic_id`),
  KEY `idx_data_flash_cards_topics_topic_name` (`topic_name`),
  KEY `data_flash_cards_topics_users_fk` (`user_id`),
  CONSTRAINT `data_flash_cards_topics_users_fk` FOREIGN KEY (`user_id`) REFERENCES `cmn_users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `data_flash_cards_topics_chk_1` CHECK ((`public_flag` in (_utf8mb4'Y',_utf8mb4'N')))
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Table to store flash cards topics data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `data_user_profiles`
--

DROP TABLE IF EXISTS `data_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_user_profiles` (
  `user_profile_id` int NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for the users profile',
  `created_by` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LERN_DATABASE' COMMENT 'User who created this record',
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the user was created',
  `last_updated_by` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT 'LERN_DATABASE' COMMENT 'User who last updated this record',
  `last_update_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Timestamp when the user was last updated',
  `user_id` int NOT NULL COMMENT 'User ID for the users profile. Foreign key from cmn_users',
  PRIMARY KEY (`user_profile_id`),
  UNIQUE KEY `idx_data_user_profiles_unique_user_id` (`user_id`),
  CONSTRAINT `data_user_profiles_users_fk` FOREIGN KEY (`user_id`) REFERENCES `cmn_users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Table to store user profile data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Final view structure for view `cmn_logs_v`
--

/*!50001 DROP VIEW IF EXISTS `cmn_logs_v`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`lern_database`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cmn_logs_v` AS select `l`.`log_id` AS `log_id`,(case when (`l`.`log_level` = 1) then 'TRACE' when (`l`.`log_level` = 2) then 'INFO' when (`l`.`log_level` = 3) then 'WARNING' when (`l`.`log_level` = 4) then 'ERROR' when (`l`.`log_level` = 5) then 'CRITICAL' end) AS `log_level`,`l`.`session_id` AS `session_id`,`l`.`session_user` AS `session_user`,`l`.`log_environment` AS `log_environment`,`l`.`log_module` AS `log_module`,`l`.`log_sub_module` AS `log_sub_module`,`l`.`log_message_1` AS `log_message_1`,`l`.`log_message_2` AS `log_message_2`,`l`.`log_message_3` AS `log_message_3`,`l`.`log_message_4` AS `log_message_4`,`l`.`log_message_5` AS `log_message_5`,`l`.`stack` AS `stack`,`l`.`app_version` AS `app_version` from `cmn_logs` `l` order by `l`.`log_id` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on XXXX-XX-XX XX:XX:XX
