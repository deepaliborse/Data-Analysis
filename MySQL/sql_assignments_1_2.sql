-- ASSIGNMENT 1 --

-- 1. create a database called 'assignment' (Note please do the assignment tasks in this database) --
create database assignment1;
use assignment1;


-- 2. Create the tables from assignment_tables.sql and enter the records as specified in it. -- 
-- Movies table --
create table movies (id integer, title varchar(50), category varchar(25));

insert into movies values(1,	"ASSASSIN'S CREED: EMBERS",	'Animations'),
(2,	'Real Steel',	'Animations'),
(3,	'Alvin and the Chipmunks',	'Animations'),
(4,	'The Adventures of Tin Tin',	'Animations'),
(5,	'Safe', 	'Action'),
(6,	'Safe House',	'Action'),
(7,	'GIA',	'18+'),
(8,	'Deadline 2009',	'18+'),
(9,	'The Dirty Picture',	'18+'),
(10,	'Marley and me',	'Romance');

insert into movies values(11,"Silent Voice",'Animations'),(12,"Rings",'Fantacy');


-- rentals table --
create table rentals(memid integer, first_name varchar(25), last_name varchar(25), movieid integer);
insert into rentals values(1,'Alicia','Alarcon', 1),
(2,'Don','Draper', 2),
(3,'Lizzie','Moss', 5),
(4,'Eldon','Chance', 8),
(5,'Jenny','Patterson', 10),
(6,'Craig','Daniels', null),
(7,'Denny', 'Peters',null),
(8,'Patty','Pattinson',null);

insert into rentals values(9,'Deepali','Borse', 17),(10,'Anushka','Borse', NULL);


-- students table -- 
drop table if exists students;
CREATE TABLE  students  (id  int(11) NOT NULL,name  varchar(25) DEFAULT NULL, marks  float(6,2) DEFAULT NULL,PRIMARY KEY ( id )) ;

INSERT INTO  students  VALUES (102, 'Ansh', 79.00);
INSERT INTO  students  VALUES (101, 'Arushi', 99.00);

INSERT INTO  students  VALUES (11,'Britney',95.00),(12,'Dyana',55.00),(13,'Jenny',66.00),(14,'Christene',88.00),(15,'Meera',24.00),(16,'Priya',76.00),(17,'Priyanka',77.00),(18,'Paige',74.00),(19,'Samantha',87.00),(21,'Julia',96.00),(27,'Evil',79.00),(29,'Jane',64.00),(31,'Scarlet',80.00),(32,'Kristeen',100.00),(34,'Fanny',75.00),(37,'Belvet',78.00),(38,'Danny',75.00),(41,'Salma',81.00),(51,'Amanda',34.00),(61,'Heraldo',94.00),(71,'Stuart',99.00),(76,'Amina',89.00),(81,'Aamina',77.00),(91,'Vivek',84.00),(96,'Devil',76.00);


-- emp table --
CREATE TABLE  emp  (
   emp_no  int(11) NOT NULL,
   birth_date  date NOT NULL,
   first_name  varchar(14) NOT NULL,
   last_name  varchar(16) NOT NULL,
   gender  enum('M','F') NOT NULL,
   hire_date  date NOT NULL,
   salary  float(8,2) DEFAULT 7850.00
) ;

INSERT INTO  emp  VALUES (10012,'1960-10-04','Patricio','Bridgland','M','1992-12-18',3475.00),(10013,'1963-06-07','Eberhardt','Terkki','M','2020-02-23',7850.00);

