CREATE SCHEMA IF NOT EXISTS `demo` DEFAULT CHARACTER SET utf8mb4;

CREATE TABLE  IF NOT EXISTS `demo`.`demo_table` (
  `id` INT NOT NULL COMMENT 'identity of the product',
  `name` VARCHAR(255) NOT NULL COMMENT 'short name of product',
  `description` TEXT NULL DEFAULT NULL COMMENT 'detailed decsription of the product'
  COMMENT 'demo product table',
  PRIMARY KEY (`id`));

ALTER TABLE `demo_table` CHANGE `id` `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'identity of the product';

INSERT INTO `demo_table` (`id`, `name`, `description`) VALUES
  (NULL, '220k resistor', 'Lead free, metal oxide film composition'),
  (NULL, 'BC143 transistor', 'Silicon PNP transistor with maximum transition frequency 100 MHz. Collector capacitance (Cc): 20 pF');
