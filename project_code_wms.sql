/*
SQLyog Ultimate v10.3 
MySQL - 5.5.5-10.4.18-MariaDB : Database - project_code_wms
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`project_code_wms` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `project_code_wms`;

/*Table structure for table `tabel_bin_set` */

DROP TABLE IF EXISTS `tabel_bin_set`;

CREATE TABLE `tabel_bin_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_bin` varchar(100) DEFAULT NULL,
  `nama_bin` varchar(100) DEFAULT NULL,
  `size_bin` varchar(100) DEFAULT NULL,
  `bin_property` int(11) DEFAULT NULL,
  `empty_label` varchar(100) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `tabel_bin_set_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tabel_goods_list` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tabel_bin_set` */

/*Table structure for table `tabel_bin_size` */

DROP TABLE IF EXISTS `tabel_bin_size`;

CREATE TABLE `tabel_bin_size` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_bin_size` varchar(100) DEFAULT NULL,
  `nama_bin_size` varchar(100) DEFAULT NULL,
  `wide` varchar(100) DEFAULT NULL,
  `depth` varchar(100) DEFAULT NULL,
  `height` varchar(100) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `tabel_bin_size_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tabel_goods_list` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tabel_bin_size` */

/*Table structure for table `tabel_brand` */

DROP TABLE IF EXISTS `tabel_brand`;

CREATE TABLE `tabel_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_code` varchar(100) DEFAULT NULL,
  `brand_name` varchar(100) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `tabel_brand_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tabel_goods_list` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tabel_brand` */

/*Table structure for table `tabel_class` */

DROP TABLE IF EXISTS `tabel_class`;

CREATE TABLE `tabel_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_code` varchar(100) DEFAULT NULL,
  `class_name` varchar(100) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `tabel_class_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tabel_goods_list` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tabel_class` */

/*Table structure for table `tabel_color` */

DROP TABLE IF EXISTS `tabel_color`;

CREATE TABLE `tabel_color` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `color_code` varchar(100) DEFAULT NULL,
  `color_name` varchar(100) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `tabel_color_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tabel_goods_list` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tabel_color` */

/*Table structure for table `tabel_company` */

DROP TABLE IF EXISTS `tabel_company`;

CREATE TABLE `tabel_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_code` varchar(100) DEFAULT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `company_city` varchar(100) DEFAULT NULL,
  `company_address` varchar(100) DEFAULT NULL,
  `company_contact` varchar(100) DEFAULT NULL,
  `company_manager` varchar(100) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `tabel_company_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tabel_finance_capital` (`id`),
  CONSTRAINT `tabel_company_ibfk_2` FOREIGN KEY (`id`) REFERENCES `tabel_customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tabel_company` */

/*Table structure for table `tabel_customer` */

DROP TABLE IF EXISTS `tabel_customer`;

CREATE TABLE `tabel_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_code` varchar(100) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `customer_city` varchar(100) DEFAULT NULL,
  `customer_address` varchar(250) DEFAULT NULL,
  `customer_contact` varchar(100) DEFAULT NULL,
  `customer_manager` varchar(100) DEFAULT NULL,
  `customer_level` int(11) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `tabel_customer_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tabel_warehouse` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tabel_customer` */

/*Table structure for table `tabel_driver` */

DROP TABLE IF EXISTS `tabel_driver`;

CREATE TABLE `tabel_driver` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `driver_code` varchar(100) DEFAULT NULL,
  `driver_name` varchar(100) DEFAULT NULL,
  `driver_licence` varchar(100) DEFAULT NULL,
  `driver_contact` varchar(100) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `tabel_driver_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tabel_finance_freight` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tabel_driver` */

/*Table structure for table `tabel_employee` */

DROP TABLE IF EXISTS `tabel_employee`;

CREATE TABLE `tabel_employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_code` varchar(100) DEFAULT NULL,
  `employee_name` varchar(100) DEFAULT NULL,
  `employee_type` int(100) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `tabel_employee_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tabel_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tabel_employee` */

/*Table structure for table `tabel_finance_capital` */

DROP TABLE IF EXISTS `tabel_finance_capital`;

CREATE TABLE `tabel_finance_capital` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `capital_code` varchar(100) DEFAULT NULL,
  `capital_name` varchar(100) DEFAULT NULL,
  `capital_qty` varchar(100) DEFAULT NULL,
  `capital_cost` varchar(100) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tabel_finance_capital` */

/*Table structure for table `tabel_finance_freight` */

DROP TABLE IF EXISTS `tabel_finance_freight`;

CREATE TABLE `tabel_finance_freight` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_code` varchar(100) DEFAULT NULL,
  `send_city` varchar(100) DEFAULT NULL,
  `receiver_city` varchar(100) DEFAULT NULL,
  `weight_fee` varchar(100) DEFAULT NULL,
  `volume_fee` varchar(100) DEFAULT NULL,
  `min_payment` varchar(100) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tabel_finance_freight` */

/*Table structure for table `tabel_goods_list` */

DROP TABLE IF EXISTS `tabel_goods_list`;

CREATE TABLE `tabel_goods_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_code` varchar(100) DEFAULT NULL,
  `goods_name` varchar(100) DEFAULT NULL,
  `goods_supplier` varchar(100) DEFAULT NULL,
  `goods_weight` varchar(100) DEFAULT NULL,
  `goods_widht` varchar(100) DEFAULT NULL,
  `goods_depth` varchar(100) DEFAULT NULL,
  `goods_height` varchar(100) DEFAULT NULL,
  `unit_volume` varchar(100) DEFAULT NULL,
  `goods_unit` varchar(100) DEFAULT NULL,
  `goods_class` varchar(100) DEFAULT NULL,
  `goods_brand` varchar(100) DEFAULT NULL,
  `goods_color` varchar(100) DEFAULT NULL,
  `goods_shape` varchar(100) DEFAULT NULL,
  `goods_specs` varchar(100) DEFAULT NULL,
  `goods_origin` varchar(100) DEFAULT NULL,
  `goods_cost` varchar(100) DEFAULT NULL,
  `goods_price` varchar(100) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tabel_goods_list` */