INSERT INTO  emp  VALUES (10001,'1953-09-02','Georgi','Facello','M','2020-02-23',7850.00),(10002,'1964-06-02','Bezalel','Simmel','F','2020-02-23',1756.50),(10003,'1959-12-03','Parto','Bamford','M','2020-02-23',7850.00),(10004,'1954-05-01','Chirstian','Koblick','M','2020-04-15',3475.00),(10005,'1955-01-21','Kyoichi','Maliniak','M','2019-12-27',1756.50),(10006,'1953-04-20','Anneke','Preusig','F','2020-02-23',7850.00),(10007,'1957-05-23','Tzvetan','Zielinski','F','2020-02-23',7850.00),(10008,'1958-02-19','Saniya','Kalloufi','M','1994-09-15',6759.00),(10009,'1952-04-19','Sumant','Peac','F','2020-02-23',7850.00),(10010,'1963-06-01','Duangkaew','Piveteau','F','2019-12-27',1375.00),(10011,'1953-11-07','Mary','Sluis','F','1990-01-22',6759.00),(10012,'1960-10-04','Patricio','Bridgland','M','1992-12-18',3475.00),(10013,'1963-06-07','Eberhardt','Terkki','M','2020-02-23',7850.00),(10014,'1956-02-12','Berni','Genin','M','2020-02-23',1756.50),(10015,'1959-08-19','Guoxiang','Nooteboom','M','2019-12-27',1375.00),(10016,'1961-05-02','Kazuhito','Cappelletti','M','1995-01-27',3475.00),(10017,'1958-07-06','Cristinel','Bouloucos','F','1993-08-03',6759.00),(10018,'1954-06-19','Kazuhide','Peha','F','2020-02-23',7850.00),(10019,'1953-01-23','Lillian','Haddadi','M','1999-04-30',7850.00),(10020,'1952-12-24','Mayuko','Warwick','M','1991-01-26',4300.00),(10021,'1960-02-20','Ramzi','Erde','M','2020-02-23',7850.00),(10022,'1952-07-08','Shahaf','Famili','M','1995-08-22',7850.00),(10023,'1953-09-29','Bojan','Montemayor','F','2020-02-23',1756.50),(10024,'1958-09-05','Suzette','Pettey','F','1997-05-19',3475.00),(10025,'1958-10-31','Prasadram','Heyers','M','2019-12-27',1375.00),(10026,'1953-04-03','Yongqiao','Berztiss','M','1995-03-20',6759.00),(10027,'1962-07-10','Divier','Reistad','F','2020-02-23',7850.00),(10028,'1963-11-26','Domenick','Tempesti','M','1991-10-22',3475.00),(10029,'1956-12-13','Otmar','Herbst','M','2020-02-23',1756.50),(10030,'1958-07-14','Elvis','Demeyer','M','1994-02-17',4300.00),(10031,'1959-01-27','Karsten','Joslin','M','1991-09-01',7850.00),(10032,'1960-08-09','Jeong','Reistad','F','1990-06-20',6759.00),(10033,'1956-11-14','Arif','Merlo','M','2020-02-23',7850.00),(10034,'1962-12-29','Bader','Swan','M','2020-02-23',7850.00),(10035,'1953-02-08','Alain','Chappelet','M','2019-12-27',1756.50),(10036,'1959-08-10','Adamantios','Portugali','M','1992-01-03',3475.00),(10037,'1963-07-22','Pradeep','Makrucki','M','1990-12-05',7850.00),(10038,'1960-07-20','Huan','Lortz','M','2020-02-23',1756.50),(10039,'1959-10-01','Alejandro','Brender','M','2020-02-23',7850.00),(10040,'1959-09-13','Weiyi','Meriste','F','1993-02-14',4300.00),(10041,'1959-08-27','Uri','Lenart','F','2020-02-23',1756.50),(10042,'1956-02-26','Magy','Stamatiou','F','1993-03-21',7850.00),(10043,'1960-09-19','Yishay','Tzvieli','M','1990-10-20',7850.00),(10044,'1961-09-21','Mingsen','Casley','F','1994-05-21',6759.00),(10045,'1957-08-14','Moss','Shanbhogue','M','2019-12-27',1375.00),(10046,'1960-07-23','Lucien','Rosenbaum','M','1992-06-20',7850.00),(10047,'1952-06-29','Zvonko','Nyanchama','M','2020-02-23',1756.50),(10048,'1963-07-11','Florian','Syrotiuk','M','2020-04-15',3475.00),(10049,'1961-04-24','Basil','Tramer','F','1992-05-04',7850.00),(10050,'1958-05-21','Yinghua','Dredge','M','1990-12-25',4300.00),(10051,'1953-07-28','Hidefumi','Caine','M','1992-10-15',7850.00),(10052,'1961-02-26','Heping','Nitsch','M','2020-04-15',3475.00),(10053,'1954-09-13','Sanjiv','Zschoche','F','2020-02-23',1756.50),(10054,'1957-04-04','Mayumi','Schueller','M','1995-03-13',7850.00),(10055,'1956-06-06','Georgy','Dredge','M','1992-04-27',4300.00),(10056,'1961-09-01','Brendon','Bernini','F','1990-02-01',6759.00),(10057,'1954-05-30','Ebbe','Callaway','F','1992-01-15',7850.00),(10058,'1954-10-01','Berhard','McFarlin','M','2020-02-23',7850.00),(10059,'1953-09-19','Alejandro','McAlpine','F','1991-06-26',6759.00),(10060,'1961-10-15','Breannda','Billingsley','M','2020-04-15',1375.00),(10061,'1962-10-19','Tse','Herber','M','2020-02-23',7850.00),(10062,'1961-11-02','Anoosh','Peyn','M','1991-08-30',6759.00),(10063,'1952-08-06','Gino','Leonhardt','F','2020-02-23',7850.00),(10064,'1959-04-07','Udi','Jansch','M','2020-04-15',3475.00),(10065,'1963-04-14','Satosi','Awdeh','M','2019-12-27',1756.50),(10066,'1952-11-13','Kwee','Schusler','M','2020-02-23',7850.00),(10067,'1953-01-07','Claudi','Stavenow','M','2020-02-23',7850.00),(10068,'1962-11-26','Charlene','Brattka','M','2020-04-15',1756.50),(10069,'1960-09-06','Margareta','Bierman','F','2020-02-23',7850.00),(10070,'1955-08-20','Reuven','Garigliano','M','2019-12-27',1375.00),(10071,'1958-01-21','Hisao','Lipner','M','2020-02-23',1756.50),(10072,'1952-05-15','Hironoby','Sidou','F','2020-04-15',3475.00),(10073,'1954-02-23','Shir','McClurg','M','1991-12-01',7850.00),(10074,'1955-08-28','Mokhtar','Bernatsky','F','1990-08-13',6759.00),(10075,'1960-03-09','Gao','Dolinsky','F','2019-12-27',1375.00),(10076,'1952-06-13','Erez','Ritzmann','F','2020-04-15',3475.00),(10077,'1964-04-18','Mona','Azuma','M','1990-03-02',6759.00),(10078,'1959-12-25','Danel','Mondadori','F','2020-02-23',7850.00),(10079,'1961-10-05','Kshitij','Gils','F','2020-02-23',7850.00),(10080,'1957-12-03','Premal','Baek','M','2020-04-15',1756.50),(10081,'1960-12-17','Zhongwei','Rosen','M','2020-02-23',7850.00),(10082,'1963-09-09','Parviz','Lortz','M','1990-01-03',7850.00),(10083,'1959-07-23','Vishv','Zockler','M','2020-02-23',1756.50),(10084,'1960-05-25','Tuval','Kalloufi','M','1995-12-15',3475.00),(10085,'1962-11-07','Kenroku','Malabarba','M','1994-04-09',4300.00),(10086,'1962-11-19','Somnath','Foote','M','1990-02-16',6759.00),(10087,'1959-07-23','Xinglin','Eugenio','F','2020-02-23',7850.00),(10088,'1954-02-25','Jungsoon','Syrzycki','F','2020-04-15',3475.00),(10089,'1963-03-21','Sudharsan','Flasterstein','F','2020-02-23',1756.50),(10090,'1961-05-30','Kendra','Hofting','M','2019-12-27',1375.00),(10091,'1955-10-04','Amabile','Gomatam','M','1992-11-18',7850.00),(10092,'1964-10-18','Valdiodio','Niizuma','F','2020-04-15',1756.50),(10093,'1964-06-11','Sailaja','Desikan','M','1996-11-05',7850.00),(10094,'1957-05-25','Arumugam','Ossenbruggen','F','2020-02-23',7850.00),(10095,'1965-01-03','Hilari','Morton','M','2019-12-27',1756.50),(10096,'1954-09-16','Jayson','Mandell','M','1990-01-14',3475.00),(10097,'1952-02-27','Remzi','Waschkowski','M','1990-09-15',7850.00),(10098,'1961-09-23','Sreekrishna','Servieres','F','2020-02-23',1756.50),(10099,'1956-05-25','Valter','Sullins','F','2020-02-23',7850.00),(10100,'1953-04-21','Hironobu','Haraldson','F','2020-04-15',1375.00);

