/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 10.4.8-MariaDB : Database - creoitco_bitcoincards2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`creoitco_bitcoincards2` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `creoitco_bitcoincards2`;

/*Table structure for table `activity_logs` */

DROP TABLE IF EXISTS `activity_logs`;

CREATE TABLE `activity_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type` enum('Admin','User') NOT NULL,
  `ip_address` varchar(191) NOT NULL,
  `browser_agent` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activity_logs_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

/*Data for the table `activity_logs` */

insert  into `activity_logs`(`id`,`user_id`,`type`,`ip_address`,`browser_agent`,`created_at`,`updated_at`) values 
(1,1,'Admin','77.119.131.153','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36','2021-02-27 19:12:06','2021-02-27 19:12:06'),
(2,1,'User','77.119.131.153','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4421.0 Safari/537.36 Edg/90.0.810.0','2021-02-27 19:23:50','2021-02-27 19:23:50'),
(3,2,'User','77.119.131.153','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4421.0 Safari/537.36 Edg/90.0.810.0','2021-02-27 20:00:39','2021-02-27 20:00:39'),
(4,2,'User','77.119.131.153','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4421.0 Safari/537.36 Edg/90.0.810.0','2021-02-27 22:23:10','2021-02-27 22:23:10'),
(5,3,'User','77.119.131.153','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4421.0 Safari/537.36 Edg/90.0.810.0','2021-02-27 23:47:58','2021-02-27 23:47:58'),
(6,1,'Admin','91.141.0.191','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36','2021-02-28 14:03:10','2021-02-28 14:03:10'),
(7,4,'User','188.43.235.177','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36','2021-03-02 08:32:01','2021-03-02 08:32:01'),
(8,4,'User','188.43.235.177','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36','2021-03-02 08:32:44','2021-03-02 08:32:44'),
(9,4,'User','188.43.235.177','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.190 Safari/537.36','2021-03-02 20:37:56','2021-03-02 20:37:56'),
(10,4,'User','178.113.93.66','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36','2021-03-26 12:36:46','2021-03-26 12:36:46'),
(11,4,'User','178.113.93.66','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36','2021-03-26 12:58:53','2021-03-26 12:58:53'),
(12,3,'User','178.113.93.66','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36','2021-03-26 13:00:56','2021-03-26 13:00:56'),
(13,1,'Admin','178.113.93.66','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36','2021-03-26 13:02:39','2021-03-26 13:02:39'),
(14,4,'User','178.113.93.66','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36','2021-03-26 18:16:26','2021-03-26 18:16:26'),
(15,4,'User','188.43.235.177','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36','2021-03-26 18:19:05','2021-03-26 18:19:05'),
(16,2,'Admin','178.113.93.66','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36','2021-03-26 18:19:57','2021-03-26 18:19:57'),
(17,4,'User','188.43.235.177','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36','2021-03-27 18:52:06','2021-03-27 18:52:06'),
(18,4,'User','188.43.235.177','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36','2021-03-29 15:07:06','2021-03-29 15:07:06'),
(19,4,'User','188.43.235.177','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36','2021-03-31 21:57:16','2021-03-31 21:57:16'),
(20,4,'User','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36','2021-04-01 06:22:30','2021-04-01 06:22:30'),
(21,4,'User','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36','2021-04-01 23:09:19','2021-04-01 23:09:19'),
(22,4,'User','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36','2021-04-02 08:10:11','2021-04-02 08:10:11'),
(23,4,'User','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36','2021-04-02 12:51:20','2021-04-02 12:51:20'),
(24,4,'User','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36','2021-04-02 21:21:17','2021-04-02 21:21:17'),
(25,4,'User','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36','2021-04-07 06:29:23','2021-04-07 06:29:23'),
(26,4,'User','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36','2021-04-07 15:22:12','2021-04-07 15:22:12'),
(27,3,'Admin','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36','2021-04-07 15:22:40','2021-04-07 15:22:40'),
(28,3,'Admin','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36','2021-04-08 15:48:32','2021-04-08 15:48:32'),
(29,3,'Admin','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36','2021-04-08 19:34:39','2021-04-08 19:34:39'),
(30,3,'Admin','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36','2021-04-09 13:49:49','2021-04-09 13:49:49'),
(31,4,'User','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36','2021-04-09 15:44:51','2021-04-09 15:44:51'),
(32,4,'User','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36','2021-04-11 01:23:02','2021-04-11 01:23:02'),
(33,3,'Admin','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36','2021-04-11 01:28:05','2021-04-11 01:28:05'),
(34,3,'Admin','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36','2021-04-11 13:19:09','2021-04-11 13:19:09'),
(35,3,'Admin','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36','2021-04-11 18:15:08','2021-04-11 18:15:08'),
(36,3,'Admin','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36','2021-04-11 20:47:40','2021-04-11 20:47:40'),
(37,4,'User','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36','2021-04-11 21:07:31','2021-04-11 21:07:31'),
(38,3,'Admin','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36','2021-04-12 12:26:08','2021-04-12 12:26:08'),
(39,4,'User','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36','2021-04-12 12:33:54','2021-04-12 12:33:54'),
(40,3,'Admin','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36','2021-04-12 18:30:08','2021-04-12 18:30:08'),
(41,4,'User','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36','2021-04-17 04:35:25','2021-04-17 04:35:25'),
(42,3,'Admin','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36','2021-04-17 04:35:41','2021-04-17 04:35:41'),
(43,3,'Admin','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36','2021-04-17 07:33:53','2021-04-17 07:33:53'),
(44,4,'User','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36','2021-04-18 16:26:13','2021-04-18 16:26:13'),
(45,3,'Admin','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36','2021-04-18 16:26:36','2021-04-18 16:26:36'),
(46,3,'Admin','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36','2021-04-19 05:23:19','2021-04-19 05:23:19'),
(47,4,'User','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36','2021-04-19 07:12:13','2021-04-19 07:12:13'),
(48,3,'Admin','127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36','2021-04-21 02:37:40','2021-04-21 02:37:40');

/*Table structure for table `admins` */

DROP TABLE IF EXISTS `admins`;

CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(60) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `picture` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`),
  UNIQUE KEY `admins_phone_unique` (`phone`),
  KEY `admins_role_id_index` (`role_id`),
  CONSTRAINT `admins_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `admins` */

insert  into `admins`(`id`,`role_id`,`first_name`,`last_name`,`phone`,`email`,`password`,`status`,`remember_token`,`created_at`,`updated_at`,`picture`) values 
(1,1,'Admin','Istrator',NULL,'office@creo-it.com','$2y$10$y2urTRv3EYjQUe/IMpBUf.2BnE1eoRpxC4xrf.dlebZijipwuxrIW','Active',NULL,'2021-02-27 19:11:51','2021-02-27 19:11:51',''),
(2,1,'Admin2','Manual',NULL,'martin.glettler@gmail.com','$2y$10$y2urTRv3EYjQUe/IMpBUf.2BnE1eoRpxC4xrf.dlebZijipwuxrIW','Active',NULL,'2021-02-28 00:21:48','2021-02-28 00:21:48',''),
(3,1,'Владимир','Окулович',NULL,'vladimir.okulovich2019@mail.ru','$2y$10$y2urTRv3EYjQUe/IMpBUf.2BnE1eoRpxC4xrf.dlebZijipwuxrIW','Active',NULL,'2021-02-28 14:04:12','2021-02-28 14:04:12','');

/*Table structure for table `app_store_credentials` */

DROP TABLE IF EXISTS `app_store_credentials`;

CREATE TABLE `app_store_credentials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `has_app_credentials` enum('Yes','No') NOT NULL,
  `link` varchar(200) DEFAULT NULL,
  `logo` varchar(100) NOT NULL,
  `company` enum('Google','Apple') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `app_store_credentials` */

insert  into `app_store_credentials`(`id`,`has_app_credentials`,`link`,`logo`,`company`,`created_at`,`updated_at`) values 
(1,'Yes','http://store.google.com/pay-money','1531650482.png','Google',NULL,NULL),
(2,'Yes','https://itunes.apple.com/bd/app/pay-money','1531134592.png','Apple',NULL,NULL);

/*Table structure for table `app_tokens` */

DROP TABLE IF EXISTS `app_tokens`;

CREATE TABLE `app_tokens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` int(10) unsigned NOT NULL,
  `token` varchar(100) NOT NULL,
  `expires_in` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `app_tokens_app_id_index` (`app_id`),
  CONSTRAINT `app_tokens_app_id_foreign` FOREIGN KEY (`app_id`) REFERENCES `merchant_apps` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `app_tokens` */

/*Table structure for table `app_transactions_infos` */

DROP TABLE IF EXISTS `app_transactions_infos`;

CREATE TABLE `app_transactions_infos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` int(10) unsigned NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `amount` decimal(20,8) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `success_url` varchar(191) NOT NULL,
  `cancel_url` varchar(191) NOT NULL,
  `grant_id` varchar(100) NOT NULL,
  `token` varchar(191) NOT NULL,
  `expires_in` varchar(100) NOT NULL,
  `status` enum('pending','success','cancel') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `app_transactions_infos_app_id_index` (`app_id`),
  CONSTRAINT `app_transactions_infos_app_id_foreign` FOREIGN KEY (`app_id`) REFERENCES `merchant_apps` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `app_transactions_infos` */

/*Table structure for table `backups` */

DROP TABLE IF EXISTS `backups`;

CREATE TABLE `backups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `backups` */

/*Table structure for table `banks` */

DROP TABLE IF EXISTS `banks`;

CREATE TABLE `banks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `admin_id` int(10) unsigned DEFAULT NULL,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `country_id` int(10) unsigned DEFAULT NULL,
  `file_id` int(10) unsigned DEFAULT NULL,
  `bank_name` varchar(191) DEFAULT NULL,
  `bank_branch_name` varchar(191) DEFAULT NULL,
  `bank_branch_city` varchar(191) DEFAULT NULL,
  `bank_branch_address` varchar(191) DEFAULT NULL,
  `account_name` varchar(191) DEFAULT NULL,
  `account_number` varchar(191) DEFAULT NULL,
  `swift_code` varchar(191) DEFAULT NULL,
  `is_default` enum('No','Yes') NOT NULL DEFAULT 'No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `banks_user_id_index` (`user_id`),
  KEY `banks_admin_id_index` (`admin_id`),
  KEY `banks_currency_id_index` (`currency_id`),
  KEY `banks_country_id_index` (`country_id`),
  KEY `banks_file_id_index` (`file_id`),
  CONSTRAINT `banks_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `banks_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `banks_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `banks_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `banks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `banks` */

/*Table structure for table `cointpayment_log_trxes` */

DROP TABLE IF EXISTS `cointpayment_log_trxes`;

CREATE TABLE `cointpayment_log_trxes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `merchant_id` int(11) NOT NULL,
  `payment_id` varchar(191) NOT NULL,
  `payment_address` varchar(191) NOT NULL,
  `coin` varchar(10) NOT NULL,
  `fiat` varchar(10) NOT NULL,
  `status_text` varchar(191) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `payment_created_at` datetime NOT NULL,
  `expired` datetime NOT NULL,
  `confirmation_at` datetime DEFAULT NULL,
  `amount` double(20,8) NOT NULL,
  `confirms_needed` int(11) NOT NULL,
  `qrcode_url` varchar(191) NOT NULL,
  `status_url` varchar(191) NOT NULL,
  `payload` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cointpayment_log_trxes` */

