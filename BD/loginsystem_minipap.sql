-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema loginsystem_minipap
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `loginsystem_minipap` ;

-- -----------------------------------------------------
-- Schema loginsystem_minipap
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `loginsystem_minipap` DEFAULT CHARACTER SET utf8 ;
USE `loginsystem_minipap` ;

-- -----------------------------------------------------
-- Table `loginsystem_minipap`.`Funcao`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `loginsystem_minipap`.`Funcao` ;

CREATE TABLE IF NOT EXISTS `loginsystem_minipap`.`Funcao` (
  `id` INT NOT NULL,
  `nomeFuncao` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));


-- -----------------------------------------------------
-- Table `loginsystem_minipap`.`Utilizador`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `loginsystem_minipap`.`Utilizador` ;

CREATE TABLE IF NOT EXISTS `loginsystem_minipap`.`Utilizador` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `utilizador` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `Funcao_id` INT NOT NULL,
  PRIMARY KEY (`id`, `Funcao_id`),
    FOREIGN KEY (`Funcao_id`)
    REFERENCES `loginsystem_minipap`.`Funcao` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `loginsystem_minipap`.`Funcao`
-- -----------------------------------------------------
START TRANSACTION;
USE `loginsystem_minipap`;
INSERT INTO `loginsystem_minipap`.`Funcao` (`id`, `nomeFuncao`) VALUES (1, 'administrador');
INSERT INTO `loginsystem_minipap`.`Funcao` (`id`, `nomeFuncao`) VALUES (2, 'utilizador');

COMMIT;


-- -----------------------------------------------------
-- Data for table `loginsystem_minipap`.`Utilizador`
-- -----------------------------------------------------
START TRANSACTION;
USE `loginsystem_minipap`;
INSERT INTO `loginsystem_minipap`.`Utilizador` (`id`, `utilizador`, `email`, `password`, `Funcao_id`) VALUES (1, 'first', 'teste@teste.com', '12345', 1);
INSERT INTO `loginsystem_minipap`.`Utilizador` (`id`, `utilizador`, `email`, `password`, `Funcao_id`) VALUES (2, 'second', 'teste2@teste.com', '56789', 2);

COMMIT;