-- employee table --
 create table employee (empid integer, fname varchar(30), lname varchar(30), deptno tinyint, salary decimal(10,2));
 
insert into employee values(100,'Jon','Hamm',10,2000);
insert into employee values(200,'Tom','Cruise', 10, 3000),(300,'Hugh','Laurie',20,7500),(400,'Tom','Hanks',30,750);      
insert into employee values(500,'Johnny','Depp', 20, 1300),(600,'Hugh','Grant',30,850),(700,'Ben','Affleck',30,75),(800,'George','Clooney',10,10000);
insert into employee values(900,'Henry',Null, 10, 3000),(1000,'Gregory','House',20,3500);
insert into employee values(1100,'Jean','Hackman',10,2700);
 
 insert into employee values(2100,'Vishakha','Waghare',20,2300),(780,'Manasi','Jadhav',10,2000) ;
 
 -- station table --
 drop table if exists station;
 
 CREATE TABLE `station` (
  `id` int(11) DEFAULT NULL,
  `city` varchar(21) DEFAULT NULL,
  `state` char(4) DEFAULT NULL,
  `lat_n` float(7,2) DEFAULT NULL,
  `long_w` float(7,2) DEFAULT NULL
) ;

INSERT INTO `station` VALUES (794,'Kissee Mills','MO',139.65,73.42),(824,'Loma Mar','CA',48.70,130.54),(603,'Sandy Hook','CT',72.34,148.24),(478,'Tipton','IN',33.55,97.94),(619,'Arlington','CO',75.18,92.95),(711,'Turner','AR',50.24,101.46),(839,'Slidell','LA',85.32,151.87),(411,'Negreet','LA',98.97,105.34),(588,'Glencoe','KY',46.39,136.04),(665,'Chelsea','IA',98.72,59.69),(342,'Chignik Lagoon','AK',103.20,153.01),(733,'Pelahatchie','MS',38.58,28.12),(441,'Hanna City','IL',50.99,136.78),(811,'Dorrance','KS',102.09,121.56),(698,'Albany','CA',49.75,80.21),(325,'Monument','KS',70.52,141.77),(414,'Manchester','MD',73.52,37.15),(113,'Prescott','IA',39.93,65.79),(971,'Graettinger','IA',94.66,150.38),(266,'Cahone','CO',116.23,127.01),(617,'Sturgis','MS',36.46,126.17),(495,'Upperco','MD',114.22,29.63),(473,'Highwood','IL',27.25,150.92),(959,'Waipahu','HI',106.45,33.91),(438,'Bowdon','GA',88.98,78.49),(571,'Tyler','MN',133.35,58.63),(92,'Watkins','CO',83.27,96.74),(399,'Republic','MI',75.42,130.13),(426,'Millville','CA',32.56,145.74),(844,'Aguanga','CA',79.89,65.94),(321,'Bowdon Junction','GA',85.93,33.60),(606,'Morenci','AZ',104.90,110.20),(957,'South El Monte','CA',74.05,79.64),(833,'Hoskinston','KY',65.75,65.68),(843,'Talbert','KY',39.86,58.85),(166,'Mccomb','MS',74.04,42.63),(339,'Kirk','CO',141.10,136.33),(909,'Carlock','IL',117.32,84.80),(829,'Seward','IL',72.42,90.21),(766,'Gustine','CA',111.09,140.83),(392,'Delano','CA',126.35,91.50),(555,'Westphalia','MI',32.77,143.81),(33,'Saint Elmo','AL',27.35,50.58),(728,'Roy','MT',41.31,51.56),(656,'Pattonsburg','MO',138.10,32.11),(394,'Centertown','MO',133.97,93.17),(366,'Norvell','MI',125.34,93.75),(96,'Raymondville','MO',70.68,148.44),(867,'Beaver Island','MI',81.88,164.88),(977,'Odin','IL',53.49,115.79),(741,'Jemison','AL',62.10,25.71),(436,'West Hills','CA',68.43,73.10),(323,'Barrigada','GU',60.61,147.53),(3,'Hesperia','CA',106.06,71.12),(814,'Wickliffe','KY',80.30,46.13),(375,'Culdesac','ID',47.84,78.07),(467,'Roselawn','IN',87.71,51.75),(604,'Forest Lakes','AZ',144.84,114.29),(551,'San Simeon','CA',37.53,28.34),(706,'Little Rock','AR',122.24,121.15),(647,'Portland','AR',83.92,44.81),(25,'New Century','KS',135.02,79.27),(250,'Hampden','MA',76.39,26.48),(124,'Pine','MN',119.46,129.37),(547,'Sandborn','IN',55.95,93.85),(701,'Seaton','IL',128.23,78.43),(197,'Milledgeville','IL',90.99,113.27),(613,'East','MI',108.69,42.48),(630,'Prince','MD',104.83,57.72),(767,'Pomona','FL',100.52,163.35),(679,'Gretna','LA',75.26,142.58),(896,'Yazoo','MS',95.01,85.22),(403,'Zionsville','IN',57.79,36.49),(519,'Rio','CA',29.39,105.82),(482,'Jolon','CA',66.65,52.96),(252,'Childs','MD',92.76,104.02),(600,'Shreveport','LA',136.23,38.50),(14,'Forest','MS',120.28,50.23),(260,'Sizerock','KY',116.02,112.75),(65,'Buffalo','CO',47.66,148.19),(753,'Algonac','MI',118.74,80.15),(174,'Onaway','MI',108.61,55.76),(263,'Irvington','IL',96.70,68.29),(253,'Winsted','MN',68.82,72.52),(557,'Woodbury','GA',102.55,93.38),(897,'Samantha','AL',75.22,35.94),(98,'Hackleburg','AL',119.56,120.62),(423,'Soldier','KS',77.30,152.60),(361,'Arrowsmith','IL',28.00,109.34),(409,'Columbus','GA',67.34,46.62),(312,'Bentonville','AR',36.95,78.07),(854,'Kirkland','AZ',86.41,58.00),(160,'Grosse','MI',102.05,91.37),(735,'Wilton','ME',56.58,157.19),(608,'Busby','MT',104.09,29.83),(122,'Robertsdale','AL',97.72,85.37),(93,'Dale','IN',69.59,34.42),(67,'Reeds','MO',30.79,42.50),(906,'Hayfork','CA',35.30,116.67),(34,'Mcbrides','MI',74.06,35.68),(921,'Lee Center','IL',95.79,77.13),(401,'Tennessee','IL',55.50,155.65),(536,'Henderson','IA',77.92,77.91),(953,'Udall','KS',112.68,59.96),(370,'Palm Desert','CA',106.81,145.76),(614,'Benedict','KS',138.50,95.72),(998,'Oakfield','ME',47.66,132.21),(805,'Tamms','IL',59.87,75.05),(235,'Haubstadt','IN',27.99,32.08),(820,'Chokio','MN',81.36,134.23),(650,'Clancy','MT',45.83,164.38),(791,'Scotts','CA',119.93,90.95),(324,'Norwood','MN',144.49,34.89),(442,'Elkton','MD',103.25,156.73),(633,'Bertha','MN',39.95,105.31),(109,'Bridgeport','MI',50.69,79.90),(780,'Cherry','IL',68.30,46.70),(492,'Regina','KY',131.55,90.24),(965,'Griffin','GA',38.74,151.72),(778,'Pine Bluff','AR',60.41,145.79),(337,'Mascotte','FL',121.46,146.17),(259,'Baldwin','MD',81.74,40.44),(955,'Netawaka','KS',109.21,119.74),(752,'East','CA',106.23,115.25),(886,'Pony','MT',99.26,162.88),(200,'Franklin','LA',82.24,31.78),(384,'Amo','IN',103.59,159.43),(518,'Vulcan','MO',108.61,91.56),(188,'Prairie Du Rocher','IL',75.58,70.71),(161,'Alanson','MI',90.65,72.12),(486,'Delta','LA',136.54,49.73),(406,'Carver','MN',45.89,122.07),(940,'Paron','AR',59.14,104.34),(237,'Winchester','ID',38.37,80.05),(465,'Jerome','AZ',121.71,34.41),(591,'Baton','LA',129.84,71.75),(570,'Greenview','CA',80.50,57.59),(429,'Lucerne','CA',35.62,48.41),(278,'Cromwell','MN',128.85,53.51),(927,'Quinter','KS',59.58,25.36),(59,'Whitewater','MO',82.72,71.43),(218,'Round','ME',127.44,124.00),(291,'Clarkdale','AZ',58.19,73.95),(668,'Rockton','IL',116.12,86.84),(682,'Pheba','MS',90.95,127.30),(775,'Eleele','HI',80.91,152.52),(527,'Auburn','IA',95.49,137.07),(108,'North','ME',70.83,27.32),(190,'Oconee','GA',92.56,119.48),(232,'Grandville','MI',38.85,70.14),(405,'Susanville','CA',128.25,80.32),(273,'Rosie','AR',72.76,161.92),(813,'Verona','MO',109.66,152.64),(444,'Richland','GA',105.47,113.04),(899,'Fremont','MI',54.47,150.82),(738,'Philipsburg','MT',95.96,72.24),(215,'Kensett','IA',55.72,139.55),(743,'De Tour Village','MI',25.42,25.11),(377,'Koleen','IN',137.55,110.51),(727,'Winslow','IL',113.13,38.71),(363,'Reasnor','IA',41.60,162.56),(117,'West','IA',127.23,99.41),(420,'Frankfort','IL',71.60,30.37),(888,'Bono','AR',133.28,150.50),(784,'Biggsville','IL',85.93,138.75),(413,'Linthicum','MD',127.56,67.73),(695,'Amazonia','MO',45.79,148.20),(609,'Marysville','MI',85.76,132.87),(471,'Cape','MO',73.50,90.54),(649,'Pengilly','MN',25.07,154.06),(946,'Newton','MA',48.41,144.84),(380,'Crane','MN',72.92,43.22),(383,'Newbury','MA',128.40,85.17),(44,'Kismet','KS',99.82,156.50),(433,'Canton','ME',98.73,105.97),(283,'Clipper','CA',113.72,56.95),(474,'Grayslake','IL',61.30,33.06),(233,'Pierre','LA',52.09,90.06),(990,'Bison','KS',132.23,74.89),(502,'Bellevue','KY',127.43,121.75),(327,'Ridgway','CO',77.44,110.27),(4,'South','CT',65.58,33.61),(228,'Rydal','GA',35.68,78.82),(642,'Lynnville','KY',25.41,146.49),(885,'Deerfield','MO',40.21,35.94),(539,'Montreal','MO',129.25,127.33),(202,'Hope','MN',140.36,43.73),(593,'Aliso','CA',67.52,131.42),(521,'Gowrie','IA',130.20,127.98),(938,'Andersonville','GA',141.31,72.53),(919,'Knob','KY',135.85,33.39),(528,'Crouseville','ME',36.52,81.54),(331,'Cranks','KY',55.61,27.28),(45,'Rives','MI',94.20,116.85),(944,'Ledyard','CT',134.55,143.81),(949,'Norway','ME',83.89,88.41),(88,'Eros','LA',95.16,58.31),(878,'Rantoul','KS',31.80,118.62),(35,'Richmond Hill','GA',39.40,113.60),(17,'Fredericktown','MO',105.53,112.69),(447,'Arkadelphia','AR',98.62,49.58),(498,'Glen','IL',60.84,140.72),(351,'Fredericksburg','IN',44.51,78.06),(774,'Manchester','IA',129.67,123.30),(116,'Mc Henry','MD',93.29,112.56),(963,'Eriline','KY',93.62,65.44),(643,'Wellington','KY',100.45,31.69),(781,'Hoffman','IL',129.40,53.42),(364,'Howard','MN',125.76,78.33),(777,'Edgewater','MD',130.07,72.29),(15,'Ducor','CA',140.86,102.04),(910,'Salem','KY',86.98,113.96),(612,'Sturdivant','MO',93.84,86.39),(537,'Hagatna','GU',97.17,151.81),(970,'East','CT',115.68,132.38),(510,'Eastlake','MI',134.09,38.78),(354,'Larkspur','CA',107.05,65.97),(983,'Patriot','IN',82.64,46.08),(799,'Corriganville','MD',141.38,153.65),(581,'Carlos','MN',114.91,66.28),(825,'Addison','MI',96.37,142.41),(526,'Tarzana','CA',135.86,81.31),(176,'Grapevine','AR',92.37,84.54),(994,'Kanorado','KS',65.42,85.72),(704,'Climax','MI',127.36,107.05),(582,'Curdsville','KY',84.79,150.48),(884,'Southport','CT',59.09,63.13),(196,'Compton','IL',106.62,99.41),(605,'Notasulga','AL',66.84,115.69),(430,'Rumsey','KY',70.69,50.21),(234,'Rogers','CT',140.47,33.18),(700,'Pleasant','AR',135.14,145.59),(702,'Everton','MO',119.05,51.49),(662,'Skanee','MI',70.17,129.56),(171,'Springerville','AZ',124.69,150.66),(615,'Libertytown','MD',144.58,111.97),(26,'Church','MD',39.43,91.26),(692,'Yellow','ID',83.12,150.89),(336,'Dumont','MN',57.01,129.37),(464,'Gales','CT',104.57,37.41),(315,'Ravenna','KY',79.15,106.25),(505,'Williams','AZ',73.48,111.74),(842,'Decatur','MI',63.31,161.42),(982,'Holbrook','AZ',134.88,103.86),(868,'Sherrill','AR',79.96,152.22),(554,'Brownsdale','MN',52.43,50.80),(199,'Linden','MI',53.41,32.62),(453,'Sedgwick','AR',68.93,75.29),(451,'Fort','IA',142.86,140.64),(950,'Peachtree City','GA',80.49,155.98),(326,'Rocheport','MO',114.16,64.48),(189,'West','KY',73.97,45.06),(638,'Clovis','CA',92.44,138.08),(156,'Heyburn','ID',82.09,121.05),(861,'Peabody','KS',75.42,152.21),(722,'Marion','AL',53.32,31.34),(428,'Randall','KS',48.00,135.63),(677,'Hayesville','IA',119.99,42.13),(183,'Jordan','MN',68.75,35.46),(322,'\"White Horse	Beach\"','MA',54.29,59.32),(827,'Greenville','IL',50.64,153.02),(242,'Macy','IN',138.69,152.37),(621,'Flowood','MS',64.89,149.21),(960,'Deep','IA',75.37,38.57),(180,'Napoleon','IN',32.03,160.24),(382,'Leavenworth','IN',100.43,121.73),(853,'Coldwater','KS',47.51,26.31),(105,'Weldon','CA',134.02,118.96),(357,'Yellville','AR',35.69,42.25),(710,'Turners','MA',31.09,125.09),(520,'Delray','FL',27.29,158.52),(920,'Eustis','FL',42.74,39.48),(684,'Mineral','MO',91.20,41.43),(355,'Weldona','CO',32.97,58.45),(389,'Midpines','CA',106.43,59.38),(303,'Cascade','ID',31.77,157.48),(501,'Tefft','IN',93.22,150.02),(673,'Showell','MD',44.19,163.54),(834,'Bayville','ME',106.73,143.41),(255,'Brighton','IL',107.61,32.85),(595,'Grimes','IA',42.05,74.73),(709,'Nubieber','CA',132.90,49.28),(100,'North','ME',130.95,78.17),(522,'Harmony','MN',124.36,126.37),(16,'Beaufort','MO',71.77,85.66),(231,'Arispe','IA',31.11,137.80),(923,'Union','MO',79.07,132.66),(891,'Humeston','IA',74.51,122.42),(165,'Baileyville','IL',82.25,61.45),(757,'Lakeville','CT',59.87,94.99),(506,'Firebrick','KY',49.99,95.04),(76,'Pico','CA',143.28,116.53),(246,'Ludington','MI',30.22,120.23),(583,'Channing','MI',117.16,56.95),(666,'West Baden Springs','IN',30.35,96.11),(373,'Pawnee','IL',85.23,81.42),(504,'Melber','KY',37.25,55.53),(901,'Manchester','MN',71.02,84.01),(306,'Bainbridge','GA',62.05,56.88),(821,'Sanders','AZ',130.50,96.78),(586,'Ottertail','MN',100.02,44.34),(95,'Dupo','IL',41.28,29.03),(524,'Montrose','CA',136.48,119.37),(716,'Schleswig','IA',119.25,51.88),(849,'Harbor','MI',141.30,148.86),(611,'Richmond','IL',113.25,163.46),(904,'Ermine','KY',119.64,62.80),(740,'Siler','KY',137.02,117.25),(439,'Reeves','LA',35.25,51.40),(57,'Clifton','AZ',30.15,135.70),(155,'Casco','MI',138.60,109.07),(755,'Sturgis','MI',117.39,135.40),(11,'Crescent','FL',58.04,117.90),(287,'Madisonville','LA',112.22,53.05),(435,'Albion','IN',44.26,121.88),(672,'Lismore','MN',58.87,103.87),(572,'Athens','IN',75.32,120.80),(890,'Eufaula','AL',140.30,103.09),(975,'Panther','MS',116.51,164.52),(914,'Hanscom','MA',129.19,136.41),(119,'Wildie','KY',69.66,111.86),(540,'Mosca','CO',89.20,141.48),(678,'Bennington','IN',35.52,26.80),(208,'Lottie','LA',109.87,82.77),(512,'Garland','ME',108.73,134.38),(352,'Clutier','IA',61.19,127.03),(948,'Lupton','MI',139.93,53.36),(503,'Northfield','MN',61.00,37.15),(288,'Daleville','AL',121.89,136.17),(560,'Osage City','KS',110.20,89.61),(479,'Cuba','MO',63.72,87.65),(826,'Norris','MT',47.19,37.26),(651,'Clopton','AL',40.77,84.71),(143,'Renville','MN',142.15,99.43),(240,'Saint','KS',66.21,163.01),(102,'Kirksville','MO',140.00,143.87),(69,'Kingsland','AR',78.22,85.14),(181,'Fairview','KS',80.27,164.58),(175,'Lydia','LA',41.78,39.53),(80,'Bridgton','ME',93.23,140.42),(596,'Brownstown','IL',48.65,63.22),(301,'Monona','IA',144.13,81.58),(987,'Hartland','MI',136.26,107.74),(973,'Andover','CT',51.74,52.53),(981,'Lakota','IA',56.15,92.39),(440,'Grand','CA',37.31,126.59),(110,'Mesick','MI',82.12,108.53),(396,'Dryden','MI',69.80,47.74),(637,'Beverly','KY',57.75,126.90),(566,'Marine On Saint Croix','MN',126.16,115.79),(801,'Pocahontas','IL',109.63,83.23),(739,'Fort','FL',43.99,35.30),(130,'Hayneville','AL',109.74,157.47),(345,'Yoder','IN',83.50,143.72),(851,'Gatewood','MO',76.32,145.67),(489,'Madden','MS',81.34,99.38),(223,'Losantville','IN',112.52,106.78),(538,'Cheswold','DE',31.94,59.35),(329,'Caseville','MI',102.92,98.40),(815,'Pomona','MO',52.33,50.28),(789,'Hopkinsville','KY',27.32,47.95),(269,'Jack','AL',49.94,85.63),(969,'Dixie','GA',27.22,36.47),(271,'Hillside','CO',99.27,68.84),(667,'Hawarden','IA',90.96,46.93),(350,'Cannonsburg','MI',91.03,120.67),(49,'Osborne','KS',70.36,139.71),(332,'Elm','LA',45.94,29.40),(172,'Atlantic','MI',131.23,99.47),(699,'North','CT',37.80,95.27),(417,'New','IA',139.96,94.60),(99,'Woodstock','CT',117.39,162.63),(404,'Farmington','IL',91.71,72.02),(23,'Honolulu','HI',110.10,139.74),(1,'Pfeifer','KS',37.44,65.68),(127,'Oshtemo','MI',100.37,135.95),(657,'Gridley','KS',118.15,55.80),(261,'Fulton','KY',111.11,51.93),(182,'Winter','FL',133.23,32.76),(328,'Monroe','LA',28.36,108.42),(779,'Del','CA',59.18,95.77),(646,'Greens','IN',133.92,135.48),(756,'Garden','AL',96.08,105.42),(157,'Blue','KY',116.96,162.00),(400,'New','IN',134.02,120.95),(61,'Brilliant','AL',86.44,159.85),(610,'Archie','MO',40.20,28.20),(985,'Winslow','AR',126.14,126.12),(207,'Olmitz','KS',29.24,38.40),(941,'Allerton','IA',61.84,112.50),(70,'Norphlet','AR',144.02,61.19),(343,'Mechanic','ME',71.67,71.12),(531,'North','KY',42.99,141.91),(996,'Keyes','CA',76.97,85.61),(167,'Equality','AL',106.98,116.06),(750,'Neon','KY',101.98,147.67),(410,'Calhoun','KY',95.60,56.90),(725,'Alpine','AR',116.82,114.65),(988,'Mullan','ID',143.30,154.67),(55,'Coalgood','KY',57.17,149.02),(640,'Walnut','MS',40.94,76.96),(302,'Saint','FL',51.71,119.86),(387,'Ojai','CA',68.61,119.33),(476,'Julian','CA',130.51,101.56),(907,'Veedersburg','IN',78.90,94.85),(294,'Orange','FL',59.22,137.31),(661,'Payson','AZ',126.30,154.16),(745,'Windom','KS',114.19,126.39),(631,'Urbana','IA',142.53,29.35),(356,'Ludlow','CA',110.99,87.59),(419,'Lindsay','MT',143.10,67.84),(494,'Palatka','FL',94.55,52.33),(625,'Bristol','ME',87.97,95.29),(459,'Harmony','IN',135.02,70.83),(636,'Ukiah','CA',86.98,89.58),(106,'Yuma','AZ',111.33,153.95),(204,'Alba','MI',91.64,103.63),(344,'Zachary','LA',60.71,152.49),(599,'Esmond','IL',75.55,90.92),(515,'Waresboro','GA',144.25,153.61),(497,'Hills','MN',137.97,134.77),(162,'Montgomery','MO',70.44,44.67),(499,'Delavan','MN',32.58,64.51),(362,'Magnolia','MS',112.74,31.80),(545,'Byron','CA',136.51,120.42),(712,'Dundee','IA',61.60,105.04),(257,'Eureka','AR',72.06,34.78),(154,'Baker','CA',31.05,148.46),(715,'Hyde','MA',65.09,156.24),(493,'Groveoak','AL',53.39,87.51),(836,'Kenner','LA',91.74,126.57),(82,'Many','LA',36.28,94.73),(644,'Seward','AK',120.29,35.71),(391,'Berryton','KS',60.73,139.76),(696,'Chilhowee','MO',79.61,49.36),(905,'Newark','IL',72.53,129.89),(81,'Cowgill','MO',136.80,27.64),(31,'Novinger','MO',108.04,111.91),(299,'Goodman','MS',101.44,117.28),(84,'Cobalt','CT',87.32,26.53),(754,'South','MI',144.66,52.79),(144,'Eskridge','KS',107.63,63.49),(305,'Bennington','KS',93.87,83.24),(226,'Decatur','MS',71.25,117.57),(224,'West','MA',58.96,96.01),(694,'Ozona','FL',144.99,120.88),(623,'Jackson','AL',111.23,67.24),(543,'Lapeer','MI',128.62,114.26),(819,'Peaks','ME',59.14,110.69),(243,'Hazlehurst','MS',49.03,108.50),(457,'Chester','CA',69.81,123.93),(871,'Clarkston','MI',93.94,80.54),(470,'Healdsburg','CA',111.10,54.22),(705,'Hotchkiss','CO',69.90,71.82),(690,'Ravenden','AR',67.63,108.26),(62,'Monroe','AR',131.90,150.22),(365,'Payson','IL',81.74,92.11),(922,'Kell','IL',70.36,58.74),(838,'Strasburg','CO',89.40,47.89),(286,'Five','AL',45.66,122.22),(968,'Norris','IL',53.67,76.11),(928,'Coaling','AL',144.26,52.21),(746,'Orange','IA',93.53,162.95),(892,'Effingham','KS',132.95,97.72),(193,'Corcoran','CA',81.30,139.56),(225,'Garden','IA',54.21,119.91),(573,'Alton','MO',79.78,112.04),(830,'Greenway','AR',119.27,35.99),(241,'Woodsboro','MD',76.63,141.89),(783,'Strawn','IL',29.68,51.09),(675,'Dent','MN',70.75,136.78),(270,'Shingletown','CA',61.12,102.10),(378,'Clio','IA',46.15,115.42),(104,'Yalaha','FL',120.38,119.69),(460,'Leakesville','MS',107.17,72.58),(804,'Fort','CO',38.50,93.39),(53,'Shasta','CA',99.32,155.61),(448,'Canton','MN',123.64,151.42),(751,'Agency','MO',59.28,95.68),(29,'South','KY',58.00,116.96),(718,'Taft','CA',107.86,146.74),(213,'Calpine','CA',46.51,43.28),(624,'Knobel','AR',95.35,62.09),(908,'Bullhead','AZ',94.83,30.43),(845,'Tina','MO',131.70,28.12),(685,'Anthony','KS',45.01,161.13),(731,'Emmett','ID',57.10,31.53),(311,'South','MN',30.50,87.13),(866,'Haverhill','IA',61.83,109.17),(598,'Middleboro','MA',108.05,149.29),(541,'Siloam','GA',105.02,92.23),(889,'Lena','LA',78.16,129.62),(654,'Lee','IL',27.67,51.01),(841,'Freeport','MI',113.55,50.96),(446,'Mid','FL',110.41,50.75),(249,'Acme','LA',73.16,67.68),(376,'Gorham','KS',111.32,64.75),(136,'Bass','ME',137.67,61.33),(455,'Granger','IA',33.42,102.08),(136,'Bass Harbor','ME',137.67,61.33),(455,'Granger','IA',33.42,102.08);

