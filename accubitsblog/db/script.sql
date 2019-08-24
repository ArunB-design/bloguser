CREATE TABLE `user` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(50) NULL DEFAULT NULL,
	`email` VARCHAR(50) NULL DEFAULT NULL,
	`password` VARCHAR(100) NULL DEFAULT NULL,
	PRIMARY KEY (`id`)
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
;


CREATE TABLE `blog` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`description` VARCHAR(50) NULL DEFAULT NULL,
	`title` VARCHAR(50) NULL DEFAULT NULL,
	`user_fk` INT(11) NULL DEFAULT NULL,
	PRIMARY KEY (`id`),
	INDEX `USER_FK` (`user_fk`),
	CONSTRAINT `USER_FK` FOREIGN KEY (`user_fk`) REFERENCES `user` (`id`)
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
;
