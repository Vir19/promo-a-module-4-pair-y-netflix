
/* Primera Tabla */

CREATE TABLE `netflix`.`movies` (
  `idmovies` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `genre` VARCHAR(45) NOT NULL,
  `image` VARCHAR(1000) NOT NULL,
  `category` VARCHAR(45) NOT NULL,
  `year` INT NULL,
  PRIMARY KEY (`idmovies`));

INSERT INTO `netflix`.`movies` (`idmovies`, `title`, `genre`, `image`, `category`, `year`) VALUES ('1', 'Pulp Fiction', 'Crimen', 'https://pics.filmaffinity.com/pulp_fiction-210382116-large.jpg', 'Top 10', '1994');
INSERT INTO `netflix`.`movies` (`idmovies`, `title`, `genre`, `image`, `category`, `year`) VALUES ('2', 'La vita e bella', 'Comedia', 'https://pics.filmaffinity.com/la_vita_e_bella-646167341-mmed.jpg', 'Top 10', '1996');
INSERT INTO `netflix`.`movies` (`idmovies`, `title`, `genre`, `image`, `category`, `year`) VALUES ('3', 'Forrest Gump', 'Comedia', 'https://pics.filmaffinity.com/forrest_gump-212765827-mmed.jpg', 'Top 10', '1994');

/* Tabla users */

CREATE TABLE `netflix`.`users` (
  `iduser` INT NOT NULL AUTO_INCREMENT,
  `user` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `plan_details` VARCHAR(45) CHARACTER SET 'armscii8' NOT NULL,
  PRIMARY KEY (`iduser`));

INSERT INTO `netflix`.`users` (`iduser`, `user`, `password`, `name`, `email`, `plan_details`) VALUES ('1', 'laura_dev', 'laura', 'Laura', 'laura@gmail.com', 'Standard');
INSERT INTO `netflix`.`users` (`iduser`, `user`, `password`, `name`, `email`, `plan_details`) VALUES ('2', 'maria_dev', 'maria', 'Maria', 'maria@gmail.com', 'Standard');
INSERT INTO `netflix`.`users` (`iduser`, `user`, `password`, `name`, `email`, `plan_details`) VALUES ('3', 'ester_dev', 'ester', 'Ester', 'ester@gmail.com', 'Standard');

/* Tabla actors */

CREATE TABLE `netflix`.`actors` (
  `idactors` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `lastname` VARCHAR(45) NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `birthday` DATE NULL,
  PRIMARY KEY (`idactors`));

INSERT INTO `netflix`.`actors` (`idactors`, `name`, `lastname`, `country`, `birthday`) VALUES ('1', 'Tom', 'Hanks', 'Estados Unidos', '1956-07-09');
INSERT INTO `netflix`.`actors` (`idactors`, `name`, `lastname`, `country`, `birthday`) VALUES ('2', 'Roberto', 'Benigni', 'Italia', '1952-10-27');
INSERT INTO `netflix`.`actors` (`idactors`, `name`, `lastname`, `country`, `birthday`) VALUES ('3', 'John', 'Travolta', 'Estados Unidos', '1954-02-18');