INSERT INTO `station` VALUES (2712, "Pune", "PU", 89.21, 122.32);


-- City table --
CREATE TABLE `city` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(17) DEFAULT NULL,
  `countrycode` varchar(3) DEFAULT NULL,
  `district` varchar(30) DEFAULT NULL,
  `population` int(11) DEFAULT NULL
) ;
INSERT INTO `city` VALUES (6,'Rotterdam','NLD','Zuid-Holland',593321),(3878,'Scottsdale','USA','Arizona',202705),(3965,'Corona','USA','California',124966),(3973,'Concord','USA','California',121780),(3977,'Cedar Rapids','USA','Iowa',120758),(3982,'Coral Springs','USA','Florida',117549),(4054,'Fairfield','USA','California',92256),(4058,'Boulder','USA','Colorado',91238),(4061,'Fall River','USA','Massachusetts',90555),(1613,'Neyagawa','JPN','Osaka',257315),(1630,'Ageo','JPN','Saitama',209442),(1661,'Sayama','JPN','Saitama',162472),(1681,'Omuta','JPN','Fukuoka',142889),(1739,'Tokuyama','JPN','Yamaguchi',107078);
insert into city values (42203, "Nashik", "IND", "Nashik", 6107187);

/*
3. Create a table called authors with the following columns
authorid , name
- choose appropriate datatypes for the columns
	a) Insert the following data into the table
		1, J K Rowling
		2, Thomas Hardy
		3, Oscar Wilde
		4, Sidney Sheldon
		5, Alistair Maclean
		6, Jane Autsen
	b) Add a couple of authors of your choice
	c) Change 'Alistair Maclean' to 'Alastair McNeal' */
    
