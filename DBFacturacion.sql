-- -----------------------------------------------------
-- Schema facturacion
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema facturacion
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `facturacion` DEFAULT CHARACTER SET utf8 ;
USE `facturacion` ;

-- -----------------------------------------------------
-- Table `facturacion`.`categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `facturacion`.`categoria` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `facturacion`.`producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `facturacion`.`producto` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `detalle` VARCHAR(45) NULL,
  `categoria_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_producto_categoria1_idx` (`categoria_id` ASC),
  CONSTRAINT `fk_producto_categoria1`
    FOREIGN KEY (`categoria_id`)
    REFERENCES `facturacion`.`categoria` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `facturacion`.`item`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `facturacion`.`item` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `precio` INT NOT NULL,
  `stock` INT NOT NULL,
  `producto_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_item_producto_idx` (`producto_id` ASC),
  CONSTRAINT `fk_item_producto`
    FOREIGN KEY (`producto_id`)
    REFERENCES `facturacion`.`producto` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