/*Table structure for table `countries` */

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `short_name` varchar(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `iso3` varchar(10) DEFAULT NULL,
  `number_code` varchar(10) DEFAULT NULL,
  `phone_code` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `countries_short_name_unique` (`short_name`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8;

/*Data for the table `countries` */

insert  into `countries`(`id`,`short_name`,`name`,`iso3`,`number_code`,`phone_code`) values 
(1,'AF','Afghanistan','AFG','4','93'),
(2,'AL','Albania','ALB','8','355'),
(3,'DZ','Algeria','DZA','12','213'),
(4,'AS','American Samoa','ASM','16','1684'),
(5,'AD','Andorra','AND','20','376'),
(6,'AO','Angola','AGO','24','244'),
(7,'AI','Anguilla','AIA','660','1264'),
(8,'AQ','Antarctica',NULL,NULL,'0'),
(9,'AG','Antigua and Barbuda','ATG','28','1268'),
(10,'AR','Argentina','ARG','32','54'),
(11,'AM','Armenia','ARM','51','374'),
(12,'AW','Aruba','ABW','533','297'),
(13,'AU','Australia','AUS','36','61'),
(14,'AT','Austria','AUT','40','43'),
(15,'AZ','Azerbaijan','AZE','31','994'),
(16,'BS','Bahamas','BHS','44','1242'),
(17,'BH','Bahrain','BHR','48','973'),
(18,'BD','Bangladesh','BGD','50','880'),
(19,'BB','Barbados','BRB','52','1246'),
(20,'BY','Belarus','BLR','112','375'),
(21,'BE','Belgium','BEL','56','32'),
(22,'BZ','Belize','BLZ','84','501'),
(23,'BJ','Benin','BEN','204','229'),
(24,'BM','Bermuda','BMU','60','1441'),
(25,'BT','Bhutan','BTN','64','975'),
(26,'BO','Bolivia','BOL','68','591'),
(27,'BA','Bosnia and Herzegovina','BIH','70','387'),
(28,'BW','Botswana','BWA','72','267'),
(29,'BV','Bouvet Island',NULL,NULL,'0'),
(30,'BR','Brazil','BRA','76','55'),
(31,'IO','British Indian Ocean Territory',NULL,NULL,'246'),
(32,'BN','Brunei Darussalam','BRN','96','673'),
(33,'BG','Bulgaria','BGR','100','359'),
(34,'BF','Burkina Faso','BFA','854','226'),
(35,'BI','Burundi','BDI','108','257'),
(36,'KH','Cambodia','KHM','116','855'),
(37,'CM','Cameroon','CMR','120','237'),
(38,'CA','Canada','CAN','124','1'),
(39,'CV','Cape Verde','CPV','132','238'),
(40,'KY','Cayman Islands','CYM','136','1345'),
(41,'CF','Central African Republic','CAF','140','236'),
(42,'TD','Chad','TCD','148','235'),
(43,'CL','Chile','CHL','152','56'),
(44,'CN','China','CHN','156','86'),
(45,'CX','Christmas Island',NULL,NULL,'61'),
(46,'CC','Cocos (Keeling) Islands',NULL,NULL,'672'),
(47,'CO','Colombia','COL','170','57'),
(48,'KM','Comoros','COM','174','269'),
(49,'CG','Congo','COG','178','242'),
(50,'CD','Congo, the Democratic Republic of the','COD','180','242'),
(51,'CK','Cook Islands','COK','184','682'),
(52,'CR','Costa Rica','CRI','188','506'),
(53,'CI','Cote D\'Ivoire','CIV','384','225'),
(54,'HR','Croatia','HRV','191','385'),
(55,'CU','Cuba','CUB','192','53'),
(56,'CY','Cyprus','CYP','196','357'),
(57,'CZ','Czech Republic','CZE','203','420'),
(58,'DK','Denmark','DNK','208','45'),
(59,'DJ','Djibouti','DJI','262','253'),
(60,'DM','Dominica','DMA','212','1767'),
(61,'DO','Dominican Republic','DOM','214','1809'),
(62,'EC','Ecuador','ECU','218','593'),
(63,'EG','Egypt','EGY','818','20'),
(64,'SV','El Salvador','SLV','222','503'),
(65,'GQ','Equatorial Guinea','GNQ','226','240'),
(66,'ER','Eritrea','ERI','232','291'),
(67,'EE','Estonia','EST','233','372'),
(68,'ET','Ethiopia','ETH','231','251'),
(69,'FK','Falkland Islands (Malvinas)','FLK','238','500'),
(70,'FO','Faroe Islands','FRO','234','298'),
(71,'FJ','Fiji','FJI','242','679'),
(72,'FI','Finland','FIN','246','358'),
(73,'FR','France','FRA','250','33'),
(74,'GF','French Guiana','GUF','254','594'),
(75,'PF','French Polynesia','PYF','258','689'),
(76,'TF','French Southern Territories',NULL,NULL,'0'),
(77,'GA','Gabon','GAB','266','241'),
(78,'GM','Gambia','GMB','270','220'),
(79,'GE','Georgia','GEO','268','995'),
(80,'DE','Germany','DEU','276','49'),
(81,'GH','Ghana','GHA','288','233'),
(82,'GI','Gibraltar','GIB','292','350'),
(83,'GR','Greece','GRC','300','30'),
(84,'GL','Greenland','GRL','304','299'),
(85,'GD','Grenada','GRD','308','1473'),
(86,'GP','Guadeloupe','GLP','312','590'),
(87,'GU','Guam','GUM','316','1671'),
(88,'GT','Guatemala','GTM','320','502'),
(89,'GN','Guinea','GIN','324','224'),
(90,'GW','Guinea-Bissau','GNB','624','245'),
(91,'GY','Guyana','GUY','328','592'),
(92,'HT','Haiti','HTI','332','509'),
(93,'HM','Heard Island and Mcdonald Islands',NULL,NULL,'0'),
(94,'VA','Holy See (Vatican City State)','VAT','336','39'),
(95,'HN','Honduras','HND','340','504'),
(96,'HK','Hong Kong','HKG','344','852'),
(97,'HU','Hungary','HUN','348','36'),
(98,'IS','Iceland','ISL','352','354'),
(99,'IN','India','IND','356','91'),
(100,'ID','Indonesia','IDN','360','62'),
(101,'IR','Iran, Islamic Republic of','IRN','364','98'),
(102,'IQ','Iraq','IRQ','368','964'),
(103,'IE','Ireland','IRL','372','353'),
(104,'IL','Israel','ISR','376','972'),
(105,'IT','Italy','ITA','380','39'),
(106,'JM','Jamaica','JAM','388','1876'),
(107,'JP','Japan','JPN','392','81'),
(108,'JO','Jordan','JOR','400','962'),
(109,'KZ','Kazakhstan','KAZ','398','7'),
(110,'KE','Kenya','KEN','404','254'),
(111,'KI','Kiribati','KIR','296','686'),
(112,'KP','Korea, Democratic People\'s Republic of','PRK','408','850'),
(113,'KR','Korea, Republic of','KOR','410','82'),
(114,'KW','Kuwait','KWT','414','965'),
(115,'KG','Kyrgyzstan','KGZ','417','996'),
(116,'LA','Lao People\'s Democratic Republic','LAO','418','856'),
(117,'LV','Latvia','LVA','428','371'),
(118,'LB','Lebanon','LBN','422','961'),
(119,'LS','Lesotho','LSO','426','266'),
(120,'LR','Liberia','LBR','430','231'),
(121,'LY','Libyan Arab Jamahiriya','LBY','434','218'),
(122,'LI','Liechtenstein','LIE','438','423'),
(123,'LT','Lithuania','LTU','440','370'),
(124,'LU','Luxembourg','LUX','442','352'),
(125,'MO','Macao','MAC','446','853'),
(126,'MK','Macedonia, the Former Yugoslav Republic of','MKD','807','389'),
(127,'MG','Madagascar','MDG','450','261'),
(128,'MW','Malawi','MWI','454','265'),
(129,'MY','Malaysia','MYS','458','60'),
(130,'MV','Maldives','MDV','462','960'),
(131,'ML','Mali','MLI','466','223'),
(132,'MT','Malta','MLT','470','356'),
(133,'MH','Marshall Islands','MHL','584','692'),
(134,'MQ','Martinique','MTQ','474','596'),
(135,'MR','Mauritania','MRT','478','222'),
(136,'MU','Mauritius','MUS','480','230'),
(137,'YT','Mayotte',NULL,NULL,'269'),
(138,'MX','Mexico','MEX','484','52'),
(139,'FM','Micronesia, Federated States of','FSM','583','691'),
(140,'MD','Moldova, Republic of','MDA','498','373'),
(141,'MC','Monaco','MCO','492','377'),
(142,'MN','Mongolia','MNG','496','976'),
(143,'MS','Montserrat','MSR','500','1664'),
(144,'MA','Morocco','MAR','504','212'),
(145,'MZ','Mozambique','MOZ','508','258'),
(146,'MM','Myanmar','MMR','104','95'),
(147,'NA','Namibia','NAM','516','264'),
(148,'NR','Nauru','NRU','520','674'),
(149,'NP','Nepal','NPL','524','977'),
(150,'NL','Netherlands','NLD','528','31'),
(151,'AN','Netherlands Antilles','ANT','530','599'),
(152,'NC','New Caledonia','NCL','540','687'),
(153,'NZ','New Zealand','NZL','554','64'),
(154,'NI','Nicaragua','NIC','558','505'),
(155,'NE','Niger','NER','562','227'),
(156,'NG','Nigeria','NGA','566','234'),
(157,'NU','Niue','NIU','570','683'),
(158,'NF','Norfolk Island','NFK','574','672'),
(159,'MP','Northern Mariana Islands','MNP','580','1670'),
(160,'NO','Norway','NOR','578','47'),
(161,'OM','Oman','OMN','512','968'),
(162,'PK','Pakistan','PAK','586','92'),
(163,'PW','Palau','PLW','585','680'),
(164,'PS','Palestinian Territory, Occupied',NULL,NULL,'970'),
(165,'PA','Panama','PAN','591','507'),
(166,'PG','Papua New Guinea','PNG','598','675'),
(167,'PY','Paraguay','PRY','600','595'),
(168,'PE','Peru','PER','604','51'),
(169,'PH','Philippines','PHL','608','63'),
(170,'PN','Pitcairn','PCN','612','0'),
(171,'PL','Poland','POL','616','48'),
(172,'PT','Portugal','PRT','620','351'),
(173,'PR','Puerto Rico','PRI','630','1787'),
(174,'QA','Qatar','QAT','634','974'),
(175,'RE','Reunion','REU','638','262'),
(176,'RO','Romania','ROM','642','40'),
(177,'RU','Russian Federation','RUS','643','70'),
(178,'RW','Rwanda','RWA','646','250'),
(179,'SH','Saint Helena','SHN','654','290'),
(180,'KN','Saint Kitts and Nevis','KNA','659','1869'),
(181,'LC','Saint Lucia','LCA','662','1758'),
(182,'PM','Saint Pierre and Miquelon','SPM','666','508'),
(183,'VC','Saint Vincent and the Grenadines','VCT','670','1784'),
(184,'WS','Samoa','WSM','882','684'),
(185,'SM','San Marino','SMR','674','378'),
(186,'ST','Sao Tome and Principe','STP','678','239'),
(187,'SA','Saudi Arabia','SAU','682','966'),
(188,'SN','Senegal','SEN','686','221'),
(189,'CS','Serbia and Montenegro',NULL,NULL,'381'),
(190,'SC','Seychelles','SYC','690','248'),
(191,'SL','Sierra Leone','SLE','694','232'),
(192,'SG','Singapore','SGP','702','65'),
(193,'SK','Slovakia','SVK','703','421'),
(194,'SI','Slovenia','SVN','705','386'),
(195,'SB','Solomon Islands','SLB','90','677'),
(196,'SO','Somalia','SOM','706','252'),
(197,'ZA','South Africa','ZAF','710','27'),
(198,'GS','South Georgia and the South Sandwich Islands',NULL,NULL,'0'),
(199,'ES','Spain','ESP','724','34'),
(200,'LK','Sri Lanka','LKA','144','94'),
(201,'SD','Sudan','SDN','736','249'),
(202,'SR','Suriname','SUR','740','597'),
(203,'SJ','Svalbard and Jan Mayen','SJM','744','47'),
(204,'SZ','Swaziland','SWZ','748','268'),
(205,'SE','Sweden','SWE','752','46'),
(206,'CH','Switzerland','CHE','756','41'),
(207,'SY','Syrian Arab Republic','SYR','760','963'),
(208,'TW','Taiwan, Province of China','TWN','158','886'),
(209,'TJ','Tajikistan','TJK','762','992'),
(210,'TZ','Tanzania, United Republic of','TZA','834','255'),
(211,'TH','Thailand','THA','764','66'),
(212,'TL','Timor-Leste',NULL,NULL,'670'),
(213,'TG','Togo','TGO','768','228'),
(214,'TK','Tokelau','TKL','772','690'),
(215,'TO','Tonga','TON','776','676'),
(216,'TT','Trinidad and Tobago','TTO','780','1868'),
(217,'TN','Tunisia','TUN','788','216'),
(218,'TR','Turkey','TUR','792','90'),
(219,'TM','Turkmenistan','TKM','795','7370'),
(220,'TC','Turks and Caicos Islands','TCA','796','1649'),
(221,'TV','Tuvalu','TUV','798','688'),
(222,'UG','Uganda','UGA','800','256'),
(223,'UA','Ukraine','UKR','804','380'),
(224,'AE','United Arab Emirates','ARE','784','971'),
(225,'GB','United Kingdom','GBR','826','44'),
(226,'US','United States','USA','840','1'),
(227,'UM','United States Minor Outlying Islands',NULL,NULL,'1'),
(228,'UY','Uruguay','URY','858','598'),
(229,'UZ','Uzbekistan','UZB','860','998'),
(230,'VU','Vanuatu','VUT','548','678'),
(231,'VE','Venezuela','VEN','862','58'),
(232,'VN','Viet Nam','VNM','704','84'),
(233,'VG','Virgin Islands, British','VGB','92','1284'),
(234,'VI','Virgin Islands, U.s.','VIR','850','1340'),
(235,'WF','Wallis and Futuna','WLF','876','681'),
(236,'EH','Western Sahara','ESH','732','212'),
(237,'YE','Yemen','YEM','887','967'),
(238,'ZM','Zambia','ZMB','894','260'),
(239,'ZW','Zimbabwe','ZWE','716','263');

/*Table structure for table `crypto_currencies_settings` */

DROP TABLE IF EXISTS `crypto_currencies_settings`;

CREATE TABLE `crypto_currencies_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_method_id` int(10) unsigned NOT NULL,
  `network` varchar(10) NOT NULL COMMENT 'Networks/Cryto Curencies - BTC,LTC,DT etc.',
  `network_credentials` varchar(255) NOT NULL COMMENT 'Network/Cryto Curency Details',
  `status` varchar(10) NOT NULL COMMENT 'Active/Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `crypto_currencies_settings_payment_method_id_index` (`payment_method_id`),
  CONSTRAINT `crypto_currencies_settings_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `crypto_currencies_settings` */

insert  into `crypto_currencies_settings`(`id`,`payment_method_id`,`network`,`network_credentials`,`status`,`created_at`,`updated_at`) values 
(1,9,'BTCTEST','{\"api_key\":\"e93e-0322-01a8-a1c6\",\"pin\":\"Terranoid123\",\"address\":\"2NAivqjcNivqUGFt8mADnnrLzP3Ywh2pf7C\"}','Active','2021-02-27 19:19:02','2021-02-27 22:19:44');

/*Table structure for table `cryptoapi_logs` */

DROP TABLE IF EXISTS `cryptoapi_logs`;

CREATE TABLE `cryptoapi_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payment_method_id` int(10) unsigned NOT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_type` varchar(20) DEFAULT NULL,
  `network` varchar(10) NOT NULL COMMENT 'Networks/Cryto Curencies - BTC,LTC,DT etc.',
  `payload` text NOT NULL COMMENT 'Crypto Api''s Payloads (e.g - get_new_address(), get_balance(), withdraw(),etc.',
  `confirmations` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cryptoapi_logs_payment_method_id_index` (`payment_method_id`),
  KEY `cryptoapi_logs_object_id_index` (`object_id`),
  KEY `cryptoapi_logs_object_type_index` (`object_type`),
  KEY `cryptoapi_logs_confirmations_index` (`confirmations`),
  CONSTRAINT `cryptoapi_logs_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `cryptoapi_logs` */

insert  into `cryptoapi_logs`(`id`,`payment_method_id`,`object_id`,`object_type`,`network`,`payload`,`confirmations`,`created_at`,`updated_at`) values 
(1,9,4,'wallet_address','BTCTEST','{\"network\":\"BTCTEST\",\"user_id\":1,\"address\":\"2MsnNCGES83hzqDXDqSXvfw8xCtgcbFNLXT\",\"label\":\"3_email@gmail.com\"}',0,'2021-02-27 23:47:48','2021-02-27 23:47:48'),
(2,9,4,'crypto_sent','BTCTEST','{\"network\":\"BTCTEST\",\"txid\":\"83846cf6207c92b77357222785a3b9f94506cc8bd39d67cca11665594c47a493\",\"amount_withdrawn\":\"0.00005502\",\"amount_sent\":\"0.00002000\",\"network_fee\":\"0.00003502\",\"blockio_fee\":\"0.00000000\",\"senderAddress\":\"2NAivqjcNivqUGFt8mADnnrLzP3Ywh2pf7C\",\"receiverAddress\":\"2MsnNCGES83hzqDXDqSXvfw8xCtgcbFNLXT\"}',0,'2021-02-27 23:51:53','2021-02-27 23:51:53'),
(3,9,6,'wallet_address','BTCTEST','{\"network\":\"BTCTEST\",\"user_id\":2,\"address\":\"2Mw3HMMtG3XrN6cnVmFZse4sNYjPybiqYa7\",\"label\":\"4_vladimir.okulovich2019@mail.ru\"}',0,'2021-03-02 08:31:53','2021-03-02 08:31:53');

/*Table structure for table `cryptocards` */

DROP TABLE IF EXISTS `cryptocards`;

CREATE TABLE `cryptocards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` text DEFAULT NULL,
  `BTC` float(8,4) NOT NULL,
  `BTC_EUR` double(8,2) NOT NULL,
  `EUR` double(8,2) NOT NULL,
  `rateTimestamp` datetime NOT NULL,
  `activatedFrom` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `activatedBy` int(11) NOT NULL,
  `assignedToUser` int(10) unsigned DEFAULT NULL,
  `wallet_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cryptocards_wallet_id_foreign` (`wallet_id`),
  KEY `cryptocards_assignedtouser_index` (`assignedToUser`),
  CONSTRAINT `cryptocards_assignedtouser_foreign` FOREIGN KEY (`assignedToUser`) REFERENCES `users` (`id`),
  CONSTRAINT `cryptocards_wallet_id_foreign` FOREIGN KEY (`wallet_id`) REFERENCES `wallets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `cryptocards` */

insert  into `cryptocards`(`id`,`code`,`BTC`,`BTC_EUR`,`EUR`,`rateTimestamp`,`activatedFrom`,`status`,`activatedBy`,`assignedToUser`,`wallet_id`,`created_at`,`updated_at`) values 
(1,'7AD67DHJ8',0.0022,45315.00,100.00,'2021-03-26 19:50:52','2021-04-21 04:02:58',1,1,2,2,NULL,'2021-04-21 04:02:58'),
(2,'YD787DkJK8',0.0044,45319.00,200.00,'2021-03-27 00:39:14','2021-04-21 04:02:48',1,1,1,1,NULL,'2021-04-21 04:02:48'),
(5,'sdf4325234',2.7818,12.22,34.00,'2021-04-21 05:12:27','2021-04-21 05:12:27',1,0,4,2,'2021-04-21 05:12:27','2021-04-21 05:12:27');

/*Table structure for table `currencies` */

DROP TABLE IF EXISTS `currencies`;

CREATE TABLE `currencies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(8) NOT NULL DEFAULT 'fiat' COMMENT 'fiat or crypto',
  `name` varchar(100) DEFAULT 'USD',
  `symbol` char(50) NOT NULL DEFAULT '$',
  `code` varchar(100) DEFAULT '101',
  `rate` decimal(20,8) NOT NULL DEFAULT 0.00000000,
  `logo` varchar(100) DEFAULT NULL,
  `default` enum('1','0') NOT NULL,
  `exchange_from` enum('local','api') NOT NULL DEFAULT 'local',
  `allow_address_creation` varchar(4) NOT NULL DEFAULT 'No' COMMENT 'For Crypto - Yes/No',
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `currencies` */

insert  into `currencies`(`id`,`type`,`name`,`symbol`,`code`,`rate`,`logo`,`default`,`exchange_from`,`allow_address_creation`,`status`,`created_at`,`updated_at`) values 
(1,'fiat','US Dollar','$','USD',0.91000000,NULL,'0','local','No','Inactive',NULL,NULL),
(2,'fiat','Pound Sterling','£','GBP',0.75000000,'icons8-british-pound-64.png','0','api','No','Active',NULL,NULL),
(3,'fiat','Euro','€','EUR',1.00000000,NULL,'1','local','No','Active',NULL,NULL),
(5,'crypto','Bitcoin (TESTNET!)','฿','BTCTEST',0.00000000,'1614442887.png','0','local','Yes','Active',NULL,NULL);

/*Table structure for table `currency_exchanges` */

DROP TABLE IF EXISTS `currency_exchanges`;

CREATE TABLE `currency_exchanges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `from_wallet` int(10) unsigned DEFAULT NULL,
  `to_wallet` int(10) unsigned DEFAULT NULL,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `uuid` varchar(13) DEFAULT NULL COMMENT 'Unique ID (For Each Exchange)',
  `exchange_rate` decimal(20,8) DEFAULT 0.00000000,
  `amount` decimal(20,8) DEFAULT 0.00000000,
  `fee` decimal(20,8) DEFAULT 0.00000000,
  `type` enum('In','Out') NOT NULL,
  `status` enum('Pending','Success','Refund','Blocked') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `currency_exchanges_user_id_index` (`user_id`),
  KEY `currency_exchanges_from_wallet_index` (`from_wallet`),
  KEY `currency_exchanges_to_wallet_index` (`to_wallet`),
  KEY `currency_exchanges_currency_id_index` (`currency_id`),
  CONSTRAINT `currency_exchanges_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `currency_exchanges_from_wallet_foreign` FOREIGN KEY (`from_wallet`) REFERENCES `wallets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `currency_exchanges_to_wallet_foreign` FOREIGN KEY (`to_wallet`) REFERENCES `wallets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `currency_exchanges_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `currency_exchanges` */

/*Table structure for table `currency_payment_methods` */

DROP TABLE IF EXISTS `currency_payment_methods`;

CREATE TABLE `currency_payment_methods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `currency_id` int(10) unsigned NOT NULL,
  `method_id` int(10) unsigned NOT NULL,
  `activated_for` varchar(100) DEFAULT NULL COMMENT 'deposit, withdrawal single, both or none',
  `method_data` varchar(255) NOT NULL COMMENT 'input field''s title and value like client_id, client_secret etc',
  `processing_time` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'time in days',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `currency_payment_methods_currency_id_index` (`currency_id`),
  KEY `currency_payment_methods_method_id_index` (`method_id`),
  CONSTRAINT `currency_payment_methods_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `currency_payment_methods_method_id_foreign` FOREIGN KEY (`method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `currency_payment_methods` */

/*Table structure for table `deposits` */

DROP TABLE IF EXISTS `deposits`;

CREATE TABLE `deposits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `payment_method_id` int(10) unsigned DEFAULT NULL,
  `bank_id` int(10) unsigned DEFAULT NULL,
  `file_id` int(10) unsigned DEFAULT NULL,
  `uuid` varchar(13) DEFAULT NULL COMMENT 'Unique ID (For Each Deposit)',
  `charge_percentage` decimal(20,8) DEFAULT 0.00000000,
  `charge_fixed` decimal(20,8) DEFAULT 0.00000000,
  `amount` decimal(20,8) DEFAULT 0.00000000,
  `status` enum('Pending','Success','Refund','Blocked') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deposits_user_id_index` (`user_id`),
  KEY `deposits_currency_id_index` (`currency_id`),
  KEY `deposits_payment_method_id_index` (`payment_method_id`),
  KEY `deposits_bank_id_index` (`bank_id`),
  KEY `deposits_file_id_index` (`file_id`),
  CONSTRAINT `deposits_bank_id_foreign` FOREIGN KEY (`bank_id`) REFERENCES `banks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `deposits_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `deposits_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `deposits_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `deposits_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `deposits` */

insert  into `deposits`(`id`,`user_id`,`currency_id`,`payment_method_id`,`bank_id`,`file_id`,`uuid`,`charge_percentage`,`charge_fixed`,`amount`,`status`,`created_at`,`updated_at`) values 
(1,1,3,1,NULL,NULL,'5AE8427D75DAD',0.00000000,0.00000000,10.00000000,'Success','2021-02-27 19:38:28','2021-02-27 19:38:28'),
(2,3,3,1,NULL,NULL,'A6E63EA9467F1',0.00000000,0.00000000,100.00000000,'Success','2021-02-27 23:50:53','2021-02-27 23:50:53');

/*Table structure for table `device_logs` */

DROP TABLE IF EXISTS `device_logs`;

CREATE TABLE `device_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `browser_fingerprint` varchar(40) DEFAULT NULL,
  `browser_agent` varchar(191) NOT NULL,
  `ip` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `device_logs_user_id_index` (`user_id`),
  CONSTRAINT `device_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `device_logs` */

/*Table structure for table `dispute_discussions` */

DROP TABLE IF EXISTS `dispute_discussions`;

CREATE TABLE `dispute_discussions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dispute_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `type` enum('Admin','User') NOT NULL,
  `message` longtext DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dispute_discussions_dispute_id_index` (`dispute_id`),
  KEY `dispute_discussions_user_id_index` (`user_id`),
  CONSTRAINT `dispute_discussions_dispute_id_foreign` FOREIGN KEY (`dispute_id`) REFERENCES `disputes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `dispute_discussions` */

/*Table structure for table `disputes` */

DROP TABLE IF EXISTS `disputes`;

CREATE TABLE `disputes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `claimant_id` int(10) unsigned DEFAULT NULL,
  `defendant_id` int(10) unsigned DEFAULT NULL,
  `transaction_id` int(10) unsigned DEFAULT NULL,
  `reason_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL,
  `status` enum('Open','Close','Solve') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `disputes_claimant_id_index` (`claimant_id`),
  KEY `disputes_defendant_id_index` (`defendant_id`),
  KEY `disputes_transaction_id_index` (`transaction_id`),
  KEY `disputes_reason_id_index` (`reason_id`),
  CONSTRAINT `disputes_claimant_id_foreign` FOREIGN KEY (`claimant_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `disputes_defendant_id_foreign` FOREIGN KEY (`defendant_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `disputes_reason_id_foreign` FOREIGN KEY (`reason_id`) REFERENCES `reasons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `disputes_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `disputes` */

/*Table structure for table `document_verifications` */

DROP TABLE IF EXISTS `document_verifications`;

CREATE TABLE `document_verifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `file_id` int(10) unsigned DEFAULT NULL,
  `verification_type` enum('address','identity') DEFAULT NULL,
  `identity_type` enum('driving_license','passport','national_id') DEFAULT NULL,
  `identity_number` varchar(191) DEFAULT NULL,
  `status` enum('pending','approved','rejected') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `document_verifications_user_id_index` (`user_id`),
  KEY `document_verifications_file_id_index` (`file_id`),
  CONSTRAINT `document_verifications_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `document_verifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `document_verifications` */

/*Table structure for table `email_configs` */

DROP TABLE IF EXISTS `email_configs`;

CREATE TABLE `email_configs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email_protocol` varchar(191) NOT NULL,
  `email_encryption` varchar(191) NOT NULL,
  `smtp_host` varchar(191) NOT NULL,
  `smtp_port` varchar(191) NOT NULL,
  `smtp_email` varchar(191) NOT NULL,
  `smtp_username` varchar(191) NOT NULL,
  `smtp_password` varchar(191) NOT NULL,
  `from_address` varchar(191) NOT NULL,
  `from_name` varchar(191) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `email_configs` */

insert  into `email_configs`(`id`,`email_protocol`,`email_encryption`,`smtp_host`,`smtp_port`,`smtp_email`,`smtp_username`,`smtp_password`,`from_address`,`from_name`,`status`) values 
(1,'sendmail','tls','','587','','','','','',1);

/*Table structure for table `email_templates` */

DROP TABLE IF EXISTS `email_templates`;

CREATE TABLE `email_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(10) unsigned DEFAULT NULL,
  `temp_id` tinyint(4) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `body` text NOT NULL,
  `lang` varchar(10) NOT NULL,
  `type` enum('email','sms') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `email_templates_language_id_index` (`language_id`),
  CONSTRAINT `email_templates_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=utf8;

/*Data for the table `email_templates` */

insert  into `email_templates`(`id`,`language_id`,`temp_id`,`subject`,`body`,`lang`,`type`) values 
(1,1,1,'Notice of Transfer!','Hi {sender_id},\r\n                                <br><br>The funds amount equal to {amount} was transferred from your account.\r\n\r\n                                <br><br><b><u><i>Here’s a brief overview of your Transfer:</i></u></b>\r\n\r\n                                <br><br>Transfer # {uuid} was created at {created_at}.\r\n\r\n                                <br><br><b><u>Amount:</u></b> {amount}\r\n\r\n                                <br><br><b><u>Receiver:</u></b> {receiver_id}\r\n\r\n                                <br><br><b><u>Fee:</u></b> {fee}\r\n\r\n                                <br><br>If you have any questions, please feel free to reply to this email.\r\n                                <br><br>Regards,\r\n                                <br><b>{soft_name}</b>\r\n                                ','en','email'),
(2,2,1,'','','ar','email'),
(3,3,1,'','','fr','email'),
(4,4,1,'','','pt','email'),
(5,5,1,'','','ru','email'),
(6,6,1,'','','es','email'),
(7,7,1,'','','tr','email'),
(8,8,1,'','','ch','email'),
(9,1,3,'Notice of Bank Transfer!','Hi {sender_id},\r\n                                <br><br>The funds amount equal to {amount} was transferred to the assigned bank.\r\n\r\n                                <br><br><b><u><i>Here’s a brief overview of your Bank Transfer:</i></u></b>\r\n\r\n                                <br><br>Bank Transfer # {uuid} was created at {created_at}.\r\n\r\n                                <br><br><b><u>Amount:</u></b> {amount}\r\n\r\n                                <br><br><b><u>Fee:</u></b> {fee}\r\n\r\n                                <br><br><b><u>Bank Name:</u></b> {bank_name}\r\n\r\n                                <br><br><b><u>Branch Name:</u></b> {branch_name}\r\n\r\n                                <br><br><b><u>Account Name:</u></b> {account_name}\r\n\r\n                                <br><br>If you have any questions, please feel free to reply to this email.\r\n                                <br><br>Regards,\r\n                                <br><b>{soft_name}</b>\r\n                                ','en','email'),
(10,2,3,'','','ar','email'),
(11,3,3,'','','fr','email'),
(12,4,3,'','','pt','email'),
(13,5,3,'','','ru','email'),
(14,6,3,'','','es','email'),
(15,7,3,'','','tr','email'),
(16,8,3,'','','ch','email'),
(17,1,2,'Notice to Receive!','Hi {receiver_id},\r\n                                <br><br>The funds amount equal to {amount} was received on your account.\r\n\r\n                                <br><br>\r\n                                <b><u><i>Here’s a brief overview of your Received Payment:</i></u></b>\r\n\r\n                                <br><br>\r\n                                Transfer # {uuid} was received at {created_at}.\r\n\r\n                                <br><br>\r\n                                <b><u>Amount:</u></b> {amount}\r\n\r\n                                <br><br>\r\n                                <b><u>Sender:</u></b> {sender_id}\r\n\r\n                                <br><br>If you have any questions, please feel free to reply to this email.\r\n\r\n                                <br><br>Regards,\r\n                                <br><b>{soft_name}</b>\r\n                                ','en','email'),
(18,2,2,'','','ar','email'),
(19,3,2,'','','fr','email'),
(20,4,2,'','','pt','email'),
(21,5,2,'','','ru','email'),
(22,6,2,'','','es','email'),
(23,7,2,'','','tr','email'),
(24,8,2,'','','tr','email'),
(25,1,21,'Notice of {Identity/Address} Verification!','Hi {user},\r\n                                <br><br>Your {Identity/Address} verification is <b>{approved/pending/rejected}</b>.\r\n\r\n                                <br><br>If you have any questions, please feel free to reply to this email.\r\n\r\n                                <br><br>Regards,\r\n                                <br><b>{soft_name}</b>\r\n                                ','en','email'),
(26,2,21,'','','ar','email'),
(27,3,21,'','','fr','email'),
(28,4,21,'','','pt','email'),
(29,5,21,'','','ru','email'),
(30,6,21,'','','es','email'),
(31,7,21,'','','tr','email'),
(32,8,21,'','','tr','email'),
(33,1,4,'Notice of Request Creation!','Hi {acceptor},\r\n\r\n                                <br><br>Amount {amount} has been requested by {creator}.\r\n\r\n                                <br><br><b><u><i>Here’s a brief overview of the Request:</i></u></b>\r\n\r\n                                <br><br>\r\n                                <b><u>Request #:</u></b> {uuid}\r\n\r\n                                <br><br>\r\n                                <b><u>Created At:</u></b> {created_at}\r\n\r\n                                <br><br>\r\n                                <b><u>Requested Amount:</u></b> {amount}\r\n\r\n                                <br><br>\r\n                                <b><u>Note: </u></b> {note}\r\n\r\n                                <br><br>If you have any questions, please feel free to reply to this email.\r\n\r\n                                <br><br>Regards,\r\n                                <br><b>{soft_name}</b>\r\n                                ','en','email'),
(34,2,4,'','','ar','email'),
(35,3,4,'','','fr','email'),
(36,4,4,'','','pt','email'),
(37,5,4,'','','ru','email'),
(38,6,4,'','','es','email'),
(39,7,4,'','','tr','email'),
(40,8,4,'','','ch','email'),
(41,1,5,'Notice of Request Acceptance!','Hi {creator},\r\n                                <br><br>Your request of #{uuid} has been accepted by {acceptor}.\r\n\r\n                                <br><br><b><u><i>Here’s a brief overview of the Request:</i></u></b>\r\n\r\n                                <br><br>\r\n                                <b><u>Accepted Date:</u></b> {created_at}.\r\n\r\n                                <br><br>\r\n                                <b><u>Requested Amount:</u></b> {amount}\r\n\r\n                                <br><br>\r\n                                <b><u>Requested Accepted Amount:</u></b> {accept_amount}\r\n\r\n                                <br><br>\r\n                                <b><u>Currency:</u></b> {currency}\r\n\r\n                                <br><br>If you have any questions, please feel free to reply to this email.\r\n\r\n                                <br><br>Regards,\r\n                                <br><b>{soft_name}</b>\r\n                                ','en','email'),
(42,2,5,'','','ar','email'),
(43,3,5,'','','fr','email'),
(44,4,5,'','','pt','email'),
(45,5,5,'','','ru','email'),
(46,6,5,'','','es','email'),
(47,7,5,'','','tr','email'),
(48,8,5,'','','ch','email'),
(49,1,6,'Status of Transaction #{uuid} has been updated!','Hi {sender_id/receiver_id},\r\n\r\n                                <br><br><b>\r\n                                Transaction of Transfer #{uuid} has been updated to {status} by system administrator!</b>\r\n\r\n                                <br><br>\r\n                                {amount} is {added/subtracted} {from/to} your account.\r\n\r\n                                <br><br>If you have any questions, please feel free to reply to this email.\r\n\r\n                                <br><br>Regards,\r\n                                <br><b>{soft_name}</b>\r\n                                ','en','email'),
(50,2,6,'','','ar','email'),
(51,3,6,'','','fr','email'),
(52,4,6,'','','pt','email'),
(53,5,6,'','','ru','email'),
(54,6,6,'','','es','email'),
(55,7,6,'','','tr','email'),
(56,8,6,'','','ch','email'),
(57,1,7,'Status of Transaction #{uuid} has been updated!','Hi {sender_id},\r\n                                <br><br><b>\r\n                                Transaction of Bank Transfer #{uuid} has been updated to {status} by system administrator!</b>\r\n                                <br><br>\r\n                                {amount} is {added/subtracted} {from/to} your account.\r\n\r\n                                <br><br>If you have any questions, please feel free to reply to this email.\r\n\r\n                                <br><br>Regards,\r\n                                <br><b>{soft_name}</b>\r\n                                ','en','email'),
(58,2,7,'','','ar','email'),
(59,3,7,'','','fr','email'),
(60,4,7,'','','pt','email'),
(61,5,7,'','','ru','email'),
(62,6,7,'','','es','email'),
(63,7,7,'','','tr','email'),
(64,8,7,'','','ch','email'),
(65,1,8,'Status of Transaction #{uuid} has been updated!','Hi {user_id/receiver_id},\r\n\r\n                                <br><br><b>\r\n                                Transaction of Request Payment #{uuid} has been updated to {status} by system administrator!</b>\r\n\r\n                                <br><br>\r\n                                {amount} is {added/subtracted} {from/to} your account.\r\n\r\n                                <br><br>If you have any questions, please feel free to reply to this email.\r\n\r\n                                <br><br>Regards,\r\n                                <br><b>{soft_name}</b>','en','email'),
(66,2,8,'','','ar','email'),
(67,3,8,'','','fr','email'),
(68,4,8,'','','pt','email'),
(69,5,8,'','','ru','email'),
(70,6,8,'','','es','email'),
(71,7,8,'','','tr','email'),
(72,8,8,'','','ch','email'),
(73,1,10,'Status of Transaction #{uuid} has been updated!','Hi {user_id},\r\n\r\n                                <br><br><b>\r\n                                Transaction of Payout #{uuid} has been updated to {status} by system administrator!</b>\r\n\r\n                                <br><br>\r\n                                {amount} is {added/subtracted} {from/to} your account.\r\n\r\n                                <br><br>If you have any questions, please feel free to reply to this email.\r\n\r\n                                <br><br>Regards,\r\n                                <br><b>{soft_name}</b>','en','email'),
(74,2,10,'','','ar','email'),
(75,3,10,'','','fr','email'),
(76,4,10,'','','pt','email'),
(77,5,10,'','','ru','email'),
(78,6,10,'','','es','email'),
(79,7,10,'','','tr','email'),
(80,8,10,'','','ch','email'),
(81,1,11,'Notice of Ticket!','Hi {assignee/user},\r\n\r\n                                <br><br>Ticket #{ticket_code} was {assigned/created} {to/for} you by the system administrator.\r\n\r\n                                <br><br><b><u><i>Here’s a brief overview of the ticket:</i></u></b>\r\n\r\n                                <br><br>Ticket #{ticket_code} was created at {created_at}.\r\n\r\n                                <br><br><b><u>{Assignee:}</u></b> {assignee}\r\n\r\n                                <br><br><b><u>{User:}</u></b> {user}\r\n\r\n                                <br><br><b><u>Ticket Subject:</u></b> {subject}\r\n\r\n                                <br><br><b><u>Ticket Message:</u></b> {message}\r\n\r\n                                <br><br><b><u>Ticket Status:</u></b> {status}\r\n\r\n                                <br><br><b><u>Ticket Priority Level:</u></b> {priority}\r\n\r\n                                <br><br>If you have any questions, please feel free to reply to this email.\r\n                                <br><br>Regards,\r\n                                <br><b>{soft_name}</b>\r\n                                ','en','email'),
(82,2,11,'','','ar','email'),
(83,3,11,'','','fr','email'),
(84,4,11,'','','pt','email'),
(85,5,11,'','','ru','email'),
(86,6,11,'','','es','email'),
(87,7,11,'','','tr','email'),
(88,8,11,'','','ch','email'),
(89,1,12,'Notice of Ticket Reply!','Hi {user},\r\n\r\n                                <br><br>A ticket reply has been sent to you by system administrator.\r\n\r\n                                <br><br><b><u><i>Here’s a brief overview of the reply:</i></u></b>\r\n\r\n                                <br><br>This reply was initiated against ticket code #{ticket_code}.\r\n\r\n                                <br><br><b><u>Assignee:</u></b> {assignee}\r\n\r\n                                <br><br><b><u>Reply Message:</u></b> {message}\r\n\r\n                                <br><br><b><u>Reply Status:</u></b> {status}\r\n\r\n                                <br><br><b><u>Reply Priority Level:</u></b> {priority}\r\n\r\n                                <br><br>If you have any questions, please feel free to reply to this email.\r\n                                <br><br>Regards,\r\n                                <br><b>{soft_name}</b>\r\n                                ','en','email'),
(90,2,12,'','','ar','email'),
(91,3,12,'','','fr','email'),
(92,4,12,'','','pt','email'),
(93,5,12,'','','ru','email'),
(94,6,12,'','','es','email'),
(95,7,12,'','','tr','email'),
(96,8,12,'','','ch','email'),
(97,1,13,'Notice of Dispute Reply!','Hi {user},\r\n\r\n                                <br><br>A dispute reply has been sent to you by system administrator.\r\n\r\n                                <br><br><b><u><i>Here’s a brief overview of the reply:</i></u></b>\r\n\r\n                                <br><br>This reply was initiated at {created_at}.\r\n\r\n                                <br><br><b><u>{Claimant/Defendant:}</u></b> {claimant/defendant}\r\n\r\n                                <br><br><b><u>Transaction ID:</u></b> {transaction_id}\r\n\r\n                                <br><br><b><u>Subject:</u></b> {subject}\r\n\r\n                                <br><br><b><u>Replied Message:</u></b> {message}\r\n\r\n                                <br><br><b><u>Status:</u></b> {status}\r\n\r\n                                <br><br>If you have any questions, please feel free to reply to this email.\r\n                                <br><br>Regards,\r\n                                <br><b>{soft_name}</b>\r\n                                ','en','email'),
(98,2,13,'','','ar','email'),
(99,3,13,'','','fr','email'),
(100,4,13,'','','pt','email'),
(101,5,13,'','','ru','email'),
(102,6,13,'','','es','email'),
(103,7,13,'','','tr','email'),
(104,8,13,'','','ch','email'),
(105,1,14,'Status of Transaction #{uuid} has been updated!','Hi {paidByUser/merchantUser},\r\n\r\n                                <br><br><b>\r\n                                Transaction of Merchant Payment #{uuid} has been updated to {status} by system administrator!</b>\r\n\r\n                                <br><br>\r\n                                {amount} is {added/subtracted} {from/to} your account.\r\n\r\n                                <br><br>If you have any questions, please feel free to reply to this email.\r\n\r\n                                <br><br>Regards,\r\n                                <br><b>{soft_name}</b>','en','email'),
(106,2,14,'','','ar','email'),
(107,3,14,'','','fr','email'),
(108,4,14,'','','pt','email'),
(109,5,14,'','','ru','email'),
(110,6,14,'','','es','email'),
(111,7,14,'','','tr','email'),
(112,8,14,'','','ch','email'),
(113,1,16,'Status of Transaction #{uuid} has been updated!','Hi {user_id/receiver_id},\r\n                                <br><br><b>\r\n                                Transaction of Request Payment #{uuid} has been updated to {status} by system administrator!</b>\r\n                                <br><br>If you have any questions, please feel free to reply to this email.\r\n                                <br><br>Regards,\r\n                                <br><b>{soft_name}</b>','en','email'),
(114,2,16,'','','ar','email'),
(115,3,16,'','','fr','email'),
(116,4,16,'','','pt','email'),
(117,5,16,'','','ru','email'),
(118,6,16,'','','es','email'),
(119,7,16,'','','tr','email'),
(120,8,16,'','','ch','email'),
(121,1,17,'Notice for User Verification!','Hi {user},\r\n                                        <br><br>\r\n                                        Your registered email id: {email}. Please click on the below link to verify your account,<br><br>\r\n                                        {verification_url}\r\n\r\n                                        <br><br>If you have any questions, please feel free to reply to this email.\r\n                                        <br><br>Regards,\r\n                                        <br><b>{soft_name}</b>','en','email'),
(122,2,17,'','','ar','email'),
(123,3,17,'','','fr','email'),
(124,4,17,'','','pt','email'),
(125,5,17,'','','ru','email'),
(126,6,17,'','','es','email'),
(127,7,17,'','','tr','email'),
(128,8,17,'','','ch','email'),
(129,1,19,'Notice for 2-Factor Authentication!','Hi {user},\r\n                                        <br><br>\r\n                                        Your 2-Factor Authentication code is: {code}\r\n                                        <br><br>Regards,\r\n                                        <br><b>{soft_name}</b>','en','email'),
(130,2,19,'','','ar','email'),
(131,3,19,'','','fr','email'),
(132,4,19,'','','pt','email'),
(133,5,19,'','','ru','email'),
(134,6,19,'','','es','email'),
(135,7,19,'','','tr','email'),
(136,8,19,'','','ch','email'),
(137,1,18,'Notice for Password Reset!','Hi {user},\r\n                                        <br><br>\r\n                                        Your registered email id: {email}. Please click on the below link to reset your password,<br><br>\r\n                                        {password_reset_url}\r\n                                        <br><br>If you have any questions, please feel free to reply to this email.\r\n                                        <br><br>Regards,\r\n                                        <br><b>{soft_name}</b>','en','email'),
(138,2,18,'','','ar','email'),
(139,3,18,'','','fr','email'),
(140,4,18,'','','pt','email'),
(141,5,18,'','','ru','email'),
(142,6,18,'','','es','email'),
(143,7,18,'','','tr','email'),
(144,8,18,'','','ch','email'),
(145,1,21,'Notice of {Identity/Address} Verification!','Hi {user},\r\n                                <br><br>Your {Identity/Address} verification is <b>{approved/pending/rejected}</b>.\r\n                                ','en','sms'),
(146,2,21,'','','ar','sms'),
(147,3,21,'','','fr','sms'),
(148,4,21,'','','pt','sms'),
(149,5,21,'','','ru','sms'),
(150,6,21,'','','es','sms'),
(151,7,21,'','','tr','sms'),
(152,8,21,'','','tr','sms'),
(153,1,1,'Notice of Transfer!','Hi {sender_id},\r\n                    <br><br>You have transferred {amount} from your account.\r\n                    ','en','sms'),
(154,2,1,'','','ar','sms'),
(155,3,1,'','','fr','sms'),
(156,4,1,'','','pt','sms'),
(157,5,1,'','','ru','sms'),
(158,6,1,'','','es','sms'),
(159,7,1,'','','tr','sms'),
(160,8,1,'','','ch','sms'),
(161,1,3,'Notice of Bank Transfer!','Hi {sender_id},\r\n                    <br><br>You have transferred {amount} to the assigned bank.\r\n                    ','en','sms'),
(162,2,3,'','','ar','sms'),
(163,3,3,'','','fr','sms'),
(164,4,3,'','','pt','sms'),
(165,5,3,'','','ru','sms'),
(166,6,3,'','','es','sms'),
(167,7,3,'','','tr','sms'),
(168,8,3,'','','ch','sms'),
(169,1,2,'Notice to Receive!','Hi {receiver_id},\r\n                                <br><br>You have received {amount} from {sender_id}.\r\n                                ','en','sms'),
(170,2,2,'','','ar','sms'),
(171,3,2,'','','fr','sms'),
(172,4,2,'','','pt','sms'),
(173,5,2,'','','ru','sms'),
(174,6,2,'','','es','sms'),
(175,7,2,'','','tr','sms'),
(176,8,2,'','','ch','sms'),
(177,1,4,'Notice of Request Creation!','Hi {acceptor},\r\n                                <br><br>Amount {amount} has been requested by {creator}.\r\n                                ','en','sms'),
(178,2,4,'','','ar','sms'),
(179,3,4,'','','fr','sms'),
(180,4,4,'','','pt','sms'),
(181,5,4,'','','ru','sms'),
(182,6,4,'','','es','sms'),
(183,7,4,'','','tr','sms'),
(184,8,4,'','','ch','sms'),
(185,1,5,'Notice of Request Acceptance!','Hi {creator},\r\n                                    <br><br>Your request of #{uuid} of {amount} has been accepted by {acceptor}.\r\n                                ','en','sms'),
(186,2,5,'','','ar','sms'),
(187,3,5,'','','fr','sms'),
(188,4,5,'','','pt','sms'),
(189,5,5,'','','ru','sms'),
(190,6,5,'','','es','sms'),
(191,7,5,'','','tr','sms'),
(192,8,5,'','','ch','sms'),
(193,1,6,'Status of Transaction #{uuid} has been updated!','Hi {sender_id/receiver_id},\r\n                                    <br><br><b>\r\n                                    Transfer #{uuid} has been updated to {status} by system administrator!</b>\r\n                                    <br><br>\r\n                                    {amount} is {added/subtracted} {from/to} your account.\r\n                                ','en','sms'),
(194,2,6,'','','ar','sms'),
(195,3,6,'','','fr','sms'),
(196,4,6,'','','pt','sms'),
(197,5,6,'','','ru','sms'),
(198,6,6,'','','es','sms'),
(199,7,6,'','','tr','sms'),
(200,8,6,'','','ch','sms'),
(201,1,7,'Status of Transaction #{uuid} has been updated!','Hi {sender_id},\r\n                                    <br><br><b>\r\n                                    Bank Transfer #{uuid} has been updated to {status} by system administrator!</b>\r\n                                    <br><br>\r\n                                    {amount} is {added/subtracted} {from/to} your account.\r\n                                ','en','sms'),
(202,2,7,'','','ar','sms'),
(203,3,7,'','','fr','sms'),
(204,4,7,'','','pt','sms'),
(205,5,7,'','','ru','sms'),
(206,6,7,'','','es','sms'),
(207,7,7,'','','tr','sms'),
(208,8,7,'','','ch','sms'),
(209,1,8,'Status of Transaction #{uuid} has been updated!','Hi {user_id/receiver_id},\r\n                                <br><br><b>\r\n                                Transaction of Request Payment #{uuid} has been updated to {status} by system administrator!</b>\r\n                                <br><br>\r\n                                {amount} is {added/subtracted} {from/to} your account.\r\n                                ','en','sms'),
(210,2,8,'','','ar','sms'),
(211,3,8,'','','fr','sms'),
(212,4,8,'','','pt','sms'),
(213,5,8,'','','ru','sms'),
(214,6,8,'','','es','sms'),
(215,7,8,'','','tr','sms'),
(216,8,8,'','','ch','sms'),
(217,1,10,'Status of Transaction #{uuid} has been updated!','Hi {user_id},\r\n                                <br><br><b>\r\n                                Transaction of Payout #{uuid} has been updated to {status} by system administrator!</b>\r\n                                <br><br>\r\n                                {amount} is {added/subtracted} {from/to} your account.\r\n                                ','en','sms'),
(218,2,10,'','','ar','sms'),
(219,3,10,'','','fr','sms'),
(220,4,10,'','','pt','sms'),
(221,5,10,'','','ru','sms'),
(222,6,10,'','','es','sms'),
(223,7,10,'','','tr','sms'),
(224,8,10,'','','ch','sms'),
(225,1,14,'Status of Transaction #{uuid} has been updated!','Hi {paidByUser/merchantUser},\r\n                                <br><br><b>\r\n                                Transaction of Merchant Payment #{uuid} has been updated to {status} by system administrator!</b>\r\n                                <br><br>\r\n                                {amount} is {added/subtracted} {from/to} your account.\r\n                                ','en','sms'),
(226,2,14,'','','ar','sms'),
(227,3,14,'','','fr','sms'),
(228,4,14,'','','pt','sms'),
(229,5,14,'','','ru','sms'),
(230,6,14,'','','es','sms'),
(231,7,14,'','','tr','sms'),
(232,8,14,'','','ch','sms'),
(233,1,16,'Status of Transaction #{uuid} has been updated!','Hi {user_id/receiver_id},\r\n                                <br><br><b>\r\n                                Transaction of Request Payment #{uuid} has been updated to {status} by system administrator!</b>\r\n                                ','en','sms'),
(234,2,16,'','','ar','sms'),
(235,3,16,'','','fr','sms'),
(236,4,16,'','','pt','sms'),
(237,5,16,'','','ru','sms'),
(238,6,16,'','','es','sms'),
(239,7,16,'','','tr','sms'),
(240,8,16,'','','ch','sms'),
(241,1,11,'Notice of Ticket!','Hi {assignee/user},\r\n                                <br><br>Ticket #{ticket_code} was {assigned/created} {to/for} you by the system administrator.\r\n                                ','en','sms'),
(242,2,11,'','','ar','sms'),
(243,3,11,'','','fr','sms'),
(244,4,11,'','','pt','sms'),
(245,5,11,'','','ru','sms'),
(246,6,11,'','','es','sms'),
(247,7,11,'','','tr','sms'),
(248,8,11,'','','ch','sms'),
(249,1,12,'Notice of Ticket Reply!','Hi {user},\r\n                                <br><br>The system administrator has replied to your assigned ticket # {ticket_code).\r\n                                ','en','sms'),
(250,2,12,'','','ar','sms'),
(251,3,12,'','','fr','sms'),
(252,4,12,'','','pt','sms'),
(253,5,12,'','','ru','sms'),
(254,6,12,'','','es','sms'),
(255,7,12,'','','tr','sms'),
(256,8,12,'','','ch','sms'),
(257,1,13,'Notice of Dispute Reply!','Hi {user},\r\n                                <br><br>The system administrator has replied to your dispute for transaction # {transaction_id).\r\n                                ','en','sms'),
(258,2,13,'','','ar','sms'),
(259,3,13,'','','fr','sms'),
(260,4,13,'','','pt','sms'),
(261,5,13,'','','ru','sms'),
(262,6,13,'','','es','sms'),
(263,7,13,'','','tr','sms'),
(264,8,13,'','','ch','sms'),
(265,1,23,'Notice of Deposit Notification!','Hi,\r\n                                <br><br>Amount {amount} was deposited by {user}.\r\n\r\n                                <br><br><b><u><i>Here’s a brief overview of the Deposit:</i></u></b>\r\n\r\n                                <br><br><b><u>Created at:</u></b> {created_at}\r\n\r\n                                <br><br><b><u>Transaction ID:</u></b> {uuid}\r\n\r\n                                <br><br><b><u>Currency:</u></b> {code}\r\n\r\n                                <br><br><b><u>Amount:</u></b> {amount}\r\n\r\n                                <br><br><b><u>Fee:</u></b> {fee}\r\n\r\n                                <br><br>If you have any questions, please feel free to reply to this email.\r\n                                <br><br>Regards,\r\n                                <br><b>{soft_name}</b>\r\n                                ','en','email'),
(266,2,23,'','','ar','email'),
(267,3,23,'','','fr','email'),
(268,4,23,'','','pt','email'),
(269,5,23,'','','ru','email'),
(270,6,23,'','','es','email'),
(271,7,23,'','','tr','email'),
(272,8,23,'','','ch','email'),
(273,1,24,'Notice of Payout Notification!','Hi,\r\n                                <br><br>Amount {amount} was payout by {user}.\r\n\r\n                                <br><br><b><u><i>Here’s a brief overview of the Payout:</i></u></b>\r\n\r\n                                <br><br><b><u>Created at:</u></b> {created_at}\r\n\r\n                                <br><br><b><u>Transaction ID:</u></b> {uuid}\r\n\r\n                                <br><br><b><u>Currency:</u></b> {code}\r\n\r\n                                <br><br><b><u>Amount:</u></b> {amount}\r\n\r\n                                <br><br><b><u>Fee:</u></b> {fee}\r\n\r\n                                <br><br>If you have any questions, please feel free to reply to this email.\r\n                                <br><br>Regards,\r\n                                <br><b>{soft_name}</b>\r\n                                ','en','email'),
(274,2,24,'','','ar','email'),
(275,3,24,'','','fr','email'),
(276,4,24,'','','pt','email'),
(277,5,24,'','','ru','email'),
(278,6,24,'','','es','email'),
(279,7,24,'','','tr','email'),
(280,8,24,'','','ch','email'),
(281,1,25,'Notice of Exchange Notification!','Hi,\r\n                                <br><br>Amount {amount} was exchanged by {user}.\r\n\r\n                                <br><br><b><u><i>Here’s a brief overview of the Exchange:</i></u></b>\r\n\r\n                                <br><br><b><u>Created at:</u></b> {created_at}\r\n\r\n                                <br><br><b><u>Transaction ID:</u></b> {uuid}\r\n\r\n                                <br><br><b><u>From wallet:</u></b> {from_wallet}\r\n\r\n                                <br><br><b><u>To wallet:</u></b> {to_wallet}\r\n\r\n                                <br><br><b><u>Amount:</u></b> {amount}\r\n\r\n                                <br><br><b><u>Fee (deducted from {from_wallet}):</u></b> {fee}\r\n\r\n                                <br><br>If you have any questions, please feel free to reply to this email.\r\n                                <br><br>Regards,\r\n                                <br><b>{soft_name}</b>\r\n                                ','en','email'),
(282,2,25,'','','ar','email'),
(283,3,25,'','','fr','email'),
(284,4,25,'','','pt','email'),
(285,5,25,'','','ru','email'),
(286,6,25,'','','es','email'),
(287,7,25,'','','tr','email'),
(288,8,25,'','','ch','email'),
(289,1,26,'Notice of Transfer Notification!','Hi,\r\n                                <br><br>Amount {amount} was sent by {sender} to {receiver}.\r\n\r\n                                <br><br><b><u><i>Here’s a brief overview of the Transfer:</i></u></b>\r\n\r\n                                <br><br><b><u>Created at:</u></b> {created_at}\r\n\r\n                                <br><br><b><u>Transaction ID:</u></b> {uuid}\r\n\r\n                                <br><br><b><u>Sent By:</u></b> {sender}\r\n\r\n                                <br><br><b><u>Received By:</u></b> {receiver}\r\n\r\n                                <br><br><b><u>Amount:</u></b> {amount}\r\n\r\n                                <br><br><b><u>Fee (deducted from {sender}):</u></b> {fee}\r\n\r\n                                <br><br>If you have any questions, please feel free to reply to this email.\r\n                                <br><br>Regards,\r\n                                <br><b>{soft_name}</b>\r\n                                ','en','email'),
(290,2,26,'','','ar','email'),
(291,3,26,'','','fr','email'),
(292,4,26,'','','pt','email'),
(293,5,26,'','','ru','email'),
(294,6,26,'','','es','email'),
(295,7,26,'','','tr','email'),
(296,8,26,'','','ch','email'),
(297,1,27,'Notice of Request Acceptance Notification!','Hi,\r\n                                <br><br>The request #{uuid} from {creator} was accepted by {acceptor}.\r\n\r\n                                <br><br><b><u><i>Here’s a brief overview of the Request Acceptance:</i></u></b>\r\n\r\n                                <br><br><b><u>Created at:</u></b> {created_at}\r\n\r\n                                <br><br><b><u>Transaction ID:</u></b> {uuid}\r\n\r\n                                <br><br><b><u>Currency:</u></b> {code}\r\n\r\n                                <br><br><b><u>Requested By:</u></b> {creator}\r\n\r\n                                <br><br><b><u>Accepted By:</u></b> {acceptor}\r\n\r\n                                <br><br><b><u>Requested Amount:</u></b> {request_amount}\r\n\r\n                                <br><br><b><u>Given Amount:</u></b> {given_amount}\r\n\r\n                                <br><br><b><u>Fee (deducted from {acceptor}):</u></b> {fee}\r\n\r\n                                <br><br>If you have any questions, please feel free to reply to this email.\r\n                                <br><br>Regards,\r\n                                <br><b>{soft_name}</b>\r\n                                ','en','email'),
(298,2,27,'','','ar','email'),
(299,3,27,'','','fr','email'),
(300,4,27,'','','pt','email'),
(301,5,27,'','','ru','email'),
(302,6,27,'','','es','email'),
(303,7,27,'','','tr','email'),
(304,8,27,'','','ch','email'),
(305,1,28,'Notice of Payment Notification!','Hi,\r\n                                <br><br>Amount {amount} was paid by {user} to {merchant}.\r\n\r\n                                <br><br><b><u><i>Here’s a brief overview of the Payment:</i></u></b>\r\n\r\n                                <br><br><b><u>Created at:</u></b> {created_at}\r\n\r\n                                <br><br><b><u>Transaction ID:</u></b> {uuid}\r\n\r\n                                <br><br><b><u>Currency:</u></b> {code}\r\n\r\n                                <br><br><b><u>Paid By:</u></b> {user}\r\n\r\n                                <br><br><b><u>Paid To:</u></b> {merchant}\r\n\r\n                                <br><br><b><u>Amount:</u></b> {amount}\r\n\r\n                                <br><br><b><u>Fee (deducted from {merchant}):</u></b> {fee}\r\n\r\n                                <br><br>If you have any questions, please feel free to reply to this email.\r\n                                <br><br>Regards,\r\n                                <br><b>{soft_name}</b>\r\n                                ','en','email'),
(306,2,28,'','','ar','email'),
(307,3,28,'','','fr','email'),
(308,4,28,'','','pt','email'),
(309,5,28,'','','ru','email'),
(310,6,28,'','','es','email'),
(311,7,28,'','','tr','email'),
(312,8,28,'','','ch','email'),
(313,1,29,'Notice of Status Change!','Hi {user},\r\n                                    <br><br>Your status has been changed to <b>{status}</b> by the System Administrator\r\n                                    <br><br>If you have any questions, please feel free to reply to this email.\r\n                                    <br><br>Regards,\r\n                                    <br><b>{soft_name}</b>.','en','email'),
(314,2,29,'','','ar','email'),
(315,3,29,'','','fr','email'),
(316,4,29,'','','pt','email'),
(317,5,29,'','','ru','email'),
(318,6,29,'','','es','email'),
(319,7,29,'','','tr','email'),
(320,8,29,'','','ch','email');

/*Table structure for table `fees_limits` */

DROP TABLE IF EXISTS `fees_limits`;

CREATE TABLE `fees_limits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `transaction_type_id` int(10) unsigned DEFAULT NULL,
  `payment_method_id` int(10) unsigned DEFAULT NULL,
  `charge_percentage` decimal(20,8) NOT NULL DEFAULT 0.00000000,
  `charge_fixed` decimal(20,8) NOT NULL DEFAULT 0.00000000,
  `min_limit` decimal(20,8) NOT NULL DEFAULT 1.00000000,
  `max_limit` decimal(20,8) DEFAULT NULL,
  `processing_time` varchar(4) DEFAULT '0' COMMENT 'time in days',
  `has_transaction` enum('Yes','No') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fees_limits_transaction_type_id_foreign` (`transaction_type_id`),
  KEY `fees_limits_payment_method_id_foreign` (`payment_method_id`),
  KEY `fees_limits_currency_id_index` (`currency_id`),
  CONSTRAINT `fees_limits_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fees_limits_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fees_limits_transaction_type_id_foreign` FOREIGN KEY (`transaction_type_id`) REFERENCES `transaction_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

/*Data for the table `fees_limits` */

insert  into `fees_limits`(`id`,`currency_id`,`transaction_type_id`,`payment_method_id`,`charge_percentage`,`charge_fixed`,`min_limit`,`max_limit`,`processing_time`,`has_transaction`,`created_at`,`updated_at`) values 
(1,1,1,1,0.00000000,0.00000000,1.00000000,NULL,'0','Yes',NULL,NULL),
(2,1,1,2,0.00000000,0.00000000,1.00000000,NULL,'0','Yes',NULL,NULL),
(3,1,1,3,0.00000000,0.00000000,1.00000000,NULL,'0','Yes',NULL,NULL),
(4,1,1,4,0.00000000,0.00000000,1.00000000,NULL,'0','Yes',NULL,NULL),
(5,1,1,5,0.00000000,0.00000000,1.00000000,NULL,'0','Yes',NULL,NULL),
(6,1,1,6,0.00000000,0.00000000,1.00000000,NULL,'0','Yes',NULL,NULL),
(7,1,1,7,0.00000000,0.00000000,1.00000000,NULL,'0','Yes',NULL,NULL),
(8,1,1,8,0.00000000,0.00000000,1.00000000,NULL,'0','Yes',NULL,NULL),
(9,1,2,1,0.00000000,0.00000000,1.00000000,NULL,'0','Yes',NULL,NULL),
(10,1,2,3,0.00000000,0.00000000,1.00000000,NULL,'0','Yes',NULL,NULL),
(11,1,2,6,0.00000000,0.00000000,1.00000000,NULL,'0','Yes',NULL,NULL),
(12,1,3,NULL,0.00000000,0.00000000,1.00000000,NULL,'0','Yes',NULL,NULL),
(13,1,5,NULL,0.00000000,0.00000000,1.00000000,NULL,'0','Yes',NULL,NULL),
(14,1,10,NULL,0.00000000,0.00000000,1.00000000,NULL,'0','Yes',NULL,NULL),
(15,3,1,1,0.00000000,0.00000000,1.00000000,NULL,'0','Yes','2021-02-27 19:13:01','2021-02-27 19:13:01'),
(16,3,1,2,0.00000000,0.00000000,1.00000000,NULL,'0','Yes','2021-02-27 19:13:01','2021-02-27 19:13:01'),
(17,3,1,3,0.00000000,0.00000000,1.00000000,NULL,'0','Yes','2021-02-27 19:13:01','2021-02-27 19:13:01'),
(18,3,1,4,0.00000000,0.00000000,1.00000000,NULL,'0','Yes','2021-02-27 19:13:01','2021-02-27 19:13:01'),
(19,3,1,5,0.00000000,0.00000000,1.00000000,NULL,'0','Yes','2021-02-27 19:13:01','2021-02-27 19:13:01'),
(20,3,1,6,0.00000000,0.00000000,1.00000000,NULL,'0','Yes','2021-02-27 19:13:01','2021-02-27 19:13:01'),
(21,3,1,7,0.00000000,0.00000000,1.00000000,NULL,'0','Yes','2021-02-27 19:13:01','2021-02-27 19:13:01'),
(22,3,1,8,0.00000000,0.00000000,1.00000000,NULL,'0','Yes','2021-02-27 19:13:01','2021-02-27 19:13:01'),
(23,3,1,9,0.00000000,0.00000000,1.00000000,NULL,'0','Yes','2021-02-27 19:13:01','2021-02-27 19:13:01'),
(24,3,2,1,0.00000000,0.00000000,1.00000000,NULL,'0','Yes','2021-02-27 19:13:01','2021-02-27 19:13:01'),
(25,3,2,2,0.00000000,0.00000000,1.00000000,NULL,'0','Yes','2021-02-27 19:13:01','2021-02-27 19:13:01'),
(26,3,2,3,0.00000000,0.00000000,1.00000000,NULL,'0','Yes','2021-02-27 19:13:01','2021-02-27 19:13:01'),
(27,3,2,4,0.00000000,0.00000000,1.00000000,NULL,'0','Yes','2021-02-27 19:13:01','2021-02-27 19:13:01'),
(28,3,2,5,0.00000000,0.00000000,1.00000000,NULL,'0','Yes','2021-02-27 19:13:01','2021-02-27 19:13:01'),
(29,3,2,6,0.00000000,0.00000000,1.00000000,NULL,'0','Yes','2021-02-27 19:13:01','2021-02-27 19:13:01'),
(30,3,2,7,0.00000000,0.00000000,1.00000000,NULL,'0','Yes','2021-02-27 19:13:01','2021-02-27 19:13:01'),
(31,3,2,8,0.00000000,0.00000000,1.00000000,NULL,'0','Yes','2021-02-27 19:13:01','2021-02-27 19:13:01'),
(32,3,2,9,0.00000000,0.00000000,1.00000000,NULL,'0','Yes','2021-02-27 19:13:01','2021-02-27 19:13:01'),
(33,3,3,NULL,0.00000000,0.00000000,1.00000000,NULL,'0','Yes','2021-02-27 19:13:01','2021-02-27 19:13:01'),
(34,3,5,NULL,0.00000000,0.00000000,1.00000000,NULL,'0','Yes','2021-02-27 19:13:01','2021-02-27 19:13:01'),
(35,3,10,NULL,0.00000000,0.00000000,1.00000000,NULL,'0','Yes','2021-02-27 19:13:01','2021-02-27 19:13:01');

/*Table structure for table `files` */

DROP TABLE IF EXISTS `files`;

CREATE TABLE `files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ticket_id` int(10) unsigned DEFAULT NULL,
  `ticket_reply_id` int(10) unsigned DEFAULT NULL,
  `filename` varchar(191) DEFAULT NULL,
  `originalname` varchar(191) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `files_admin_id_index` (`admin_id`),
  KEY `files_user_id_index` (`user_id`),
  KEY `files_ticket_id_index` (`ticket_id`),
  KEY `files_ticket_reply_id_index` (`ticket_reply_id`),
  CONSTRAINT `files_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `files_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `files_ticket_reply_id_foreign` FOREIGN KEY (`ticket_reply_id`) REFERENCES `ticket_replies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `files_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `files` */

/*Table structure for table `languages` */

DROP TABLE IF EXISTS `languages`;

CREATE TABLE `languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `short_name` varchar(5) NOT NULL,
  `flag` varchar(100) DEFAULT NULL,
  `default` enum('1','0') NOT NULL,
  `deletable` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `languages` */

insert  into `languages`(`id`,`name`,`short_name`,`flag`,`default`,`deletable`,`status`) values 
(1,'English','en','1530358989.png','1','No','Active'),
(2,'عربى','ar','1530359409.png','0','No','Active'),
(3,'Français','fr','1530359431.png','0','No','Active'),
(4,'Português','pt','1530359450.png','0','No','Active'),
(5,'Русский','ru','1530359474.png','0','No','Active'),
(6,'Español','es','1530360151.png','0','No','Active'),
(7,'Türkçe','tr','1530696845.png','0','No','Active'),
(8,'中文 (繁體)','ch','1531227913.png','0','No','Active');

/*Table structure for table `merchant_apps` */

DROP TABLE IF EXISTS `merchant_apps`;

CREATE TABLE `merchant_apps` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `merchant_id` int(10) unsigned NOT NULL,
  `client_id` varchar(50) NOT NULL,
  `client_secret` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `merchant_apps_client_id_unique` (`client_id`),
  KEY `merchant_apps_merchant_id_index` (`merchant_id`),
  CONSTRAINT `merchant_apps_merchant_id_foreign` FOREIGN KEY (`merchant_id`) REFERENCES `merchants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `merchant_apps` */

insert  into `merchant_apps`(`id`,`merchant_id`,`client_id`,`client_secret`,`created_at`,`updated_at`) values 
(1,2,'y2f6lns5PCE7BujSGWSm68iYVXKY9b','h81b6Nl99fW7VgzkBLdysdv1ImjgdOUvKiA148FphknqgXTYAoDa2rQg2T9WJTC8qzDDyhrIKrRcIdqgP4SZqVrBE7rAQYOWEPcH','2021-02-27 20:11:48','2021-02-27 20:11:48');

/*Table structure for table `merchant_groups` */

DROP TABLE IF EXISTS `merchant_groups`;

CREATE TABLE `merchant_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `fee` decimal(20,8) DEFAULT 0.00000000,
  `is_default` enum('No','Yes') NOT NULL DEFAULT 'No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `merchant_groups_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `merchant_groups` */

insert  into `merchant_groups`(`id`,`name`,`description`,`fee`,`is_default`,`created_at`,`updated_at`) values 
(1,'Premium','This is the premium merchant group',0.51234567,'No',NULL,NULL),
(2,'Gold','This is the gold merchant group',1.99933344,'No',NULL,NULL),
(3,'Silver','This is the silver merchant group',1.50000044,'Yes',NULL,NULL),
(4,'Bronze','This is the bronze merchant group',2.77711194,'No',NULL,NULL);

/*Table structure for table `merchant_payments` */

DROP TABLE IF EXISTS `merchant_payments`;

CREATE TABLE `merchant_payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `merchant_id` int(10) unsigned DEFAULT NULL,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `payment_method_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `gateway_reference` varchar(50) DEFAULT NULL,
  `order_no` varchar(50) DEFAULT NULL,
  `item_name` varchar(150) DEFAULT NULL,
  `uuid` varchar(13) DEFAULT NULL,
  `charge_percentage` decimal(20,8) DEFAULT 0.00000000,
  `charge_fixed` decimal(20,8) DEFAULT 0.00000000,
  `amount` decimal(20,8) DEFAULT 0.00000000,
  `total` decimal(20,8) DEFAULT 0.00000000,
  `status` enum('Pending','Success','Refund','Blocked') NOT NULL DEFAULT 'Success',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `merchant_payments_merchant_id_index` (`merchant_id`),
  KEY `merchant_payments_currency_id_index` (`currency_id`),
  KEY `merchant_payments_payment_method_id_index` (`payment_method_id`),
  KEY `merchant_payments_user_id_index` (`user_id`),
  CONSTRAINT `merchant_payments_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `merchant_payments_merchant_id_foreign` FOREIGN KEY (`merchant_id`) REFERENCES `merchants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `merchant_payments_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `merchant_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `merchant_payments` */

/*Table structure for table `merchants` */

DROP TABLE IF EXISTS `merchants`;

CREATE TABLE `merchants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `merchant_group_id` int(10) unsigned DEFAULT NULL,
  `merchant_uuid` varchar(13) DEFAULT NULL COMMENT 'Unique ID for each Merchant',
  `business_name` varchar(191) NOT NULL,
  `site_url` varchar(100) NOT NULL,
  `type` enum('standard','express') NOT NULL,
  `note` varchar(255) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `fee` decimal(20,8) DEFAULT 0.00000000,
  `status` enum('Moderation','Disapproved','Approved') NOT NULL DEFAULT 'Moderation',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `merchants_user_id_index` (`user_id`),
  KEY `merchants_currency_id_index` (`currency_id`),
  KEY `merchants_merchant_group_id_index` (`merchant_group_id`),
  CONSTRAINT `merchants_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `merchants_merchant_group_id_foreign` FOREIGN KEY (`merchant_group_id`) REFERENCES `merchant_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `merchants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `merchants` */

insert  into `merchants`(`id`,`user_id`,`currency_id`,`merchant_group_id`,`merchant_uuid`,`business_name`,`site_url`,`type`,`note`,`logo`,`fee`,`status`,`created_at`,`updated_at`) values 
(1,1,3,3,'AE1E746DEDBDD','OMV Tankstelle1','http://www.tanken.com','standard','some note','1614443196.png',1.50000000,'Approved','2021-02-27 19:26:36','2021-02-27 22:08:10'),
(2,2,3,1,'7240814967E92','Tankstelle 2','https://www.shit.com','express','was ist express ?',NULL,0.51000000,'Approved','2021-02-27 20:11:48','2021-02-27 20:12:29'),
(3,3,3,1,'9CE53742AF890','Tankstelle 3','http://www.email.com','standard','super',NULL,0.51000000,'Approved','2021-02-27 23:49:22','2021-02-27 23:50:00');

/*Table structure for table `metas` */

DROP TABLE IF EXISTS `metas`;

CREATE TABLE `metas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(191) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

/*Data for the table `metas` */

insert  into `metas`(`id`,`url`,`title`,`description`,`keywords`) values 
(1,'help','Help','Help',''),
(2,'about-us','About Us','About Us',''),
(3,'contact-us','Contact Us','Contact Us',''),
(4,'header','Header','Header',''),
(5,'login','Login','Login',''),
(6,'register','Register','Register',''),
(7,'/','Home','Home',''),
(8,'dashboard','Dashboard','Dashboard',''),
(9,'moneytransfer','Money Transfer','Money Transfer',''),
(10,'transactions','Transactions','Transactions',''),
(11,'exchanges','Money Exchange','Money Exchange',''),
(12,'exchange','Money Exchange','Money Exchange',''),
(13,'merchants','Merchant','Merchant',''),
(14,'merchant/add','Add Merchant','Add Merchant',''),
(15,'request_payments','Request Payments','Request Payments',''),
(16,'request_payment/add','Request Payment','Request Payment',''),
(17,'request_payment/edit/{id}','Request Payment','Request Payment',''),
(18,'request_payment/detail/{id}','Request Payment','Request Payment',''),
(19,'request_payment/completes','Request Payment','Request Payment',''),
(20,'exchange/view/{id}','Money Exchange','Money Exchange',''),
(21,'merchant/edit/{id}','Edit Merchant','Edit Merchant',''),
(22,'merchant/payments','Merchant payments','Merchant payments',''),
(23,'deposit','Deposit','Deposit',''),
(24,'deposit/method/{id}','Deposit Amount','Deposit Amount',''),
(25,'deposit/stripe_payment','Deposit With Stripe','Deposit With Stripe',''),
(26,'payout','Payout','Payout',''),
(27,'withdrawal/method/{id}','Payout','Payout',''),
(28,'payouts','Payouts','Payouts',''),
(29,'transactions/{id}','Transactions','Transactions',''),
(30,'request_payment/accept/{id}','Request Payment','Request Payment',''),
(31,'request_payment/accept/{id}','Request Payment','Request Payment',''),
(32,'disputes','Disputes','Disputes',''),
(33,'merchant/detail/{id}','View Merchant','View Merchant',''),
(34,'dispute/discussion/{id}','Dispute Details','Dispute Details',''),
(35,'dispute/add/{id}','Dispute Add','Dispute Add',''),
(36,'send-money','Send Money','Send Money',''),
(37,'request-money','Request Money','Request Money',''),
(38,'news','News','News',''),
(39,'profile','User Profile','User Profile',''),
(40,'tickets','Tickets','Tickets',''),
(41,'ticket/add','Add Ticket','Add Ticket',''),
(42,'ticket/reply/{id}','Ticket Reply','Ticket Reply',''),
(43,'exchange_of_base_currency','Money Exchange','Money Exchange',''),
(44,'exchange/exchange-of-base-currency-confirm','Money Exchange','Money Exchange',''),
(45,'deposit/stripe_payment_store','Deposit With Stripe','Deposit With Stripe',''),
(46,'payout/setting','Payout','Payout',''),
(47,'send-money-confirm','Money Transfer','Money Transfer',''),
(48,'exchange_to_base_currency','Money Exchange','Money Exchange',''),
(49,'exchange/exchange-to-base-currency-confirm','Money Exchange','Money Exchange',''),
(50,'portfolio','Portfolio','Portfolio',''),
(51,'request_payment/store','Request Payment','Request Payment',''),
(52,'forget-password','Forgot Password','Forgot Password',''),
(53,'password/resets/{token}','Reset Password','Reset Password',''),
(54,'request-money-confirm','Request Money','Request Money',''),
(55,'request_payment/accepted','Request Payment','Request Payment',''),
(56,'request_payment/accept-money-confirm','Request Payment','Request Payment',''),
(57,'deposit/stripe_payment_store','Deposit With Stripe','Deposit With Stripe',''),
(58,'policies','Policies','Policies',''),
(59,'transfer','Money Transfer','Money Transfer',''),
(60,'withdrawal/confirm-transaction','Payout','Payout',''),
(61,'request','Request Payment','Request Payment',''),
(62,'deposit/payumoney_success','Deposit With PayUMoney','Deposit With PayUMoney',''),
(63,'deposit/payment_success','Deposit Success','Deposit With PayMoney Success',''),
(64,'developer','Developer','Developer Page',''),
(65,'phone-verification','Verfy Phone','Verfy Phone',''),
(66,'authenticate','2-Factor Authentication','2-Factor Authentication',''),
(67,'profile/2fa','2-FA','2-FA',''),
(68,'2fa','2-Factor Authentication','2-Factor Authentication',''),
(69,'deposit/bank-payment','Deposit','Deposit',''),
(70,'bank-transfer','Bank Transfer','Bank Transfer',''),
(71,'bank-transfer/confirm','Bank Transfer','Bank Transfer',''),
(72,'bank-transfer/success','Bank Transfer','Bank Transfer',''),
(73,'google2fa','Google 2FA','Google 2FA',''),
(74,'profile/personal-id','Identity Verification','Identity Verification',''),
(75,'profile/personal-address','Address Verification','Address Verification',''),
(76,'exchange-of-money','Money Exchange','Money Exchange',''),
(77,'exchange-of-money-success','Money Exchange','Money Exchange',''),
(78,'deposit/bank-payment','Deposit','Deposit',''),
(79,'deposit/payeer/payment/success','Deposit With Payeer','Deposit With Payeer',''),
(80,'deposit/checkout/payment/success','Deposit with 2checkout','Deposit with 2checkout',''),
(81,'merchant/payment','Merchant Payment','Merchant Payment',''),
(82,'check-user-status','Suspended!','Suspended',''),
(83,'check-request-creator-suspended-status','Suspended','Suspended',''),
(84,'check-request-creator-inactive-status','Inactive','Inactive',''),
(85,'deposit/stripe-payment/success','Deposit With Stripe','Deposit With Stripe',''),
(86,'deposit/paypal-payment/success','Deposit With PayPal','Deposit With PayPal',''),
(87,'deposit/bank-payment/success','Deposit With Bank','Deposit With Bank',''),
(88,'crpto/send/{walletCurrencyCode}/{walletId}','Send Crypto','Send Crypto',''),
(89,'crpto/send/confirm','Send Crypto Confirm','Send Crypto Confirm',''),
(90,'crpto/send/success','Send Crypto Success','Send Crypto Success',''),
(91,'crpto/receive/{walletCurrencyCode}/{walletId}','Receive Crypto','Receive Crypto',''),
(92,'user/crypto/preference-disabled','Crypto Disabled','Crypto Disabled',''),
(93,'cryptocards','Cryptocards','Cryptocards',NULL);

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2016_06_01_000001_create_oauth_auth_codes_table',1),
(2,'2016_06_01_000002_create_oauth_access_tokens_table',1),
(3,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),
(4,'2016_06_01_000004_create_oauth_clients_table',1),
(5,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),
(6,'2018_03_23_021431_create_cointpayment_log_trxes_table',1),
(7,'2019_09_01_0000000002_create_email_configs_table',1),
(8,'2019_09_01_000000001_entrust_setup_tables',1),
(9,'2019_09_01_0000001_create_activity_logs_table',1),
(10,'2019_09_01_0000002_create_backups_table',1),
(11,'2019_09_01_0000003_create_countries_table',1),
(12,'2019_09_01_0000004_create_metas_table',1),
(13,'2019_09_01_0000005_create_settings_table',1),
(14,'2019_09_01_0000006_create_admins_table',1),
(15,'2019_09_01_0000007_add_picture_to_admins_table',1),
(16,'2019_09_01_0000010_create_payment_methods_table',1),
(17,'2019_09_01_0000011_create_merchant_groups_table',1),
(18,'2019_09_01_0000013_create_preferences_table',1),
(19,'2019_09_01_0000014_create_reasons_table',1),
(20,'2019_09_01_0000015_create_time_zones_table',1),
(21,'2019_09_01_0000016_create_transaction_types_table',1),
(22,'2019_09_01_0000017_create_socials_table',1),
(23,'2019_09_01_0000018_create_ticket_statuses_table',1),
(24,'2019_09_01_0000019_create_currencies_table',1),
(25,'2019_09_01_0000020_create_currency_payment_methods_table',1),
(26,'2019_09_01_0000021__create_users_table',1),
(27,'2019_09_01_0000021_add_picture_to_users_table',1),
(28,'2019_09_01_0000022_create_user_details_table',1),
(29,'2019_09_01_0000023_create_fees_limits_table',1),
(30,'2019_09_01_0000024_create_tickets_table',1),
(31,'2019_09_01_0000025_create_ticket_replies_table',1),
(32,'2019_09_01_0000026_create_files_table',1),
(33,'2019_09_01_0000027_create_merchants_table',1),
(34,'2019_09_01_0000028_create_merchant_apps_table',1),
(35,'2019_09_01_0000029__create_banks_table',1),
(36,'2019_09_01_0000029_create_merchant_payments_table',1),
(37,'2019_09_01_0000030_create_deposits_table',1),
(38,'2019_09_01_0000031_create_payout_settings_table',1),
(39,'2019_09_01_0000032_create_withdrawals_table',1),
(40,'2019_09_01_0000033_create_withdrawal_details_table',1),
(41,'2019_09_01_0000034_create_transfers_table',1),
(42,'2019_09_01_0000035_create_wallets_table',1),
(43,'2019_09_01_0000036_create_currency_exchanges_table',1),
(44,'2019_09_01_0000037_create_request_payments_table',1),
(45,'2019_09_01_0000038_create_transactions_table',1),
(46,'2019_09_01_0000039_create_disputes_table',1),
(47,'2019_09_01_0000040_create_dispute_discussions_table',1),
(48,'2019_09_01_0000043_create_app_tokens_table',1),
(49,'2019_09_01_0000044_create_app_transactions_infos_table',1),
(50,'2019_09_01_0000045_create_verify_users_table',1),
(51,'2019_09_01_0000046_create_device_logs_table',1),
(52,'2019_09_01_0000047_create_qr_codes_table',1),
(53,'2019_09_01_0000048_create_password_resets_table',1),
(54,'2019_09_01_0000049_create_document_verifications_table',1),
(55,'2019_09_01_000004_create_app_store_credentials_table',1),
(56,'2019_09_01_000005_create_languages_table',1),
(57,'2019_09_01_000007_create_email_templates_table',1),
(58,'2019_09_01_000009_create_pages_table',1),
(59,'2019_10_22_054304_create_notification_types_table',1),
(60,'2019_10_22_054339_create_notification_settings_table',1),
(61,'2020_01_01_134930_create_crypto_currencies_settings_table',1),
(62,'2020_01_04_131517_create_cryptoapi_logs_table',1),
(67,'2020_01_27_101740_create_sms_configs_table',2),
(69,'2021_04_01_170430_create_cryptocards_table',3);

/*Table structure for table `notification_settings` */

DROP TABLE IF EXISTS `notification_settings`;

CREATE TABLE `notification_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notification_type_id` int(10) unsigned NOT NULL,
  `recipient_type` varchar(191) DEFAULT NULL,
  `recipient` varchar(191) DEFAULT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notification_settings_notification_type_id_index` (`notification_type_id`),
  KEY `notification_settings_recipient_index` (`recipient`),
  KEY `notification_settings_status_index` (`status`),
  CONSTRAINT `notification_settings_notification_type_id_foreign` FOREIGN KEY (`notification_type_id`) REFERENCES `notification_settings` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `notification_settings` */

insert  into `notification_settings`(`id`,`notification_type_id`,`recipient_type`,`recipient`,`status`,`created_at`,`updated_at`) values 
(1,1,'email',NULL,'No',NULL,NULL),
(2,2,'email',NULL,'No',NULL,NULL),
(3,3,'email',NULL,'No',NULL,NULL),
(4,4,'email',NULL,'No',NULL,NULL),
(5,5,'email',NULL,'No',NULL,NULL),
(6,6,'email',NULL,'No',NULL,NULL),
(7,1,'sms',NULL,'No',NULL,NULL),
(8,2,'sms',NULL,'No',NULL,NULL),
(9,3,'sms',NULL,'No',NULL,NULL),
(10,4,'sms',NULL,'No',NULL,NULL),
(11,5,'sms',NULL,'No',NULL,NULL),
(12,6,'sms',NULL,'No',NULL,NULL);

/*Table structure for table `notification_types` */

DROP TABLE IF EXISTS `notification_types`;

CREATE TABLE `notification_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `alias` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `notification_types_name_unique` (`name`),
  UNIQUE KEY `notification_types_alias_unique` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `notification_types` */

insert  into `notification_types`(`id`,`name`,`alias`,`status`,`created_at`,`updated_at`) values 
(1,'Deposit','deposit','Active',NULL,NULL),
(2,'Payout','payout','Active',NULL,NULL),
(3,'Send','send','Active',NULL,NULL),
(4,'Request','request','Active',NULL,NULL),
(5,'Exchange','exchange','Active',NULL,NULL),
(6,'Payment','payment','Active',NULL,NULL);

/*Table structure for table `oauth_access_tokens` */

DROP TABLE IF EXISTS `oauth_access_tokens`;

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `oauth_access_tokens` */

/*Table structure for table `oauth_auth_codes` */

DROP TABLE IF EXISTS `oauth_auth_codes`;

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `oauth_auth_codes` */

/*Table structure for table `oauth_clients` */

DROP TABLE IF EXISTS `oauth_clients`;

CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `secret` varchar(100) NOT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `oauth_clients` */

insert  into `oauth_clients`(`id`,`user_id`,`name`,`secret`,`redirect`,`personal_access_client`,`password_client`,`revoked`,`created_at`,`updated_at`) values 
(1,NULL,'Laravel Personal Access Client','agkL4ISxlzHE5z2zS2vwqZqqoF7ker3HMXo7De3v','http://localhost',1,0,0,NULL,NULL),
(2,NULL,'Laravel Password Grant Client','TwF6YvwSCLuVejXhUQCAqMaPAqhHZ29sEhhFfsM9','http://localhost',0,1,0,NULL,NULL),
(3,NULL,'Laravel Personal Access Client','YWG63Yjp0bcf7iL45MgK75Yc5Tq18KS9rcv8ltBM','http://localhost',1,0,0,NULL,NULL);

/*Table structure for table `oauth_personal_access_clients` */

DROP TABLE IF EXISTS `oauth_personal_access_clients`;

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `oauth_personal_access_clients` */

insert  into `oauth_personal_access_clients`(`id`,`client_id`,`created_at`,`updated_at`) values 
(1,1,NULL,NULL),
(2,2,NULL,NULL),
(3,3,NULL,NULL);

/*Table structure for table `oauth_refresh_tokens` */

DROP TABLE IF EXISTS `oauth_refresh_tokens`;

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `oauth_refresh_tokens` */

/*Table structure for table `pages` */

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `position` varchar(40) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_url_unique` (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pages` */

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `password_resets` */

/*Table structure for table `payment_methods` */

DROP TABLE IF EXISTS `payment_methods`;

CREATE TABLE `payment_methods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `payment_methods` */

insert  into `payment_methods`(`id`,`name`,`status`) values 
(1,'Mts','Active'),
(2,'Stripe','Active'),
(3,'Paypal','Active'),
(4,'2Checkout','Active'),
(5,'PayUmoney','Active'),
(6,'Bank','Active'),
(7,'Coinpayments','Active'),
(8,'Payeer','Active'),
(9,'BlockIo','Active');

/*Table structure for table `payout_settings` */

DROP TABLE IF EXISTS `payout_settings`;

CREATE TABLE `payout_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `type` int(11) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `account_name` varchar(191) DEFAULT NULL,
  `account_number` varchar(191) DEFAULT NULL,
  `bank_branch_name` varchar(191) DEFAULT NULL,
  `bank_branch_city` varchar(191) DEFAULT NULL,
  `bank_branch_address` varchar(191) DEFAULT NULL,
  `country` int(10) unsigned DEFAULT NULL,
  `swift_code` varchar(191) DEFAULT NULL,
  `bank_name` varchar(191) DEFAULT NULL,
  `default_payout` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=not default, 1=default',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `payout_settings` */

insert  into `payout_settings`(`id`,`user_id`,`type`,`email`,`account_name`,`account_number`,`bank_branch_name`,`bank_branch_city`,`bank_branch_address`,`country`,`swift_code`,`bank_name`,`default_payout`,`created_at`,`updated_at`) values 
(1,1,3,'test@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2021-02-27 19:24:20','2021-02-27 19:24:20');

/*Table structure for table `permission_role` */

DROP TABLE IF EXISTS `permission_role`;

CREATE TABLE `permission_role` (
  `role_id` int(10) unsigned NOT NULL,
  `permission_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `permission_role` */

insert  into `permission_role`(`role_id`,`permission_id`) values 
(1,1),
(1,2),
(1,3),
(1,4),
(1,5),
(1,6),
(1,7),
(1,8),
(1,9),
(1,10),
(1,11),
(1,12),
(1,13),
(1,14),
(1,15),
(1,16),
(1,17),
(1,18),
(1,19),
(1,20),
(1,21),
(1,22),
(1,23),
(1,24),
(1,29),
(1,30),
(1,31),
(1,32),
(1,33),
(1,34),
(1,35),
(1,36),
(1,37),
(1,38),
(1,39),
(1,40),
(1,41),
(1,42),
(1,43),
(1,44),
(1,45),
(1,46),
(1,47),
(1,48),
(1,49),
(1,50),
(1,51),
(1,52),
(1,53),
(1,54),
(1,55),
(1,56),
(1,57),
(1,58),
(1,59),
(1,60),
(1,61),
(1,62),
(1,63),
(1,64),
(1,65),
(1,66),
(1,67),
(1,68),
(1,69),
(1,70),
(1,71),
(1,72),
(1,73),
(1,74),
(1,75),
(1,76),
(1,77),
(1,78),
(1,79),
(1,80),
(1,85),
(1,86),
(1,87),
(1,88),
(1,89),
(1,90),
(1,91),
(1,92),
(1,93),
(1,94),
(1,95),
(1,96),
(1,97),
(1,98),
(1,99),
(1,100),
(1,101),
(1,102),
(1,103),
(1,104),
(1,105),
(1,106),
(1,107),
(1,108),
(2,109),
(3,109),
(2,110),
(3,110),
(2,111),
(3,111),
(2,112),
(3,112),
(2,113),
(3,113),
(2,115),
(3,115),
(3,116),
(3,117),
(1,118),
(1,119),
(1,120),
(1,121),
(1,122),
(1,123),
(1,124),
(1,125),
(1,126),
(1,127),
(1,128),
(1,129),
(1,130),
(1,131),
(1,132),
(1,133),
(2,134),
(3,134),
(2,135),
(3,135),
(2,136),
(3,136),
(1,137),
(1,138),
(1,139),
(1,140),
(1,145),
(1,146),
(1,147),
(1,148),
(1,149),
(1,150),
(1,151),
(1,152),
(1,153),
(1,154),
(1,155),
(1,156),
(1,157),
(1,158),
(1,159),
(1,160),
(1,161),
(1,162),
(1,163),
(1,164),
(1,169),
(1,170),
(1,171),
(1,172),
(1,173),
(1,174),
(1,175),
(1,176),
(1,177),
(2,177),
(3,177),
(1,178),
(1,179),
(1,180),
(1,181);

/*Table structure for table `permissions` */

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group` varchar(100) NOT NULL,
  `name` varchar(191) NOT NULL,
  `display_name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `user_type` enum('Admin','User') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8;

/*Data for the table `permissions` */

insert  into `permissions`(`id`,`group`,`name`,`display_name`,`description`,`user_type`,`created_at`,`updated_at`) values 
(1,'User','view_user','View User','View User','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(2,'User','add_user','Add User','Add User','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(3,'User','edit_user','Edit User','Edit User','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(4,'User','delete_user','Delete User','Delete User','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(5,'Transaction','view_transaction','View Transaction','View Transaction','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(6,'Transaction','add_transaction',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(7,'Transaction','edit_transaction','Edit Transaction','Edit Transaction','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(8,'Transaction','delete_transaction',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(9,'Deposit','view_deposit','View Deposit','View Deposit','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(10,'Deposit','add_deposit',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(11,'Deposit','edit_deposit','Edit Deposit','Edit Deposit','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(12,'Deposit','delete_deposit',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(13,'Withdrawal','view_withdrawal','View Withdrawal','View Withdrawal','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(14,'Withdrawal','add_withdrawal',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(15,'Withdrawal','edit_withdrawal','Edit Withdrawal','Edit Withdrawal','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(16,'Withdrawal','delete_withdrawal',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(17,'Transfer','view_transfer','View Transfer','View Transfer','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(18,'Transfer','add_transfer',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(19,'Transfer','edit_transfer','Edit Transfer','Edit Transfer','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(20,'Transfer','delete_transfer',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(21,'Exchange','view_exchange','View Exchange','View Exchange','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(22,'Exchange','add_exchange',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(23,'Exchange','edit_exchange','Edit Exchange','Edit Exchange','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(24,'Exchange','delete_exchange',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(29,'Request Payment','view_request_payment','View Request Payment','View Request Payment','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(30,'Request Payment','add_request_payment',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(31,'Request Payment','edit_request_payment','Edit Request Payment','Edit Request Payment','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(32,'Request Payment','delete_request_payment',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(33,'Revenue','view_revenue','View Revenue','View Revenue','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(34,'Revenue','add_revenue',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(35,'Revenue','edit_revenue',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(36,'Revenue','delete_revenue',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(37,'Email Template','view_email_template','View Email Template','View Email Template','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(38,'Email Template','add_email_template',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(39,'Email Template','edit_email_template','Edit Email Template','Edit Email Template','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(40,'Email Template','delete_email_template',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(41,'Activity Log','view_activity_log','View Activity Log','View Activity Log','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(42,'Activity Log','add_activity_log',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(43,'Activity Log','edit_activity_log',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(44,'Activity Log','delete_activity_log',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(45,'General Setting','view_general_setting',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(46,'General Setting','add_general_setting',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(47,'General Setting','edit_general_setting','Edit General Setting','Edit General Setting','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(48,'General Setting','delete_general_setting',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(49,'Social Links','view_social_links','View Social Links','View Social Links','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(50,'Social Links','add_social_links',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(51,'Social Links','edit_social_links','Edit Social Links','Edit Social Links','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(52,'Social Links','delete_social_links',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(53,'API Credentials','view_api_credentials','View API Credentials','View API Credentials','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(54,'API Credentials','add_api_credentials',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(55,'API Credentials','edit_api_credentials','Edit API Credentials','Edit API Credentials','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(56,'API Credentials','delete_api_credentials',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(57,'Payment Methods','view_payment_methods','View Payment Methods','View Payment Methods','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(58,'Payment Methods','add_payment_methods',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(59,'Payment Methods','edit_payment_methods','Edit Payment Methods','Edit Payment Methods','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(60,'Payment Methods','delete_payment_methods',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(61,'Email Setting','view_email_setting','View Email Setting','View Email Setting','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(62,'Email Setting','add_email_setting',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(63,'Email Setting','edit_email_setting','Edit Email Setting','Edit Email Setting','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(64,'Email Setting','delete_email_setting',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(65,'Currency','view_currency','View Currency','View Currency','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(66,'Currency','add_currency','Add Currency','Add Currency','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(67,'Currency','edit_currency','Edit Currency','Edit Currency','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(68,'Currency','delete_currency','Delete Currency','Delete Currency','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(69,'Country','view_country','View Country','View Country','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(70,'Country','add_country','Add Country','Add Country','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(71,'Country','edit_country','Edit Country','Edit Country','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(72,'Country','delete_country','Delete Country','Delete Country','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(73,'Language','view_language','View Language','View Language','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(74,'Language','add_language','Add Language','Add Language','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(75,'Language','edit_language','Edit Language','Edit Language','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(76,'Language','delete_language','Delete Language','Delete Language','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(77,'Role','view_role','View Role','View Role','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(78,'Role','add_role','Add Role','Add Role','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(79,'Role','edit_role','Edit Role','Edit Role','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(80,'Role','delete_role','Delete Role','Delete Role','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(85,'Database Backup','view_database_backup','View Database Backup','View Database Backup','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(86,'Database Backup','add_database_backup','Add Database Backup','Add Database Backup','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(87,'Database Backup','edit_database_backup','Edit Database Backup','Edit Database Backup','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(88,'Database Backup','delete_database_backup',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(89,'Meta','view_meta','View Meta','View Meta','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(90,'Meta','add_meta',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(91,'Meta','edit_meta','Edit Meta','Edit Meta','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(92,'Meta','delete_meta',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(93,'Page','view_page','View Page','View Page','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(94,'Page','add_page','Add Page','Add Page','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(95,'Page','edit_page','Edit Page','Edit Page','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(96,'Page','delete_page','Delete Page','Delete Page','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(97,'Preference','view_preference','View Preference','View Preference','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(98,'Preference','add_preference',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(99,'Preference','edit_preference','Edit Preference','Edit Preference','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(100,'Preference','delete_preference',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(101,'Merchant','view_merchant','View Merchant','View Merchant','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(102,'Merchant','add_merchant',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(103,'Merchant','edit_merchant','Edit Merchant','Edit Merchant','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(104,'Merchant','delete_merchant',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(105,'Merchant Payment','view_merchant_payment','View Merchant Payment','View Merchant Payment','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(106,'Merchant Payment','add_merchant_payment',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(107,'Merchant Payment','edit_merchant_payment','Edit Merchant Payment','Edit Merchant Payment','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(108,'Merchant Payment','delete_merchant_payment',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(109,'Transaction','manage_transaction','Manage Transaction','Manage Transaction','User','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(110,'Deposit','manage_deposit','Manage Deposit','Manage Deposit','User','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(111,'Withdrawal','manage_withdrawal','Manage Withdrawal','Manage Withdrawal','User','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(112,'Transfer','manage_transfer','Manage Transfer','Manage Transfer','User','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(113,'Exchange','manage_exchange','Manage Exchange','Manage Exchange','User','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(115,'Request Payment','manage_request_payment','Manage Request Payment','Manage Request Payment','User','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(116,'Merchant','manage_merchant','Manage Merchant','Manage Merchant','User','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(117,'Merchant Payment','manage_merchant_payment','Manage Merchant Payment','Manage Merchant Payment','User','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(118,'User Group','view_group','View User Group','View User Group','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(119,'User Group','add_group','Add User Group','Add User Group','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(120,'User Group','edit_group','Edit User Group','Edit User Group','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(121,'User Group','delete_group','Delete User Group','Delete User Group','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(122,'Admins','view_admins','View Admins','View Admins','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(123,'Admins','add_admin','Add Admin','Add Admin','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(124,'Admins','edit_admin','Edit Admin','Edit Admin','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(125,'Admins','delete_admin','Delete Admin','Delete Admin','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(126,'Disputes','view_disputes','View Disputes','View Disputes','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(127,'Disputes','add_dispute',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(128,'Disputes','edit_dispute','Edit Dispute','Edit Dispute','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(129,'Disputes','delete_dispute',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(130,'Tickets','view_tickets','View Tickets','View Tickets','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(131,'Tickets','add_ticket','Add Ticket','Add Ticket','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(132,'Tickets','edit_ticket','Edit Ticket','Edit Ticket','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(133,'Tickets','delete_ticket','Delete Ticket','Delete Ticket','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(134,'Dispute','manage_dispute','Manage Dispute','Manage Dispute','User','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(135,'Ticket','manage_ticket','Manage Ticket','Manage Ticket','User','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(136,'Settings','manage_setting','Manage Settings','Manage Settings','User','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(137,'AppStore Credentials','view_appstore_credentials','View AppStore Credentials','View AppStore Credentials','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(138,'AppStore Credentials','add_appstore_credentials',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(139,'AppStore Credentials','edit_appstore_credentials','Edit AppStore Credentials','Edit AppStore Credentials','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(140,'AppStore Credentials','delete_appstore_credentials',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(145,'Merchant Groups','view_merchant_group','View Merchant Group','View Merchant Group','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(146,'Merchant Groups','add_merchant_group','Add Merchant Group','Add Merchant Group','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(147,'Merchant Groups','edit_merchant_group','Edit Merchant Group','Edit Merchant Group','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(148,'Merchant Groups','delete_merchant_group','Delete Merchant Group','Delete Merchant Group','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(149,'SMS Setting','view_sms_setting','View SMS Setting','View SMS Setting','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(150,'SMS Setting','add_sms_setting',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(151,'SMS Setting','edit_sms_setting','Edit SMS Setting','Edit SMS Setting','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(152,'SMS Setting','delete_sms_setting',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(153,'Sms Template','view_sms_template','View Sms Template','View Sms Template','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(154,'Sms Template','add_sms_template',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(155,'Sms Template','edit_sms_template','Edit Sms Template','Edit Sms Template','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(156,'Sms Template','delete_sms_template',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(157,'Identity Verificattion','view_identity_verfication','View Identity Verificattion','View Identity Verificattion','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(158,'Identity Verificattion','add_identity_verfication',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(159,'Identity Verificattion','edit_identity_verfication','Edit Identity Verificattion','Edit Identity Verificattion','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(160,'Identity Verificattion','delete_identity_verfication',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(161,'Address Verificattion','view_address_verfication','View Address Verificattion','View Address Verificattion','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(162,'Address Verificattion','add_address_verfication',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(163,'Address Verificattion','edit_address_verfication','Edit Address Verificattion','Edit Address Verificattion','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(164,'Address Verificattion','delete_address_verfication',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(165,'Enable WooCommerce','view_enable_woocommerce','View Enable WooCommerce','View Enable WooCommerce','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(166,'Enable WooCommerce','add_enable_woocommerce',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(167,'Enable WooCommerce','edit_enable_woocommerce','Edit Enable WooCommerce','Edit Enable WooCommerce','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(168,'Enable WooCommerce','delete_enable_woocommerce',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(169,'BlockIo Settings','view_blockio_settings','View BlockIo Settings','View BlockIo Settings','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(170,'BlockIo Settings','add_blockio_settings',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(171,'BlockIo Settings','edit_blockio_settings','Edit BlockIo Settings','Edit BlockIo Settings','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(172,'BlockIo Settings','delete_blockio_settings',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(173,'Crypto Transactions','view_crypto_transactions','View Crypto Transactions','View Crypto Transactions','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(174,'Crypto Transactions','add_crypto_transactions',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(175,'Crypto Transactions','edit_crypto_transactions',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(176,'Crypto Transactions','delete_crypto_transactions',NULL,NULL,'Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(177,'Cryptocard','manage_cryptocard','Manage Cryptocard','Manage Cryptocard','User',NULL,NULL),
(178,'Cryptocard','view_cryptocard','View Cryptocard','View Cryptocard','Admin','2021-02-27 19:11:32','2021-02-27 19:11:32'),
(179,'Cryptocard','add_cryptocard','Add Cryptocard','Add Cryptocard','Admin',NULL,NULL),
(180,'Cryptocard','edit_cryptocard','Edit Cryptocard','Edit Cryptocard','Admin',NULL,NULL),
(181,'Cryptocard','delete_cryptocard','Delete Cryptocard','Delete Cryptocard','Admin',NULL,NULL);

/*Table structure for table `preferences` */

DROP TABLE IF EXISTS `preferences`;

CREATE TABLE `preferences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(191) NOT NULL,
  `field` varchar(30) NOT NULL,
  `value` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `preferences` */

insert  into `preferences`(`id`,`category`,`field`,`value`) values 
(1,'preference','row_per_page','50'),
(2,'preference','date_format','1'),
(3,'preference','date_sepa','-'),
(4,'preference','soft_name','Crypto Austria'),
(5,'company','site_short_name','PM'),
(6,'preference','percentage','2'),
(7,'preference','quantity','0'),
(8,'preference','date_format_type','dd-mm-yyyy'),
(9,'company','company_name','CryptoAustria'),
(10,'company','company_email','office@creo-it.com'),
(11,'company','dflt_lang','en'),
(12,'preference','default_money_format','&nbsp;&#36;'),
(13,'preference','money_format','after'),
(14,'preference','decimal_format_amount','2'),
(15,'preference','thousand_separator','.'),
(16,'preference','dflt_timezone','Europe/Vienna'),
(17,'preference','verification_mail','Disabled'),
(18,'preference','phone_verification','Disabled'),
(19,'preference','two_step_verification','disabled'),
(20,'preference','processed_by','email'),
(21,'preference','enable_currencies','fiat_and_crypto');

/*Table structure for table `qr_codes` */

DROP TABLE IF EXISTS `qr_codes`;

CREATE TABLE `qr_codes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `type` enum('user','merchant') NOT NULL,
  `qr_code` varchar(16) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `qr_codes_user_id_index` (`user_id`),
  CONSTRAINT `qr_codes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `qr_codes` */

/*Table structure for table `reasons` */

DROP TABLE IF EXISTS `reasons`;

CREATE TABLE `reasons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `reasons` */

insert  into `reasons`(`id`,`title`) values 
(1,'I have not received the goods'),
(2,'Description does not match with product');

/*Table structure for table `request_payments` */

DROP TABLE IF EXISTS `request_payments`;

CREATE TABLE `request_payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `receiver_id` int(10) unsigned DEFAULT NULL,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `uuid` varchar(13) DEFAULT NULL COMMENT 'Unique ID (For Each Payment Request)',
  `amount` decimal(20,8) DEFAULT 0.00000000,
  `accept_amount` decimal(20,8) DEFAULT 0.00000000,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `purpose` varchar(191) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `status` enum('Pending','Success','Refund','Blocked') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `request_payments_user_id_index` (`user_id`),
  KEY `request_payments_receiver_id_index` (`receiver_id`),
  KEY `request_payments_currency_id_index` (`currency_id`),
  CONSTRAINT `request_payments_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `request_payments_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `request_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `request_payments` */

/*Table structure for table `role_user` */

DROP TABLE IF EXISTS `role_user`;

CREATE TABLE `role_user` (
  `user_id` int(11) NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `user_type` enum('Admin','User') NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  KEY `role_user_user_id_index` (`user_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `role_user` */

insert  into `role_user`(`user_id`,`role_id`,`user_type`) values 
(1,1,'Admin'),
(1,3,'User'),
(2,1,'Admin'),
(2,3,'User'),
(3,1,'Admin'),
(3,3,'User'),
(4,1,'Admin'),
(4,2,'User'),
(4,3,'User');

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `display_name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `user_type` enum('Admin','User') NOT NULL,
  `customer_type` enum('user','merchant') NOT NULL,
  `is_default` enum('No','Yes') NOT NULL DEFAULT 'No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `roles` */

insert  into `roles`(`id`,`name`,`display_name`,`description`,`user_type`,`customer_type`,`is_default`,`created_at`,`updated_at`) values 
(1,'Admin','Admin','Admin','Admin','user','No',NULL,NULL),
(2,'Default User','Default User','Default User','User','user','Yes',NULL,NULL),
(3,'Merchant Regular','Merchant Regular','Merchant Regular','User','merchant','Yes',NULL,NULL);

/*Table structure for table `settings` */

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` text DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

/*Data for the table `settings` */

insert  into `settings`(`id`,`name`,`value`,`type`) values 
(1,'name','Bitcoincards','general'),
(2,'logo','1614442381_logo.png','general'),
(3,'favicon',NULL,'general'),
(4,'head_code','Bitcoincards','general'),
(5,'default_currency','3','general'),
(6,'default_language','1','general'),
(7,'client_id','id','PayPal'),
(8,'client_secret','secrect','PayPal'),
(9,'signature','sign','PayPal'),
(10,'mode','sandbox','PayPal'),
(11,'publishable','','Stripe'),
(12,'secret','','Stripe'),
(13,'driver','sendmail','email'),
(14,'host','','email'),
(15,'port','587','email'),
(16,'from_address','','email'),
(17,'from_name','','email'),
(18,'encryption','tls','email'),
(19,'username','','email'),
(20,'password','','email'),
(21,'site_key','','recaptcha'),
(22,'secret_key','','recaptcha'),
(23,'seller_id','','2Checkout'),
(24,'mode','','2Checkout'),
(25,'mode','','PayUmoney'),
(26,'key','','PayUmoney'),
(27,'salt','','PayUmoney'),
(28,'merchant_id','','Coinpayments'),
(29,'private_key','','Coinpayments'),
(30,'public_key','','Coinpayments'),
(31,'default_timezone','Asia/Dhaka','general'),
(32,'has_captcha','Disabled','general'),
(33,'login_via','email_only','general'),
(34,'default_crypto_currencies','5','general');

/*Table structure for table `sms_configs` */

DROP TABLE IF EXISTS `sms_configs`;

CREATE TABLE `sms_configs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(8) NOT NULL,
  `credentials` text NOT NULL,
  `status` varchar(8) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sms_configs_type_index` (`type`),
  KEY `sms_configs_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sms_configs` */

/*Table structure for table `socials` */

DROP TABLE IF EXISTS `socials`;

CREATE TABLE `socials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `socials` */

insert  into `socials`(`id`,`name`,`icon`,`url`) values 
(1,'facebook','<i class=\"ti-facebook\" aria-hidden=\"true\"></i>','#'),
(2,'google_plus','<i class=\"ti-google plus\" aria-hidden=\"true\"></i>','#'),
(3,'twitter','<i class=\"ti-twitter\" aria-hidden=\"true\"></i>','#'),
(4,'linkedin','<i class=\"ti-linkedin\" aria-hidden=\"true\"></i>','#'),
(5,'pinterest','<i class=\"ti-pinterest\" aria-hidden=\"true\"></i>','#'),
(6,'youtube','<i class=\"ti-youtube\" aria-hidden=\"true\"></i>','#'),
(7,'instagram','<i class=\"ti-instagram\" aria-hidden=\"true\"></i>','#');

/*Table structure for table `ticket_replies` */

DROP TABLE IF EXISTS `ticket_replies`;

CREATE TABLE `ticket_replies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ticket_id` int(10) unsigned DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `user_type` enum('admin','user') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ticket_replies_admin_id_index` (`admin_id`),
  KEY `ticket_replies_user_id_index` (`user_id`),
  KEY `ticket_replies_ticket_id_index` (`ticket_id`),
  CONSTRAINT `ticket_replies_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ticket_replies_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ticket_replies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ticket_replies` */

/*Table structure for table `ticket_statuses` */

DROP TABLE IF EXISTS `ticket_statuses`;

CREATE TABLE `ticket_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) DEFAULT NULL,
  `color` varchar(7) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `ticket_statuses` */

insert  into `ticket_statuses`(`id`,`name`,`color`,`is_default`) values 
(1,'Open','00a65a',0),
(2,'In Progress','3c8dbc',1),
(3,'Hold','f39c12',0),
(4,'Closed','dd4b39',0);

/*Table structure for table `tickets` */

DROP TABLE IF EXISTS `tickets`;

CREATE TABLE `tickets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ticket_status_id` int(10) unsigned DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL,
  `priority` enum('Low','Normal','High') NOT NULL,
  `last_reply` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tickets_admin_id_index` (`admin_id`),
  KEY `tickets_user_id_index` (`user_id`),
  KEY `tickets_ticket_status_id_index` (`ticket_status_id`),
  CONSTRAINT `tickets_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tickets_ticket_status_id_foreign` FOREIGN KEY (`ticket_status_id`) REFERENCES `ticket_statuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tickets` */

/*Table structure for table `time_zones` */

DROP TABLE IF EXISTS `time_zones`;

CREATE TABLE `time_zones` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `zone` varchar(50) DEFAULT NULL,
  `gmt` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=426 DEFAULT CHARSET=utf8;

/*Data for the table `time_zones` */

insert  into `time_zones`(`id`,`zone`,`gmt`,`created_at`,`updated_at`) values 
(1,'Africa/Abidjan','UTC/GMT +00:00',NULL,NULL),
(2,'Africa/Accra','UTC/GMT +00:00',NULL,NULL),
(3,'Africa/Addis_Ababa','UTC/GMT +03:00',NULL,NULL),
(4,'Africa/Algiers','UTC/GMT +01:00',NULL,NULL),
(5,'Africa/Asmara','UTC/GMT +03:00',NULL,NULL),
(6,'Africa/Bamako','UTC/GMT +00:00',NULL,NULL),
(7,'Africa/Bangui','UTC/GMT +01:00',NULL,NULL),
(8,'Africa/Banjul','UTC/GMT +00:00',NULL,NULL),
(9,'Africa/Bissau','UTC/GMT +00:00',NULL,NULL),
(10,'Africa/Blantyre','UTC/GMT +02:00',NULL,NULL),
(11,'Africa/Brazzaville','UTC/GMT +01:00',NULL,NULL),
(12,'Africa/Bujumbura','UTC/GMT +02:00',NULL,NULL),
(13,'Africa/Cairo','UTC/GMT +02:00',NULL,NULL),
(14,'Africa/Casablanca','UTC/GMT +01:00',NULL,NULL),
(15,'Africa/Ceuta','UTC/GMT +01:00',NULL,NULL),
(16,'Africa/Conakry','UTC/GMT +00:00',NULL,NULL),
(17,'Africa/Dakar','UTC/GMT +00:00',NULL,NULL),
(18,'Africa/Dar_es_Salaam','UTC/GMT +03:00',NULL,NULL),
(19,'Africa/Djibouti','UTC/GMT +03:00',NULL,NULL),
(20,'Africa/Douala','UTC/GMT +01:00',NULL,NULL),
(21,'Africa/El_Aaiun','UTC/GMT +01:00',NULL,NULL),
(22,'Africa/Freetown','UTC/GMT +00:00',NULL,NULL),
(23,'Africa/Gaborone','UTC/GMT +02:00',NULL,NULL),
(24,'Africa/Harare','UTC/GMT +02:00',NULL,NULL),
(25,'Africa/Johannesburg','UTC/GMT +02:00',NULL,NULL),
(26,'Africa/Juba','UTC/GMT +02:00',NULL,NULL),
(27,'Africa/Kampala','UTC/GMT +03:00',NULL,NULL),
(28,'Africa/Khartoum','UTC/GMT +02:00',NULL,NULL),
(29,'Africa/Kigali','UTC/GMT +02:00',NULL,NULL),
(30,'Africa/Kinshasa','UTC/GMT +01:00',NULL,NULL),
(31,'Africa/Lagos','UTC/GMT +01:00',NULL,NULL),
(32,'Africa/Libreville','UTC/GMT +01:00',NULL,NULL),
(33,'Africa/Lome','UTC/GMT +00:00',NULL,NULL),
(34,'Africa/Luanda','UTC/GMT +01:00',NULL,NULL),
(35,'Africa/Lubumbashi','UTC/GMT +02:00',NULL,NULL),
(36,'Africa/Lusaka','UTC/GMT +02:00',NULL,NULL),
(37,'Africa/Malabo','UTC/GMT +01:00',NULL,NULL),
(38,'Africa/Maputo','UTC/GMT +02:00',NULL,NULL),
(39,'Africa/Maseru','UTC/GMT +02:00',NULL,NULL),
(40,'Africa/Mbabane','UTC/GMT +02:00',NULL,NULL),
(41,'Africa/Mogadishu','UTC/GMT +03:00',NULL,NULL),
(42,'Africa/Monrovia','UTC/GMT +00:00',NULL,NULL),
(43,'Africa/Nairobi','UTC/GMT +03:00',NULL,NULL),
(44,'Africa/Ndjamena','UTC/GMT +01:00',NULL,NULL),
(45,'Africa/Niamey','UTC/GMT +01:00',NULL,NULL),
(46,'Africa/Nouakchott','UTC/GMT +00:00',NULL,NULL),
(47,'Africa/Ouagadougou','UTC/GMT +00:00',NULL,NULL),
(48,'Africa/Porto-Novo','UTC/GMT +01:00',NULL,NULL),
(49,'Africa/Sao_Tome','UTC/GMT +00:00',NULL,NULL),
(50,'Africa/Tripoli','UTC/GMT +02:00',NULL,NULL),
(51,'Africa/Tunis','UTC/GMT +01:00',NULL,NULL),
(52,'Africa/Windhoek','UTC/GMT +02:00',NULL,NULL),
(53,'America/Adak','UTC/GMT -10:00',NULL,NULL),
(54,'America/Anchorage','UTC/GMT -09:00',NULL,NULL),
(55,'America/Anguilla','UTC/GMT -04:00',NULL,NULL),
(56,'America/Antigua','UTC/GMT -04:00',NULL,NULL),
(57,'America/Araguaina','UTC/GMT -03:00',NULL,NULL),
(58,'America/Argentina/Buenos_Aires','UTC/GMT -03:00',NULL,NULL),
(59,'America/Argentina/Catamarca','UTC/GMT -03:00',NULL,NULL),
(60,'America/Argentina/Cordoba','UTC/GMT -03:00',NULL,NULL),
(61,'America/Argentina/Jujuy','UTC/GMT -03:00',NULL,NULL),
(62,'America/Argentina/La_Rioja','UTC/GMT -03:00',NULL,NULL),
(63,'America/Argentina/Mendoza','UTC/GMT -03:00',NULL,NULL),
(64,'America/Argentina/Rio_Gallegos','UTC/GMT -03:00',NULL,NULL),
(65,'America/Argentina/Salta','UTC/GMT -03:00',NULL,NULL),
(66,'America/Argentina/San_Juan','UTC/GMT -03:00',NULL,NULL),
(67,'America/Argentina/San_Luis','UTC/GMT -03:00',NULL,NULL),
(68,'America/Argentina/Tucuman','UTC/GMT -03:00',NULL,NULL),
(69,'America/Argentina/Ushuaia','UTC/GMT -03:00',NULL,NULL),
(70,'America/Aruba','UTC/GMT -04:00',NULL,NULL),
(71,'America/Asuncion','UTC/GMT -03:00',NULL,NULL),
(72,'America/Atikokan','UTC/GMT -05:00',NULL,NULL),
(73,'America/Bahia','UTC/GMT -03:00',NULL,NULL),
(74,'America/Bahia_Banderas','UTC/GMT -06:00',NULL,NULL),
(75,'America/Barbados','UTC/GMT -04:00',NULL,NULL),
(76,'America/Belem','UTC/GMT -03:00',NULL,NULL),
(77,'America/Belize','UTC/GMT -06:00',NULL,NULL),
(78,'America/Blanc-Sablon','UTC/GMT -04:00',NULL,NULL),
(79,'America/Boa_Vista','UTC/GMT -04:00',NULL,NULL),
(80,'America/Bogota','UTC/GMT -05:00',NULL,NULL),
(81,'America/Boise','UTC/GMT -07:00',NULL,NULL),
(82,'America/Cambridge_Bay','UTC/GMT -07:00',NULL,NULL),
(83,'America/Campo_Grande','UTC/GMT -04:00',NULL,NULL),
(84,'America/Cancun','UTC/GMT -05:00',NULL,NULL),
(85,'America/Caracas','UTC/GMT -04:00',NULL,NULL),
(86,'America/Cayenne','UTC/GMT -03:00',NULL,NULL),
(87,'America/Cayman','UTC/GMT -05:00',NULL,NULL),
(88,'America/Chicago','UTC/GMT -06:00',NULL,NULL),
(89,'America/Chihuahua','UTC/GMT -07:00',NULL,NULL),
(90,'America/Costa_Rica','UTC/GMT -06:00',NULL,NULL),
(91,'America/Creston','UTC/GMT -07:00',NULL,NULL),
(92,'America/Cuiaba','UTC/GMT -04:00',NULL,NULL),
(93,'America/Curacao','UTC/GMT -04:00',NULL,NULL),
(94,'America/Danmarkshavn','UTC/GMT +00:00',NULL,NULL),
(95,'America/Dawson','UTC/GMT -07:00',NULL,NULL),
(96,'America/Dawson_Creek','UTC/GMT -07:00',NULL,NULL),
(97,'America/Denver','UTC/GMT -07:00',NULL,NULL),
(98,'America/Detroit','UTC/GMT -05:00',NULL,NULL),
(99,'America/Dominica','UTC/GMT -04:00',NULL,NULL),
(100,'America/Edmonton','UTC/GMT -07:00',NULL,NULL),
(101,'America/Eirunepe','UTC/GMT -05:00',NULL,NULL),
(102,'America/El_Salvador','UTC/GMT -06:00',NULL,NULL),
(103,'America/Fort_Nelson','UTC/GMT -07:00',NULL,NULL),
(104,'America/Fortaleza','UTC/GMT -03:00',NULL,NULL),
(105,'America/Glace_Bay','UTC/GMT -04:00',NULL,NULL),
(106,'America/Goose_Bay','UTC/GMT -04:00',NULL,NULL),
(107,'America/Grand_Turk','UTC/GMT -05:00',NULL,NULL),
(108,'America/Grenada','UTC/GMT -04:00',NULL,NULL),
(109,'America/Guadeloupe','UTC/GMT -04:00',NULL,NULL),
(110,'America/Guatemala','UTC/GMT -06:00',NULL,NULL),
(111,'America/Guayaquil','UTC/GMT -05:00',NULL,NULL),
(112,'America/Guyana','UTC/GMT -04:00',NULL,NULL),
(113,'America/Halifax','UTC/GMT -04:00',NULL,NULL),
(114,'America/Havana','UTC/GMT -05:00',NULL,NULL),
(115,'America/Hermosillo','UTC/GMT -07:00',NULL,NULL),
(116,'America/Indiana/Indianapolis','UTC/GMT -05:00',NULL,NULL),
(117,'America/Indiana/Knox','UTC/GMT -06:00',NULL,NULL),
(118,'America/Indiana/Marengo','UTC/GMT -05:00',NULL,NULL),
(119,'America/Indiana/Petersburg','UTC/GMT -05:00',NULL,NULL),
(120,'America/Indiana/Tell_City','UTC/GMT -06:00',NULL,NULL),
(121,'America/Indiana/Vevay','UTC/GMT -05:00',NULL,NULL),
(122,'America/Indiana/Vincennes','UTC/GMT -05:00',NULL,NULL),
(123,'America/Indiana/Winamac','UTC/GMT -05:00',NULL,NULL),
(124,'America/Inuvik','UTC/GMT -07:00',NULL,NULL),
(125,'America/Iqaluit','UTC/GMT -05:00',NULL,NULL),
(126,'America/Jamaica','UTC/GMT -05:00',NULL,NULL),
(127,'America/Juneau','UTC/GMT -09:00',NULL,NULL),
(128,'America/Kentucky/Louisville','UTC/GMT -05:00',NULL,NULL),
(129,'America/Kentucky/Monticello','UTC/GMT -05:00',NULL,NULL),
(130,'America/Kralendijk','UTC/GMT -04:00',NULL,NULL),
(131,'America/La_Paz','UTC/GMT -04:00',NULL,NULL),
(132,'America/Lima','UTC/GMT -05:00',NULL,NULL),
(133,'America/Los_Angeles','UTC/GMT -08:00',NULL,NULL),
(134,'America/Lower_Princes','UTC/GMT -04:00',NULL,NULL),
(135,'America/Maceio','UTC/GMT -03:00',NULL,NULL),
(136,'America/Managua','UTC/GMT -06:00',NULL,NULL),
(137,'America/Manaus','UTC/GMT -04:00',NULL,NULL),
(138,'America/Marigot','UTC/GMT -04:00',NULL,NULL),
(139,'America/Martinique','UTC/GMT -04:00',NULL,NULL),
(140,'America/Matamoros','UTC/GMT -06:00',NULL,NULL),
(141,'America/Mazatlan','UTC/GMT -07:00',NULL,NULL),
(142,'America/Menominee','UTC/GMT -06:00',NULL,NULL),
(143,'America/Merida','UTC/GMT -06:00',NULL,NULL),
(144,'America/Metlakatla','UTC/GMT -09:00',NULL,NULL),
(145,'America/Mexico_City','UTC/GMT -06:00',NULL,NULL),
(146,'America/Miquelon','UTC/GMT -03:00',NULL,NULL),
(147,'America/Moncton','UTC/GMT -04:00',NULL,NULL),
(148,'America/Monterrey','UTC/GMT -06:00',NULL,NULL),
(149,'America/Montevideo','UTC/GMT -03:00',NULL,NULL),
(150,'America/Montserrat','UTC/GMT -04:00',NULL,NULL),
(151,'America/Nassau','UTC/GMT -05:00',NULL,NULL),
(152,'America/New_York','UTC/GMT -05:00',NULL,NULL),
(153,'America/Nipigon','UTC/GMT -05:00',NULL,NULL),
(154,'America/Nome','UTC/GMT -09:00',NULL,NULL),
(155,'America/Noronha','UTC/GMT -02:00',NULL,NULL),
(156,'America/North_Dakota/Beulah','UTC/GMT -06:00',NULL,NULL),
(157,'America/North_Dakota/Center','UTC/GMT -06:00',NULL,NULL),
(158,'America/North_Dakota/New_Salem','UTC/GMT -06:00',NULL,NULL),
(159,'America/Nuuk','UTC/GMT -03:00',NULL,NULL),
(160,'America/Ojinaga','UTC/GMT -07:00',NULL,NULL),
(161,'America/Panama','UTC/GMT -05:00',NULL,NULL),
(162,'America/Pangnirtung','UTC/GMT -05:00',NULL,NULL),
(163,'America/Paramaribo','UTC/GMT -03:00',NULL,NULL),
(164,'America/Phoenix','UTC/GMT -07:00',NULL,NULL),
(165,'America/Port-au-Prince','UTC/GMT -05:00',NULL,NULL),
(166,'America/Port_of_Spain','UTC/GMT -04:00',NULL,NULL),
(167,'America/Porto_Velho','UTC/GMT -04:00',NULL,NULL),
(168,'America/Puerto_Rico','UTC/GMT -04:00',NULL,NULL),
(169,'America/Punta_Arenas','UTC/GMT -03:00',NULL,NULL),
(170,'America/Rainy_River','UTC/GMT -06:00',NULL,NULL),
(171,'America/Rankin_Inlet','UTC/GMT -06:00',NULL,NULL),
(172,'America/Recife','UTC/GMT -03:00',NULL,NULL),
(173,'America/Regina','UTC/GMT -06:00',NULL,NULL),
(174,'America/Resolute','UTC/GMT -06:00',NULL,NULL),
(175,'America/Rio_Branco','UTC/GMT -05:00',NULL,NULL),
(176,'America/Santarem','UTC/GMT -03:00',NULL,NULL),
(177,'America/Santiago','UTC/GMT -03:00',NULL,NULL),
(178,'America/Santo_Domingo','UTC/GMT -04:00',NULL,NULL),
(179,'America/Sao_Paulo','UTC/GMT -03:00',NULL,NULL),
(180,'America/Scoresbysund','UTC/GMT -01:00',NULL,NULL),
(181,'America/Sitka','UTC/GMT -09:00',NULL,NULL),
(182,'America/St_Barthelemy','UTC/GMT -04:00',NULL,NULL),
(183,'America/St_Johns','UTC/GMT -03:30',NULL,NULL),
(184,'America/St_Kitts','UTC/GMT -04:00',NULL,NULL),
(185,'America/St_Lucia','UTC/GMT -04:00',NULL,NULL),
(186,'America/St_Thomas','UTC/GMT -04:00',NULL,NULL),
(187,'America/St_Vincent','UTC/GMT -04:00',NULL,NULL),
(188,'America/Swift_Current','UTC/GMT -06:00',NULL,NULL),
(189,'America/Tegucigalpa','UTC/GMT -06:00',NULL,NULL),
(190,'America/Thule','UTC/GMT -04:00',NULL,NULL),
(191,'America/Thunder_Bay','UTC/GMT -05:00',NULL,NULL),
(192,'America/Tijuana','UTC/GMT -08:00',NULL,NULL),
(193,'America/Toronto','UTC/GMT -05:00',NULL,NULL),
(194,'America/Tortola','UTC/GMT -04:00',NULL,NULL),
(195,'America/Vancouver','UTC/GMT -08:00',NULL,NULL),
(196,'America/Whitehorse','UTC/GMT -07:00',NULL,NULL),
(197,'America/Winnipeg','UTC/GMT -06:00',NULL,NULL),
(198,'America/Yakutat','UTC/GMT -09:00',NULL,NULL),
(199,'America/Yellowknife','UTC/GMT -07:00',NULL,NULL),
(200,'Antarctica/Casey','UTC/GMT +11:00',NULL,NULL),
(201,'Antarctica/Davis','UTC/GMT +07:00',NULL,NULL),
(202,'Antarctica/DumontDUrville','UTC/GMT +10:00',NULL,NULL),
(203,'Antarctica/Macquarie','UTC/GMT +11:00',NULL,NULL),
(204,'Antarctica/Mawson','UTC/GMT +05:00',NULL,NULL),
(205,'Antarctica/McMurdo','UTC/GMT +13:00',NULL,NULL),
(206,'Antarctica/Palmer','UTC/GMT -03:00',NULL,NULL),
(207,'Antarctica/Rothera','UTC/GMT -03:00',NULL,NULL),
(208,'Antarctica/Syowa','UTC/GMT +03:00',NULL,NULL),
(209,'Antarctica/Troll','UTC/GMT +00:00',NULL,NULL),
(210,'Antarctica/Vostok','UTC/GMT +06:00',NULL,NULL),
(211,'Arctic/Longyearbyen','UTC/GMT +01:00',NULL,NULL),
(212,'Asia/Aden','UTC/GMT +03:00',NULL,NULL),
(213,'Asia/Almaty','UTC/GMT +06:00',NULL,NULL),
(214,'Asia/Amman','UTC/GMT +02:00',NULL,NULL),
(215,'Asia/Anadyr','UTC/GMT +12:00',NULL,NULL),
(216,'Asia/Aqtau','UTC/GMT +05:00',NULL,NULL),
(217,'Asia/Aqtobe','UTC/GMT +05:00',NULL,NULL),
(218,'Asia/Ashgabat','UTC/GMT +05:00',NULL,NULL),
(219,'Asia/Atyrau','UTC/GMT +05:00',NULL,NULL),
(220,'Asia/Baghdad','UTC/GMT +03:00',NULL,NULL),
(221,'Asia/Bahrain','UTC/GMT +03:00',NULL,NULL),
(222,'Asia/Baku','UTC/GMT +04:00',NULL,NULL),
(223,'Asia/Bangkok','UTC/GMT +07:00',NULL,NULL),
(224,'Asia/Barnaul','UTC/GMT +07:00',NULL,NULL),
(225,'Asia/Beirut','UTC/GMT +02:00',NULL,NULL),
(226,'Asia/Bishkek','UTC/GMT +06:00',NULL,NULL),
(227,'Asia/Brunei','UTC/GMT +08:00',NULL,NULL),
(228,'Asia/Chita','UTC/GMT +09:00',NULL,NULL),
(229,'Asia/Choibalsan','UTC/GMT +08:00',NULL,NULL),
(230,'Asia/Colombo','UTC/GMT +05:30',NULL,NULL),
(231,'Asia/Damascus','UTC/GMT +02:00',NULL,NULL),
(232,'Asia/Dhaka','UTC/GMT +06:00',NULL,NULL),
(233,'Asia/Dili','UTC/GMT +09:00',NULL,NULL),
(234,'Asia/Dubai','UTC/GMT +04:00',NULL,NULL),
(235,'Asia/Dushanbe','UTC/GMT +05:00',NULL,NULL),
(236,'Asia/Famagusta','UTC/GMT +02:00',NULL,NULL),
(237,'Asia/Gaza','UTC/GMT +02:00',NULL,NULL),
(238,'Asia/Hebron','UTC/GMT +02:00',NULL,NULL),
(239,'Asia/Ho_Chi_Minh','UTC/GMT +07:00',NULL,NULL),
(240,'Asia/Hong_Kong','UTC/GMT +08:00',NULL,NULL),
(241,'Asia/Hovd','UTC/GMT +07:00',NULL,NULL),
(242,'Asia/Irkutsk','UTC/GMT +08:00',NULL,NULL),
(243,'Asia/Jakarta','UTC/GMT +07:00',NULL,NULL),
(244,'Asia/Jayapura','UTC/GMT +09:00',NULL,NULL),
(245,'Asia/Jerusalem','UTC/GMT +02:00',NULL,NULL),
(246,'Asia/Kabul','UTC/GMT +04:30',NULL,NULL),
(247,'Asia/Kamchatka','UTC/GMT +12:00',NULL,NULL),
(248,'Asia/Karachi','UTC/GMT +05:00',NULL,NULL),
(249,'Asia/Kathmandu','UTC/GMT +05:45',NULL,NULL),
(250,'Asia/Khandyga','UTC/GMT +09:00',NULL,NULL),
(251,'Asia/Kolkata','UTC/GMT +05:30',NULL,NULL),
(252,'Asia/Krasnoyarsk','UTC/GMT +07:00',NULL,NULL),
(253,'Asia/Kuala_Lumpur','UTC/GMT +08:00',NULL,NULL),
(254,'Asia/Kuching','UTC/GMT +08:00',NULL,NULL),
(255,'Asia/Kuwait','UTC/GMT +03:00',NULL,NULL),
(256,'Asia/Macau','UTC/GMT +08:00',NULL,NULL),
(257,'Asia/Magadan','UTC/GMT +11:00',NULL,NULL),
(258,'Asia/Makassar','UTC/GMT +08:00',NULL,NULL),
(259,'Asia/Manila','UTC/GMT +08:00',NULL,NULL),
(260,'Asia/Muscat','UTC/GMT +04:00',NULL,NULL),
(261,'Asia/Nicosia','UTC/GMT +02:00',NULL,NULL),
(262,'Asia/Novokuznetsk','UTC/GMT +07:00',NULL,NULL),
(263,'Asia/Novosibirsk','UTC/GMT +07:00',NULL,NULL),
(264,'Asia/Omsk','UTC/GMT +06:00',NULL,NULL),
(265,'Asia/Oral','UTC/GMT +05:00',NULL,NULL),
(266,'Asia/Phnom_Penh','UTC/GMT +07:00',NULL,NULL),
(267,'Asia/Pontianak','UTC/GMT +07:00',NULL,NULL),
(268,'Asia/Pyongyang','UTC/GMT +09:00',NULL,NULL),
(269,'Asia/Qatar','UTC/GMT +03:00',NULL,NULL),
(270,'Asia/Qostanay','UTC/GMT +06:00',NULL,NULL),
(271,'Asia/Qyzylorda','UTC/GMT +05:00',NULL,NULL),
(272,'Asia/Riyadh','UTC/GMT +03:00',NULL,NULL),
(273,'Asia/Sakhalin','UTC/GMT +11:00',NULL,NULL),
(274,'Asia/Samarkand','UTC/GMT +05:00',NULL,NULL),
(275,'Asia/Seoul','UTC/GMT +09:00',NULL,NULL),
(276,'Asia/Shanghai','UTC/GMT +08:00',NULL,NULL),
(277,'Asia/Singapore','UTC/GMT +08:00',NULL,NULL),
(278,'Asia/Srednekolymsk','UTC/GMT +11:00',NULL,NULL),
(279,'Asia/Taipei','UTC/GMT +08:00',NULL,NULL),
(280,'Asia/Tashkent','UTC/GMT +05:00',NULL,NULL),
(281,'Asia/Tbilisi','UTC/GMT +04:00',NULL,NULL),
(282,'Asia/Tehran','UTC/GMT +03:30',NULL,NULL),
(283,'Asia/Thimphu','UTC/GMT +06:00',NULL,NULL),
(284,'Asia/Tokyo','UTC/GMT +09:00',NULL,NULL),
(285,'Asia/Tomsk','UTC/GMT +07:00',NULL,NULL),
(286,'Asia/Ulaanbaatar','UTC/GMT +08:00',NULL,NULL),
(287,'Asia/Urumqi','UTC/GMT +06:00',NULL,NULL),
(288,'Asia/Ust-Nera','UTC/GMT +10:00',NULL,NULL),
(289,'Asia/Vientiane','UTC/GMT +07:00',NULL,NULL),
(290,'Asia/Vladivostok','UTC/GMT +10:00',NULL,NULL),
(291,'Asia/Yakutsk','UTC/GMT +09:00',NULL,NULL),
(292,'Asia/Yangon','UTC/GMT +06:30',NULL,NULL),
(293,'Asia/Yekaterinburg','UTC/GMT +05:00',NULL,NULL),
(294,'Asia/Yerevan','UTC/GMT +04:00',NULL,NULL),
(295,'Atlantic/Azores','UTC/GMT -01:00',NULL,NULL),
(296,'Atlantic/Bermuda','UTC/GMT -04:00',NULL,NULL),
(297,'Atlantic/Canary','UTC/GMT +00:00',NULL,NULL),
(298,'Atlantic/Cape_Verde','UTC/GMT -01:00',NULL,NULL),
(299,'Atlantic/Faroe','UTC/GMT +00:00',NULL,NULL),
(300,'Atlantic/Madeira','UTC/GMT +00:00',NULL,NULL),
(301,'Atlantic/Reykjavik','UTC/GMT +00:00',NULL,NULL),
(302,'Atlantic/South_Georgia','UTC/GMT -02:00',NULL,NULL),
(303,'Atlantic/St_Helena','UTC/GMT +00:00',NULL,NULL),
(304,'Atlantic/Stanley','UTC/GMT -03:00',NULL,NULL),
(305,'Australia/Adelaide','UTC/GMT +10:30',NULL,NULL),
(306,'Australia/Brisbane','UTC/GMT +10:00',NULL,NULL),
(307,'Australia/Broken_Hill','UTC/GMT +10:30',NULL,NULL),
(308,'Australia/Darwin','UTC/GMT +09:30',NULL,NULL),
(309,'Australia/Eucla','UTC/GMT +08:45',NULL,NULL),
(310,'Australia/Hobart','UTC/GMT +11:00',NULL,NULL),
(311,'Australia/Lindeman','UTC/GMT +10:00',NULL,NULL),
(312,'Australia/Lord_Howe','UTC/GMT +11:00',NULL,NULL),
(313,'Australia/Melbourne','UTC/GMT +11:00',NULL,NULL),
(314,'Australia/Perth','UTC/GMT +08:00',NULL,NULL),
(315,'Australia/Sydney','UTC/GMT +11:00',NULL,NULL),
(316,'Europe/Amsterdam','UTC/GMT +01:00',NULL,NULL),
(317,'Europe/Andorra','UTC/GMT +01:00',NULL,NULL),
(318,'Europe/Astrakhan','UTC/GMT +04:00',NULL,NULL),
(319,'Europe/Athens','UTC/GMT +02:00',NULL,NULL),
(320,'Europe/Belgrade','UTC/GMT +01:00',NULL,NULL),
(321,'Europe/Berlin','UTC/GMT +01:00',NULL,NULL),
(322,'Europe/Bratislava','UTC/GMT +01:00',NULL,NULL),
(323,'Europe/Brussels','UTC/GMT +01:00',NULL,NULL),
(324,'Europe/Bucharest','UTC/GMT +02:00',NULL,NULL),
(325,'Europe/Budapest','UTC/GMT +01:00',NULL,NULL),
(326,'Europe/Busingen','UTC/GMT +01:00',NULL,NULL),
(327,'Europe/Chisinau','UTC/GMT +02:00',NULL,NULL),
(328,'Europe/Copenhagen','UTC/GMT +01:00',NULL,NULL),
(329,'Europe/Dublin','UTC/GMT +00:00',NULL,NULL),
(330,'Europe/Gibraltar','UTC/GMT +01:00',NULL,NULL),
(331,'Europe/Guernsey','UTC/GMT +00:00',NULL,NULL),
(332,'Europe/Helsinki','UTC/GMT +02:00',NULL,NULL),
(333,'Europe/Isle_of_Man','UTC/GMT +00:00',NULL,NULL),
(334,'Europe/Istanbul','UTC/GMT +03:00',NULL,NULL),
(335,'Europe/Jersey','UTC/GMT +00:00',NULL,NULL),
(336,'Europe/Kaliningrad','UTC/GMT +02:00',NULL,NULL),
(337,'Europe/Kiev','UTC/GMT +02:00',NULL,NULL),
(338,'Europe/Kirov','UTC/GMT +03:00',NULL,NULL),
(339,'Europe/Lisbon','UTC/GMT +00:00',NULL,NULL),
(340,'Europe/Ljubljana','UTC/GMT +01:00',NULL,NULL),
(341,'Europe/London','UTC/GMT +00:00',NULL,NULL),
(342,'Europe/Luxembourg','UTC/GMT +01:00',NULL,NULL),
(343,'Europe/Madrid','UTC/GMT +01:00',NULL,NULL),
(344,'Europe/Malta','UTC/GMT +01:00',NULL,NULL),
(345,'Europe/Mariehamn','UTC/GMT +02:00',NULL,NULL),
(346,'Europe/Minsk','UTC/GMT +03:00',NULL,NULL),
(347,'Europe/Monaco','UTC/GMT +01:00',NULL,NULL),
(348,'Europe/Moscow','UTC/GMT +03:00',NULL,NULL),
(349,'Europe/Oslo','UTC/GMT +01:00',NULL,NULL),
(350,'Europe/Paris','UTC/GMT +01:00',NULL,NULL),
(351,'Europe/Podgorica','UTC/GMT +01:00',NULL,NULL),
(352,'Europe/Prague','UTC/GMT +01:00',NULL,NULL),
(353,'Europe/Riga','UTC/GMT +02:00',NULL,NULL),
(354,'Europe/Rome','UTC/GMT +01:00',NULL,NULL),
(355,'Europe/Samara','UTC/GMT +04:00',NULL,NULL),
(356,'Europe/San_Marino','UTC/GMT +01:00',NULL,NULL),
(357,'Europe/Sarajevo','UTC/GMT +01:00',NULL,NULL),
(358,'Europe/Saratov','UTC/GMT +04:00',NULL,NULL),
(359,'Europe/Simferopol','UTC/GMT +03:00',NULL,NULL),
(360,'Europe/Skopje','UTC/GMT +01:00',NULL,NULL),
(361,'Europe/Sofia','UTC/GMT +02:00',NULL,NULL),
(362,'Europe/Stockholm','UTC/GMT +01:00',NULL,NULL),
(363,'Europe/Tallinn','UTC/GMT +02:00',NULL,NULL),
(364,'Europe/Tirane','UTC/GMT +01:00',NULL,NULL),
(365,'Europe/Ulyanovsk','UTC/GMT +04:00',NULL,NULL),
(366,'Europe/Uzhgorod','UTC/GMT +02:00',NULL,NULL),
(367,'Europe/Vaduz','UTC/GMT +01:00',NULL,NULL),
(368,'Europe/Vatican','UTC/GMT +01:00',NULL,NULL),
(369,'Europe/Vienna','UTC/GMT +01:00',NULL,NULL),
(370,'Europe/Vilnius','UTC/GMT +02:00',NULL,NULL),
(371,'Europe/Volgograd','UTC/GMT +03:00',NULL,NULL),
(372,'Europe/Warsaw','UTC/GMT +01:00',NULL,NULL),
(373,'Europe/Zagreb','UTC/GMT +01:00',NULL,NULL),
(374,'Europe/Zaporozhye','UTC/GMT +02:00',NULL,NULL),
(375,'Europe/Zurich','UTC/GMT +01:00',NULL,NULL),
(376,'Indian/Antananarivo','UTC/GMT +03:00',NULL,NULL),
(377,'Indian/Chagos','UTC/GMT +06:00',NULL,NULL),
(378,'Indian/Christmas','UTC/GMT +07:00',NULL,NULL),
(379,'Indian/Cocos','UTC/GMT +06:30',NULL,NULL),
(380,'Indian/Comoro','UTC/GMT +03:00',NULL,NULL),
(381,'Indian/Kerguelen','UTC/GMT +05:00',NULL,NULL),
(382,'Indian/Mahe','UTC/GMT +04:00',NULL,NULL),
(383,'Indian/Maldives','UTC/GMT +05:00',NULL,NULL),
(384,'Indian/Mauritius','UTC/GMT +04:00',NULL,NULL),
(385,'Indian/Mayotte','UTC/GMT +03:00',NULL,NULL),
(386,'Indian/Reunion','UTC/GMT +04:00',NULL,NULL),
(387,'Pacific/Apia','UTC/GMT +14:00',NULL,NULL),
(388,'Pacific/Auckland','UTC/GMT +13:00',NULL,NULL),
(389,'Pacific/Bougainville','UTC/GMT +11:00',NULL,NULL),
(390,'Pacific/Chatham','UTC/GMT +13:45',NULL,NULL),
(391,'Pacific/Chuuk','UTC/GMT +10:00',NULL,NULL),
(392,'Pacific/Easter','UTC/GMT -05:00',NULL,NULL),
(393,'Pacific/Efate','UTC/GMT +11:00',NULL,NULL),
(394,'Pacific/Enderbury','UTC/GMT +13:00',NULL,NULL),
(395,'Pacific/Fakaofo','UTC/GMT +13:00',NULL,NULL),
(396,'Pacific/Fiji','UTC/GMT +12:00',NULL,NULL),
(397,'Pacific/Funafuti','UTC/GMT +12:00',NULL,NULL),
(398,'Pacific/Galapagos','UTC/GMT -06:00',NULL,NULL),
(399,'Pacific/Gambier','UTC/GMT -09:00',NULL,NULL),
(400,'Pacific/Guadalcanal','UTC/GMT +11:00',NULL,NULL),
(401,'Pacific/Guam','UTC/GMT +10:00',NULL,NULL),
(402,'Pacific/Honolulu','UTC/GMT -10:00',NULL,NULL),
(403,'Pacific/Kiritimati','UTC/GMT +14:00',NULL,NULL),
(404,'Pacific/Kosrae','UTC/GMT +11:00',NULL,NULL),
(405,'Pacific/Kwajalein','UTC/GMT +12:00',NULL,NULL),
(406,'Pacific/Majuro','UTC/GMT +12:00',NULL,NULL),
(407,'Pacific/Marquesas','UTC/GMT -09:30',NULL,NULL),
(408,'Pacific/Midway','UTC/GMT -11:00',NULL,NULL),
(409,'Pacific/Nauru','UTC/GMT +12:00',NULL,NULL),
(410,'Pacific/Niue','UTC/GMT -11:00',NULL,NULL),
(411,'Pacific/Norfolk','UTC/GMT +12:00',NULL,NULL),
(412,'Pacific/Noumea','UTC/GMT +11:00',NULL,NULL),
(413,'Pacific/Pago_Pago','UTC/GMT -11:00',NULL,NULL),
(414,'Pacific/Palau','UTC/GMT +09:00',NULL,NULL),
(415,'Pacific/Pitcairn','UTC/GMT -08:00',NULL,NULL),
(416,'Pacific/Pohnpei','UTC/GMT +11:00',NULL,NULL),
(417,'Pacific/Port_Moresby','UTC/GMT +10:00',NULL,NULL),
(418,'Pacific/Rarotonga','UTC/GMT -10:00',NULL,NULL),
(419,'Pacific/Saipan','UTC/GMT +10:00',NULL,NULL),
(420,'Pacific/Tahiti','UTC/GMT -10:00',NULL,NULL),
(421,'Pacific/Tarawa','UTC/GMT +12:00',NULL,NULL),
(422,'Pacific/Tongatapu','UTC/GMT +13:00',NULL,NULL),
(423,'Pacific/Wake','UTC/GMT +12:00',NULL,NULL),
(424,'Pacific/Wallis','UTC/GMT +12:00',NULL,NULL),
(425,'UTC','UTC/GMT +00:00',NULL,NULL);

/*Table structure for table `transaction_types` */

DROP TABLE IF EXISTS `transaction_types`;

CREATE TABLE `transaction_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` enum('Deposit','Withdrawal','Transferred','Received','Exchange_From','Exchange_To','Request_From','Request_To','Payment_Sent','Payment_Received','Crypto_Sent','Crypto_Received') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `transaction_types` */

insert  into `transaction_types`(`id`,`name`) values 
(1,'Deposit'),
(2,'Withdrawal'),
(3,'Transferred'),
(4,'Received'),
(5,'Exchange_From'),
(6,'Exchange_To'),
(9,'Request_From'),
(10,'Request_To'),
(11,'Payment_Sent'),
(12,'Payment_Received'),
(13,'Crypto_Sent'),
(14,'Crypto_Received');

/*Table structure for table `transactions` */

DROP TABLE IF EXISTS `transactions`;

CREATE TABLE `transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `end_user_id` int(10) unsigned DEFAULT NULL,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `payment_method_id` int(10) unsigned DEFAULT NULL,
  `merchant_id` int(10) unsigned DEFAULT NULL,
  `bank_id` int(10) unsigned DEFAULT NULL,
  `file_id` int(10) unsigned DEFAULT NULL,
  `uuid` varchar(13) DEFAULT NULL COMMENT 'Unique ID',
  `refund_reference` varchar(13) DEFAULT NULL COMMENT 'Refund Reference',
  `transaction_reference_id` int(11) NOT NULL DEFAULT 0,
  `transaction_type_id` int(10) unsigned DEFAULT NULL,
  `user_type` enum('registered','unregistered') NOT NULL DEFAULT 'registered',
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `subtotal` decimal(20,8) DEFAULT 0.00000000,
  `percentage` decimal(20,8) DEFAULT 0.00000000,
  `charge_percentage` decimal(20,8) DEFAULT 0.00000000,
  `charge_fixed` decimal(20,8) DEFAULT 0.00000000,
  `total` decimal(20,8) DEFAULT 0.00000000,
  `note` text DEFAULT NULL,
  `status` enum('Pending','Success','Refund','Blocked') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transactions_transaction_type_id_foreign` (`transaction_type_id`),
  KEY `transactions_user_id_index` (`user_id`),
  KEY `transactions_end_user_id_index` (`end_user_id`),
  KEY `transactions_currency_id_index` (`currency_id`),
  KEY `transactions_payment_method_id_index` (`payment_method_id`),
  KEY `transactions_merchant_id_index` (`merchant_id`),
  KEY `transactions_bank_id_index` (`bank_id`),
  KEY `transactions_file_id_index` (`file_id`),
  CONSTRAINT `transactions_bank_id_foreign` FOREIGN KEY (`bank_id`) REFERENCES `banks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transactions_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transactions_end_user_id_foreign` FOREIGN KEY (`end_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transactions_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transactions_merchant_id_foreign` FOREIGN KEY (`merchant_id`) REFERENCES `merchants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transactions_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transactions_transaction_type_id_foreign` FOREIGN KEY (`transaction_type_id`) REFERENCES `transaction_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `transactions` */

insert  into `transactions`(`id`,`user_id`,`end_user_id`,`currency_id`,`payment_method_id`,`merchant_id`,`bank_id`,`file_id`,`uuid`,`refund_reference`,`transaction_reference_id`,`transaction_type_id`,`user_type`,`email`,`phone`,`subtotal`,`percentage`,`charge_percentage`,`charge_fixed`,`total`,`note`,`status`,`created_at`,`updated_at`) values 
(1,1,NULL,3,1,NULL,NULL,NULL,'5AE8427D75DAD',NULL,1,1,'registered',NULL,NULL,10.00000000,0.00000000,0.00000000,0.00000000,10.00000000,NULL,'Success','2021-02-27 19:38:28','2021-02-27 19:38:28'),
(2,1,NULL,3,3,NULL,NULL,NULL,'378CE8EF35DEE',NULL,1,2,'registered',NULL,NULL,10.00000000,0.00000000,0.00000000,0.00000000,-10.00000000,NULL,'Blocked','2021-02-27 19:57:45','2021-02-27 21:58:08'),
(3,3,NULL,3,1,NULL,NULL,NULL,'A6E63EA9467F1',NULL,2,1,'registered',NULL,NULL,100.00000000,0.00000000,0.00000000,0.00000000,100.00000000,NULL,'Success','2021-02-27 23:50:53','2021-02-27 23:50:53'),
(4,NULL,3,5,9,NULL,NULL,NULL,'336ADC4E4A435',NULL,0,13,'registered',NULL,NULL,0.00002000,0.00000000,0.00000000,0.00003296,-0.00005296,NULL,'Pending','2021-02-27 23:51:53','2021-02-27 23:51:53');

/*Table structure for table `transfers` */

DROP TABLE IF EXISTS `transfers`;

CREATE TABLE `transfers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) unsigned DEFAULT NULL,
  `receiver_id` int(10) unsigned DEFAULT NULL,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `bank_id` int(10) unsigned DEFAULT NULL,
  `file_id` int(10) unsigned DEFAULT NULL,
  `uuid` varchar(13) DEFAULT NULL COMMENT 'Unique ID (For Each Transfer)',
  `fee` decimal(20,8) DEFAULT 0.00000000,
  `amount` decimal(20,8) DEFAULT 0.00000000,
  `note` text DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `status` enum('Pending','Success','Refund','Blocked') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transfers_sender_id_index` (`sender_id`),
  KEY `transfers_receiver_id_index` (`receiver_id`),
  KEY `transfers_currency_id_index` (`currency_id`),
  KEY `transfers_bank_id_index` (`bank_id`),
  KEY `transfers_file_id_index` (`file_id`),
  CONSTRAINT `transfers_bank_id_foreign` FOREIGN KEY (`bank_id`) REFERENCES `banks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transfers_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transfers_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transfers_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `transfers_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `transfers` */

/*Table structure for table `user_details` */

DROP TABLE IF EXISTS `user_details`;

CREATE TABLE `user_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `country_id` int(10) unsigned NOT NULL,
  `email_verification` tinyint(1) NOT NULL DEFAULT 0,
  `phone_verification_code` varchar(6) DEFAULT NULL,
  `two_step_verification_type` enum('disabled','email','phone','google_authenticator') NOT NULL,
  `two_step_verification_code` varchar(6) DEFAULT NULL,
  `two_step_verification` tinyint(1) NOT NULL DEFAULT 0,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `last_login_ip` varchar(45) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `state` varchar(25) DEFAULT NULL,
  `address_1` text DEFAULT NULL,
  `address_2` text DEFAULT NULL,
  `default_currency` varchar(10) DEFAULT NULL,
  `timezone` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_details_user_id_index` (`user_id`),
  KEY `user_details_country_id_index` (`country_id`),
  CONSTRAINT `user_details_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `user_details` */

insert  into `user_details`(`id`,`user_id`,`country_id`,`email_verification`,`phone_verification_code`,`two_step_verification_type`,`two_step_verification_code`,`two_step_verification`,`last_login_at`,`last_login_ip`,`city`,`state`,`address_1`,`address_2`,`default_currency`,`timezone`) values 
(1,1,14,0,NULL,'disabled',NULL,0,'2021-02-27 19:23:50','77.119.131.153',NULL,NULL,NULL,NULL,NULL,'Europe/Vienna'),
(2,2,5,0,NULL,'disabled',NULL,0,'2021-02-27 22:23:10','77.119.131.153',NULL,NULL,NULL,NULL,NULL,'Europe/Vienna'),
(3,3,5,0,NULL,'disabled',NULL,0,'2021-03-26 13:00:56','178.113.93.66',NULL,NULL,NULL,NULL,NULL,'Europe/Vienna'),
(4,4,5,0,NULL,'disabled',NULL,0,'2021-04-19 07:12:13','127.0.0.1',NULL,NULL,NULL,NULL,NULL,'Europe/Vienna');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned DEFAULT NULL,
  `type` enum('user','merchant') NOT NULL DEFAULT 'user',
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `formattedPhone` varchar(30) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `google2fa_secret` text DEFAULT NULL,
  `defaultCountry` varchar(4) DEFAULT NULL,
  `carrierCode` varchar(6) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `phrase` varchar(191) DEFAULT NULL,
  `address_verified` tinyint(1) NOT NULL DEFAULT 0,
  `identity_verified` tinyint(1) NOT NULL DEFAULT 0,
  `status` varchar(15) NOT NULL DEFAULT 'Active',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `picture` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_phone_unique` (`phone`),
  KEY `users_role_id_index` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`id`,`role_id`,`type`,`first_name`,`last_name`,`formattedPhone`,`phone`,`google2fa_secret`,`defaultCountry`,`carrierCode`,`email`,`password`,`phrase`,`address_verified`,`identity_verified`,`status`,`remember_token`,`created_at`,`updated_at`,`picture`) values 
(1,3,'merchant','Klaus','Testberg','+436641431116','6641431116',NULL,'at','43','test@gmail.com','$2y$10$BeLXG8kpfkDaUsoC0gsJw.6D3OFsLH3O0arQwMFKjGptsBRmlcMTm',NULL,0,0,'Active','qtP5RC6ThbovDs9W4ayBu5lRdFUJFgjkhKWOeRFKwyv2yW3KSC8mmoLiuNUA','2021-02-27 19:22:47','2021-02-27 19:22:47',''),
(2,3,'merchant','Armino','Säure',NULL,'2015552093',NULL,'us','1','test2@gmail.com','$2y$10$sFjmR.fNoGKSK7UczUzLguFULKAdgNYMFZKtUg.PZxwM1rpzmyN0G',NULL,0,0,'Active','16PbjeMAcdqWkp3yIfFINPTjvLBcdFIE2PMTyUxwTh8B60jvDrm4b1DHPOZI','2021-02-27 20:00:20','2021-02-27 21:58:44',''),
(3,3,'merchant','Tester2','Supermann','+436608038093','6608038093',NULL,'at','43','email@gmail.com','$2y$10$GZSnoi0YIirvATdsxjTPoeMxJyAVOXZaSj5D9IntjZgvlybmGplUy',NULL,0,0,'Active',NULL,'2021-02-27 23:47:47','2021-02-27 23:47:47',''),
(4,2,'merchant','vladimir','kolyan',NULL,NULL,NULL,NULL,NULL,'vladimir.okulovich2019@mail.ru','$2y$10$GZSnoi0YIirvATdsxjTPoeMxJyAVOXZaSj5D9IntjZgvlybmGplUy',NULL,0,0,'Active','uNyGVNJjzoIhD07qQwFVp8geEuWLmbsiah2drVP6ZEaAlgUNDzGN6nGwdsSt','2021-03-02 08:31:53','2021-04-01 06:58:41','1617281921.png');

/*Table structure for table `verify_users` */

DROP TABLE IF EXISTS `verify_users`;

CREATE TABLE `verify_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `verify_users_user_id_index` (`user_id`),
  CONSTRAINT `verify_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `verify_users` */

/*Table structure for table `wallets` */

DROP TABLE IF EXISTS `wallets`;

CREATE TABLE `wallets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `balance` decimal(20,8) DEFAULT 0.00000000,
  `is_default` enum('Yes','No') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wallets_user_id_index` (`user_id`),
  KEY `wallets_currency_id_index` (`currency_id`),
  CONSTRAINT `wallets_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `wallets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `wallets` */

insert  into `wallets`(`id`,`user_id`,`currency_id`,`balance`,`is_default`,`created_at`,`updated_at`) values 
(1,1,3,10.00000000,'Yes','2021-02-27 19:22:47','2021-02-27 21:58:08'),
(2,2,3,0.00000000,'Yes','2021-02-27 20:00:20','2021-02-27 20:00:20'),
(3,3,3,100.00000000,'Yes','2021-02-27 23:47:47','2021-02-27 23:50:53'),
(4,3,5,0.00000000,'No','2021-02-27 23:47:47','2021-02-27 23:47:47'),
(5,4,3,0.00000000,'Yes','2021-03-02 08:31:53','2021-03-02 08:31:53'),
(6,4,5,0.00000000,'No','2021-03-02 08:31:53','2021-03-02 08:31:53');

/*Table structure for table `withdrawal_details` */

DROP TABLE IF EXISTS `withdrawal_details`;

CREATE TABLE `withdrawal_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `withdrawal_id` int(10) unsigned DEFAULT NULL,
  `type` int(11) NOT NULL COMMENT '1=Bank, 2=Paypal',
  `email` varchar(191) DEFAULT NULL,
  `account_name` varchar(191) DEFAULT NULL,
  `account_number` varchar(191) DEFAULT NULL,
  `bank_branch_name` varchar(191) DEFAULT NULL,
  `bank_branch_city` varchar(191) DEFAULT NULL,
  `bank_branch_address` varchar(191) DEFAULT NULL,
  `country` int(10) unsigned DEFAULT NULL,
  `swift_code` varchar(191) DEFAULT NULL,
  `bank_name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `withdrawal_details_withdrawal_id_index` (`withdrawal_id`),
  CONSTRAINT `withdrawal_details_withdrawal_id_foreign` FOREIGN KEY (`withdrawal_id`) REFERENCES `withdrawals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `withdrawal_details` */

insert  into `withdrawal_details`(`id`,`withdrawal_id`,`type`,`email`,`account_name`,`account_number`,`bank_branch_name`,`bank_branch_city`,`bank_branch_address`,`country`,`swift_code`,`bank_name`,`created_at`,`updated_at`) values 
(1,1,3,'test@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-02-27 19:57:45','2021-02-27 19:57:45');

/*Table structure for table `withdrawals` */

DROP TABLE IF EXISTS `withdrawals`;

CREATE TABLE `withdrawals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `currency_id` int(10) unsigned DEFAULT NULL,
  `payment_method_id` int(10) unsigned DEFAULT NULL,
  `uuid` varchar(13) DEFAULT NULL COMMENT 'Unique ID (For Each Withdrawal)',
  `charge_percentage` decimal(20,8) DEFAULT 0.00000000,
  `charge_fixed` decimal(20,8) DEFAULT 0.00000000,
  `subtotal` decimal(20,8) DEFAULT 0.00000000,
  `amount` decimal(20,8) DEFAULT 0.00000000,
  `payment_method_info` varchar(255) NOT NULL,
  `status` enum('Pending','Success','Refund','Blocked') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `withdrawals_user_id_index` (`user_id`),
  KEY `withdrawals_currency_id_index` (`currency_id`),
  KEY `withdrawals_payment_method_id_index` (`payment_method_id`),
  CONSTRAINT `withdrawals_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `withdrawals_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `withdrawals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `withdrawals` */

insert  into `withdrawals`(`id`,`user_id`,`currency_id`,`payment_method_id`,`uuid`,`charge_percentage`,`charge_fixed`,`subtotal`,`amount`,`payment_method_info`,`status`,`created_at`,`updated_at`) values 
(1,1,3,3,'378CE8EF35DEE',0.00000000,0.00000000,10.00000000,10.00000000,'test@gmail.com','Blocked','2021-02-27 19:57:45','2021-02-27 21:58:08');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