create table authors(authorid tinyint, name varchar(255));

insert into authors values(1, 'J K Rowling'),(2,'Thomas Hardy'),(3, 'Oscar Wilde'),(4,'Sidney Sheldon'),(5,'Alistair Maclean'),(6,'Jane Autsen');

insert into authors values(7,'Kusumagraj'), (8, 'Pralhad Keshav Atre'),(9, 'BAhinabai Chaudhari'),(10, 'Vishwas Patil');

update authors set name= 'Alastair McNeal' where authorid = 5;


/* 4. Create a table called Books with the following columns
bookid, title, authorid
- choose appropriate datatypes for the columns


	a) Insert the following records

		1,Harry Potter and the Philosopher's Stone,1
		2,Harry Potter and the Chamber of Secrets,1
		3,Harry Potter and the Half-Blood Prince,1
		4,Harry Potter and the Goblet of Fire,1
		5,Night Without End,5
		6,Fear is the Key,5
		7,Where Eagles Dare,5
		8,Sense and Sensibility,6
		9,Pride and Prejudice,6
		10,Emma,6
		11,Random Book,22

	b) Delete 'Random Book' from the table. */

create table Books(bookid tinyint, title varchar(100), authorid tinyint);

insert into Books values(1,"Harry Potter and the Philosopher's Stone",1),(2,"Harry Potter and the Chamber of Secrets",1),(3,"Harry Potter and the Half-Blood Prince",1),(4,"Harry Potter and the Goblet of Fire",1),(5,"Night Without End",5),(6,"Fear is the Key",5),(7,"Where Eagles Dare",5),(8,"Sense and Sensibility",6),(9,"Pride and Prejudice",6),(10,"Emma",6),(11,"Random Book",22);

