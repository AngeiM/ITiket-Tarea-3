CREATE DATABASE itiket;

use itiket;

CREATE TABLE `lugar`
  (
     `id`   INT(11) NOT NULL auto_increment,
     `lugar` VARCHAR(50) NOT NULL,
     PRIMARY KEY (`id`)
  )
engine=innodb
auto_increment=11
DEFAULT charset=utf8mb4;

INSERT INTO `lugar`
VALUES      (1,
             'Pedregal'),
            (2,
             'Parque Viva'),
            (3,
             'Camara de Ganaderos'),
            (4,
             'Estadio Nacional');

CREATE TABLE `concierto`
	(
	`id` INT(11) NOT NULL auto_increment,
    `artista` VARCHAR(50) NOT NULL,
	`costo` VARCHAR(50) NOT NULL,
    `fecha` VARCHAR(50) NOT NULL,
    `capacidad_maxima` VARCHAR(50) NOT NULL,
    `lugar_id` INT(11) NOT NULL,
     PRIMARY KEY (`id`, `lugar_id`),
     KEY `fk_concierto_lugar_idx` (`lugar_id`),
     CONSTRAINT `fk_concierto_lugar` FOREIGN KEY (`lugar_id`) REFERENCES
     `lugar` (`id`) ON DELETE no action ON UPDATE no action
  );
  
  INSERT INTO `concierto`
VALUES      (1,
             'Feid',
             '50000',
             '25 de Marzo del 2023',
             '30000 personas', 
             1);
             
  INSERT INTO `concierto`
VALUES      (2,
             'Bad Bunny',
             '60000',
             '19 de mayo del 2023',
             '35000 personas', 
             4);            

  INSERT INTO `concierto`
VALUES      (3,
             'Los Angeles Azules',
             '65000',
             '13 de julio del 2023',
             '15000 personas', 
             3);    
             
	INSERT INTO `concierto`
VALUES      (4,
             'Karol G',
             '55000',
             '30 de junio del 2023',
             '25000 personas', 
             2);   
  
	INSERT INTO `concierto`
VALUES      (5,
             'Eladio Carrion',
             '35000',
             '23 de octubre del 2023',
             '35000 personas', 
             4);   