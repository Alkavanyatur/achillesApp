CREATE TABLE users (
  id INT NOT NULL,
  age INT NULL,
  sex VARCHAR(45) NULL,
  PRIMARY KEY (id));

CREATE TABLE user_data (
  id INT NOT NULL,
  right_sensor1 FLOAT NULL,
  right_sensor2 FLOAT NULL,
  right_sensor3 FLOAT NULL,
  right_sensor4 FLOAT NULL,
  left_sensor1 FLOAT NULL,
  left_sensor2 FLOAT NULL,
  left_sensor3 FLOAT NULL,
  left_sensor4 FLOAT NULL,
  PRIMARY KEY (id));

ALTER TABLE user_data
CHANGE COLUMN id id INT(11) NOT NULL AUTO_INCREMENT ,
ADD COLUMN user INT NULL DEFAULT NULL AFTER meters;

ALTER TABLE users
RENAME TO user ;


ALTER TABLE user_data
ADD COLUMN sesion INT(11) NULL DEFAULT NULL AFTER foot;

CREATE TABLE achilles.sesion (
  id INT NOT NULL AUTO_INCREMENT,
  meters INT NULL DEFAULT NULL,
  calories INT NULL DEFAULT NULL,
  left_sensor1 FLOAT NULL DEFAULT NULL,
  left_sensor2 FLOAT NULL DEFAULT NULL,
  left_sensor3 FLOAT NULL DEFAULT NULL,
  left_sensor4 FLOAT NULL DEFAULT NULL,
  right_sensor1 FLOAT NULL DEFAULT NULL,
  right_sensor2 FLOAT NULL DEFAULT NULL,
  right_sensor3 FLOAT NULL DEFAULT NULL,
  right_sensor4 FLOAT NULL DEFAULT NULL,
  user INT NULL DEFAULT NULL,
  PRIMARY KEY (id));


ALTER TABLE user_data
ADD COLUMN calories FLOAT NULL DEFAULT NULL AFTER sesion;

ALTER TABLE user
CHANGE COLUMN id id VARCHAR(500) NOT NULL ;