delete from Books where bookid = 11;


-- 5. Rename the table Books to Favbooks and Authors to Favauthors. --

alter table Books Rename to Favbooks;

alter table authors Rename to Favauthors;


/* 
6. Create the following tables. Use auto increment wherever applicable
	a. Products
		product_id - primary key
		product_name - cannot be null and only unique values are allowed
		description
		supplier_id - foreign key of supplier table
	b. Suppliers
		supplier_id - primary key
		supplier_name 
		location
	c. Stock
		id - primary key
		product_id - foreign key of product table
		balance_stock  */

drop table if exists Product;
CREATE TABLE Product(product_id INT NOT NULL, product_name VARCHAR(100) NOT NULL UNIQUE, PRIMARY KEY(product_id));
alter table Product add column supplier_id int;

drop table if exists Suppliers;
CREATE TABLE Suppliers(supplier_id INT, supplier_name VARCHAR(100), location VARCHAR(100), PRIMARY KEY(supplier_id));
alter table product add foreign key(supplier_id) references suppliers(supplier_id);

drop table if exists stocks;
create table stocks(id int, product_id int, balance_stock int, primary key(id), foreign key(product_id) references product(product_id));


-- 7. Enter some records into the three tables. --

insert into suppliers values(101,"NITIN","PUNE");
insert into suppliers values(102,"YASH","NASHIK"),(103,"SNEHA","PUNE"),(104,"RANJIT","MUMBAI"),(105,"ROHIT","JALNA"),(106,"SHUBHAM","NASHIK"),(107,"RUSHI","SANGMNER");