/*Table structure for table `tabel_origin` */

DROP TABLE IF EXISTS `tabel_origin`;

CREATE TABLE `tabel_origin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `origin_code` varchar(100) DEFAULT NULL,
  `origin_name` varchar(100) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `tabel_origin_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tabel_goods_list` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tabel_origin` */

/*Table structure for table `tabel_property` */

DROP TABLE IF EXISTS `tabel_property`;

CREATE TABLE `tabel_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property_code` varchar(100) DEFAULT NULL,
  `property_name` varchar(100) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `tabel_property_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tabel_goods_list` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tabel_property` */

/*Table structure for table `tabel_shape` */

DROP TABLE IF EXISTS `tabel_shape`;

CREATE TABLE `tabel_shape` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shape_code` varchar(100) DEFAULT NULL,
  `shape_name` varchar(100) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `tabel_shape_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tabel_goods_list` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tabel_shape` */

/*Table structure for table `tabel_specs` */

DROP TABLE IF EXISTS `tabel_specs`;

CREATE TABLE `tabel_specs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `specs_code` varchar(100) DEFAULT NULL,
  `specs_name` varchar(100) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `tabel_specs_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tabel_goods_list` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tabel_specs` */

/*Table structure for table `tabel_supplier` */

DROP TABLE IF EXISTS `tabel_supplier`;

CREATE TABLE `tabel_supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_code` varchar(100) DEFAULT NULL,
  `supplier_city` varchar(100) DEFAULT NULL,
  `supplier_address` varchar(250) DEFAULT NULL,
  `supplier_contact` varchar(100) DEFAULT NULL,
  `supplier_manager` varchar(100) DEFAULT NULL,
  `supplier_level` int(11) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `tabel_supplier_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tabel_goods_list` (`id`),
  CONSTRAINT `tabel_supplier_ibfk_2` FOREIGN KEY (`id`) REFERENCES `tabel_finance_freight` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tabel_supplier` */

/*Table structure for table `tabel_unit` */

DROP TABLE IF EXISTS `tabel_unit`;

CREATE TABLE `tabel_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_code` varchar(100) DEFAULT NULL,
  `unit_name` varchar(100) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `tabel_unit_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tabel_goods_list` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tabel_unit` */

/*Table structure for table `tabel_user` */

DROP TABLE IF EXISTS `tabel_user`;

CREATE TABLE `tabel_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `tabel_user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `tabel_user_role` (`id`),
  CONSTRAINT `tabel_user_ibfk_2` FOREIGN KEY (`id`) REFERENCES `tabel_user_access_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `tabel_user` */

/*Table structure for table `tabel_user_access_menu` */

DROP TABLE IF EXISTS `tabel_user_access_menu`;

CREATE TABLE `tabel_user_access_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_id` (`menu_id`),
  CONSTRAINT `tabel_user_access_menu_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `tabel_user_sub_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

/*Data for the table `tabel_user_access_menu` */

/*Table structure for table `tabel_user_menu` */

DROP TABLE IF EXISTS `tabel_user_menu`;

CREATE TABLE `tabel_user_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `tabel_user_menu_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tabel_user_access_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `tabel_user_menu` */

/*Table structure for table `tabel_user_role` */

DROP TABLE IF EXISTS `tabel_user_role`;

CREATE TABLE `tabel_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `tabel_user_role` */

/*Table structure for table `tabel_user_sub_menu` */

DROP TABLE IF EXISTS `tabel_user_sub_menu`;

CREATE TABLE `tabel_user_sub_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `tabel_user_sub_menu` */

/*Table structure for table `tabel_user_token` */

DROP TABLE IF EXISTS `tabel_user_token`;

CREATE TABLE `tabel_user_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `tabel_user_token_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tabel_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `tabel_user_token` */

/*Table structure for table `tabel_warehouse` */

DROP TABLE IF EXISTS `tabel_warehouse`;

CREATE TABLE `tabel_warehouse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `warehouse_code` varchar(100) DEFAULT NULL,
  `warehouse_name` varchar(100) DEFAULT NULL,
  `warehouse_city` varchar(250) DEFAULT NULL,
  `warehouse_address` varchar(500) DEFAULT NULL,
  `warehouse_contact` varchar(100) DEFAULT NULL,
  `warehouse_manager` varchar(100) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tabel_warehouse` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