insert into product values(501,"VIVO SE",101);
insert into product values(502, "SAMSUNG A30",102), (503,"VIVO Y83 PRO",103), (504, "MI M30",104), (505, "XOLO 900",105), (506, "OPPO A36", 106), (507, "DELL INSPIRATION", 107);

insert into stocks values(991, 501, 1031);
insert into stocks values(992,502,4982),(993,503,9800),(994,504,234),(995, 505,1211),(996,506,2392),(997,507,3822);


-- Modify the supplier table to make supplier name unique and not null. --
alter table suppliers modify column supplier_name varchar(100) unique not null;


/* 9. Modify the emp table as follows
  	a. Add a column called deptno
  	b. Set the value of deptno in the following order
  	       deptno = 20 where emp_id is divisible by 2
  	       deptno = 30 where emp_id is divisible by 3
  	       deptno = 40 where emp_id is divisible by 4
  	       deptno = 50 where emp_id is divisible by 5
  	       deptno = 10 for the remaining records. */

alter table emp add column deptno int;

update emp set deptno = ( CASE
WHEN (emp_no % 2) THEN 20
WHEN (emp_no % 3) THEN 30
WHEN (emp_no % 4) THEN 40
ELSE 10
END);

-- 10. Create a unique, hash index on the emp_id column.
 create unique index uni_index on emp(emp_no);





-- ASSIGNMENT 2 --

-- 1.select all employees in department 10 whose salary is greater than 3000. [table: employee]
select * from employee where salary>3000 and deptno = 10;

/* 2. The grading of students based on the marks they have obtained is done as follows

	40 to 50 -> Second Class
	50 to 60 -> First Class
	60 to 80 -> First Class
	80 to 100 -> Distinctions

	a. How many students  have graduated with first class?
	b. How many students  have obtained distinction?  [table: students] */

select count(*) from students where marks between 50 and 80;

select count(*) from students where marks between 80 and 100;


-- 3. Get a list of city names from station with even ID numbers only. Exclude duplicates from your answer.[table: station]
select DISTINCT * from station where id % 2 = 0;


-- 4. Find the difference between the total number of city entries in the table and the number of distinct city entries in the table. In other words, if N is the number of city entries in station, and N1 is the number of distinct city names in station, write a query to find the value of N-N1 from station.[table: station]
select (count(CITY)- count(distinct CITY)) as total_duplicate_city_entries from STATION;


-- 5. a. Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates. [Hint: Use RIGHT() / LEFT() methods ]
select DISTINCT CITY from STATION where CITY like 'A%' OR CITY like 'E%' OR CITY like 'I%' OR CITY like 'O%' OR CITY like 'U%';

-- b. Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
select distinct city from station where SUBSTRING(city,1,1) in ('A','E','I','O','U') and SUBSTRING(city,-1,1) in ('A','E','I','O','U');

-- c. Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
select DISTINCT city from station where substring(city,1,1) not in ('a','e','i','o','u');

-- d. Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates. [table: station]
select DISTINCT city from station where substring(city,1,1) not in ('a','e','i','o','u') and substring(city,-1,1) not in ('a','e','i','o','u');


-- 7. Write a query that prints a list of employee names having a salary greater than $2000 per month who have been employed for less than 10 months. Sort your result by ascending emp_id. [table: emp]
select emp_no,first_name,last_name,salary,hire_date, month(hire_date) as Total_months from emp  where  month(hire_date) < 10 and salary > 2000;


/* 8. How much money does the company spend every month on salaries for each department? [table: emp]

Expected Result:

+-------------+--------+
| sum(salary) | deptno |
+-------------+--------+
|    30700.00 |     10 |
|    13600.00 |     20 |
|     2600.00 |     30 |
+-------------+--------+ */

select deptno, sum(salary) from emp group by deptno;


-- 9. How many cities in the CITY table have a Population larger than 100000. [table: city]
select count(*) as population from city where population > 100000;


-- 10. What is the total population of California? [table: city]
select sum(population) from city where district="California";


/* 11. What is the average population of the districts in each country? [table: city]

Expected Result:

+-------------+-----------------+
| countrycode | avg(population) |
+-------------+-----------------+
| JPN         |     175839.2000 |
| NLD         |     593321.0000 |
| USA         |     120225.8750 |
+-------------+-----------------+  */

select countrycode, avg(population) from city group by countrycode;






 
 
 



