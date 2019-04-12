

DROP Database IF EXIST LPF;

CREATE Database LPF;

DROP TABLE IF EXISTS Users;
CREATE TABLE USERS(
    `Name` VARCHAR(30) NULL,
    `ID` INT NOT NULL,
    `Email` VARCHAR(255) NOT NULL,
    `Password` VARCHAR(25) NOT NULL,
    PRIMARY KEY (`U_ID`)
);

DROP TABLE IF EXISTS User_Teams;
CREATE TABLE User_Teams(
    `Team_Name` VARCHAR(40) NOT NULL,

)


/* ####################   MAJOR LEAGUE BASEBALL   ########################## */

DROP TABLE IF EXIST MLB_Player;
CREATE TABLE MLB_Player(
    `ID` INT NOT NULL,
    `team_ID` INT NOT NULL,
    `player_Name` VARCHAR(255),
    `age` VARCHAR(2),
    `con_mon` INT,
    `con_yrs` INT,
)

DROP TABLE IF EXISTS MLB_Batting;
CREATE TABLE Stats(
    `ID` INT NOT NULL,
    `rank` VARCHAR(4) NULL,
    `player_Name` VARCHAR(255) NULL,
    `currentteam` VARCHAR(50) NULL,
    `AB` VARCHAR(5) NULL,
    `R` VARCHAR(5) NULL,
    `H` VARCHAR(5) NULL,
    `2B` VARCHAR(5) NULL,
    `3B` VARCHAR(5) NULL,
    `HR` VARCHAR(5) NULL,
    `RBI` VARCHAR(5) NULL,
    `SB` VARCHAR(5) NULL,
    `CS` VARCHAR(5) NULL,
    `BB` VARCHAR(5) NULL,
    `SO` VARCHAR(5) NULL,
    `AVG` VARCHAR(5) NULL,
    `OBP` VARCHAR(5) NULL,
    `SLG` VARCHAR(5) NULL,
    `OPS` VARCHAR(5) NULL,
    `WAR` VARCHAR(5) NULL
);


DROP TABLE IF EXISTS MLB_teams;
CREATE TABLE MLB_teams(
    `ID`   INT NOT NULL,
    `team_Name` VARCHAR(40) NOT NULL,
    `team_Abb`  VARCHAR(3) NOT NULL,
    `team_City` CHAR(35) NOT NULL,
    `team_State`CHAR(35) NOT NULL,
    `stadium`   VARCHAR(255) NOT NULL,
    `league`    VARCHAR(20) NOT NULL,
    `div`      VARCHAR(20) NOT NULL
);

/*######################## MLB SEEDING ########################*/

INSERT INTO `MLB_teams` VALUES (1, 'Arizona Diamondbacks', 'ARI', 'Phoenix', 'Arizona', 'Chase Field','NL', 'West' );
INSERT INTO `MLB_teams` VALUES (2, 'Atlanta Braves', 'ATL', 'Atlanta', 'Georiga', 'SunTrust Park','NL', 'East' );
INSERT INTO `MLB_teams` VALUES (3, 'Baltimore Orioles', 'BAL', 'Baltimore', 'Maryland', 'Oriole Park at Camden Yards','AL', 'East' );
INSERT INTO `MLB_teams` VALUES (4, 'Boston Red Sox', 'BOR', 'Boston', 'Massachusetts', 'Fenway Park','AL', 'East' );
INSERT INTO `MLB_teams` VALUES (5, 'Chicago Cubs', 'CHC', 'Chicago', 'Illinois', 'Wrigley Field','NL', 'Central' );
INSERT INTO `MLB_teams` VALUES (6, 'Chicago White Sox', 'CWS', 'Chicago', 'Illinois', 'Guaranteed Rate Field','AL', 'Central' );
INSERT INTO `MLB_teams` VALUES (7, 'Cincinnati Reds', 'CIN', 'Cincinnati', 'Ohio', 'Great American Ball Park','NL', 'Central' );
INSERT INTO `MLB_teams` VALUES (8, 'Cleveland Indians', 'CLE', 'Cleveland', 'Ohio', 'Progressive Field','AL', 'Central' );
INSERT INTO `MLB_teams` VALUES (9, 'Colorado Rockies', 'COL', 'Denver', 'Colorado', 'Coors Field','NL', 'West' );
INSERT INTO `MLB_teams` VALUES (10, 'Detroit Tigers', 'DET', 'Detroit', 'Michigan', 'Comerica Park','AL', 'Central' );
INSERT INTO `MLB_teams` VALUES (11, 'Houston Astros', 'HOU', 'Houston', 'Texas', 'Minute Maid Park','AL', 'West' );
INSERT INTO `MLB_teams` VALUES (12, 'Kansas City Royals', 'KC', 'Kansas City', 'Missouri', 'Kauffman Stadium','AL', 'Central' );
INSERT INTO `MLB_teams` VALUES (13, 'Los Angeles Angels', 'LAA', 'Anaheim', 'California', 'Angel Stadium','AL', 'West' );
INSERT INTO `MLB_teams` VALUES (14, 'Los Angeles Dodgers', 'LAD', 'Los Angeles', 'California', 'Dodger Stadium','NL', 'West' );
INSERT INTO `MLB_teams` VALUES (15, 'Miami Marlins', 'MIA', 'Miami', 'Florida', 'Marlins Park','NL', 'East' );
INSERT INTO `MLB_teams` VALUES (16, 'Milwaukee Brewers', 'MIL', 'Milwaukee', 'Wisconsin', 'Miller Park','NL', 'Central' );
INSERT INTO `MLB_teams` VALUES (17, 'Minnesota Twins', 'MIN', 'Minneapolis', 'Minnesota', 'Target Field','AL', 'Central' );
INSERT INTO `MLB_teams` VALUES (18, 'New York Mets', 'NYM', 'New York City', 'New York', 'Citi Field','NL', 'East' );
INSERT INTO `MLB_teams` VALUES (19, 'New York Yankees', 'NYY', 'New York City', 'New York', 'Yankee Stadium','AL', 'East' );
INSERT INTO `MLB_teams` VALUES (20, 'Oakland Athletics', 'OAK', 'Oakland', 'California', 'Oakland–Alameda County Coliseum','AL', 'West' );
INSERT INTO `MLB_teams` VALUES (21, 'Philadelphia Phillies', 'PHA', 'Philadelphia', 'Pennsylvania', 'Citizens Bank Park','NL', 'East' );
INSERT INTO `MLB_teams` VALUES (22, 'Pittsburgh Pirates', 'PIT', 'Pittsburgh', 'Pennsylvania', 'PNC Park','NL', 'Central' );
INSERT INTO `MLB_teams` VALUES (23, 'San Diego Padres', 'SD', 'San Diego', 'California', 'Petco Park','NL', 'West' );
INSERT INTO `MLB_teams` VALUES (24, 'San Francisco Giants', 'SF', 'San Francisco', 'California', 'Oracle Park','NL', 'West' );
INSERT INTO `MLB_teams` VALUES (25, 'Seattle Mariners', 'SEA', 'Seattle', 'Washington', 'T-Mobile Park','AL', 'West' );
INSERT INTO `MLB_teams` VALUES (26, 'St. Louis Cardinals', 'STC', 'St. Louis', 'Missouri', 'Busch Stadium','NL', 'Central' );
INSERT INTO `MLB_teams` VALUES (27, 'Tampa Bay Rays', 'TB', 'St. Petersburg', 'Florida', 'Tropicana Field','AL', 'East' );
INSERT INTO `MLB_teams` VALUES (28, 'Texas Rangers', 'TEX', 'Arlington', 'Texas', 'Globe Life Park in Arlington','AL', 'West' );
INSERT INTO `MLB_teams` VALUES (29, 'Toronto Blue Jays', 'TOR', 'Toronto', 'Ontario', 'Rogers Centre','AL', 'East' );
INSERT INTO `MLB_teams` VALUES (30, 'Washington Nationals', 'WSH', 'Washington', 'D.C.', 'Nationals Park','NL', 'East' );



/*######################## World Data Base ########################*/

DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `ID` INT(11) NOT NULL AUTO_INCREMENT,
  `Name` CHAR(35) NOT NULL DEFAULT '',
  `CountryCode` CHAR(3) NOT NULL DEFAULT '',
  `District` CHAR(20) NOT NULL DEFAULT '',
  `Population` INT(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CountryCode` (`CountryCode`),
  CONSTRAINT `city_ibfk_1` FOREIGN KEY (`CountryCode`) REFERENCES `country` (`Code`)
) ENGINE=InnoDB AUTO_INCREMENT=4080 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `city` VALUES (1812,'Toronto','CAN','Ontario',688275);


INSERT INTO `city` VALUES (3793,'New York','USA','New York',8008278);
INSERT INTO `city` VALUES (3794,'Los Angeles','USA','California',3694820);
INSERT INTO `city` VALUES (3795,'Chicago','USA','Illinois',2896016);
INSERT INTO `city` VALUES (3796,'Houston','USA','Texas',1953631);
INSERT INTO `city` VALUES (3797,'Philadelphia','USA','Pennsylvania',1517550);
INSERT INTO `city` VALUES (3798,'Phoenix','USA','Arizona',1321045);
INSERT INTO `city` VALUES (3799,'San Diego','USA','California',1223400);
INSERT INTO `city` VALUES (3800,'Dallas','USA','Texas',1188580);
INSERT INTO `city` VALUES (3801,'San Antonio','USA','Texas',1144646);
INSERT INTO `city` VALUES (3802,'Detroit','USA','Michigan',951270);
INSERT INTO `city` VALUES (3803,'San Jose','USA','California',894943);
INSERT INTO `city` VALUES (3804,'Indianapolis','USA','Indiana',791926);
INSERT INTO `city` VALUES (3805,'San Francisco','USA','California',776733);
INSERT INTO `city` VALUES (3806,'Jacksonville','USA','Florida',735167);
INSERT INTO `city` VALUES (3807,'Columbus','USA','Ohio',711470);
INSERT INTO `city` VALUES (3808,'Austin','USA','Texas',656562);
INSERT INTO `city` VALUES (3809,'Baltimore','USA','Maryland',651154);
INSERT INTO `city` VALUES (3810,'Memphis','USA','Tennessee',650100);
INSERT INTO `city` VALUES (3811,'Milwaukee','USA','Wisconsin',596974);
INSERT INTO `city` VALUES (3812,'Boston','USA','Massachusetts',589141);
INSERT INTO `city` VALUES (3813,'Washington','USA','District of Columbia',572059);
INSERT INTO `city` VALUES (3814,'Nashville-Davidson','USA','Tennessee',569891);
INSERT INTO `city` VALUES (3815,'El Paso','USA','Texas',563662);
INSERT INTO `city` VALUES (3816,'Seattle','USA','Washington',563374);
INSERT INTO `city` VALUES (3817,'Denver','USA','Colorado',554636);
INSERT INTO `city` VALUES (3818,'Charlotte','USA','North Carolina',540828);
INSERT INTO `city` VALUES (3819,'Fort Worth','USA','Texas',534694);
INSERT INTO `city` VALUES (3820,'Portland','USA','Oregon',529121);
INSERT INTO `city` VALUES (3821,'Oklahoma City','USA','Oklahoma',506132);
INSERT INTO `city` VALUES (3822,'Tucson','USA','Arizona',486699);
INSERT INTO `city` VALUES (3823,'New Orleans','USA','Louisiana',484674);
INSERT INTO `city` VALUES (3824,'Las Vegas','USA','Nevada',478434);
INSERT INTO `city` VALUES (3825,'Cleveland','USA','Ohio',478403);
INSERT INTO `city` VALUES (3826,'Long Beach','USA','California',461522);
INSERT INTO `city` VALUES (3827,'Albuquerque','USA','New Mexico',448607);
INSERT INTO `city` VALUES (3828,'Kansas City','USA','Missouri',441545);
INSERT INTO `city` VALUES (3829,'Fresno','USA','California',427652);
INSERT INTO `city` VALUES (3830,'Virginia Beach','USA','Virginia',425257);
INSERT INTO `city` VALUES (3831,'Atlanta','USA','Georgia',416474);
INSERT INTO `city` VALUES (3832,'Sacramento','USA','California',407018);
INSERT INTO `city` VALUES (3833,'Oakland','USA','California',399484);
INSERT INTO `city` VALUES (3834,'Mesa','USA','Arizona',396375);
INSERT INTO `city` VALUES (3835,'Tulsa','USA','Oklahoma',393049);
INSERT INTO `city` VALUES (3836,'Omaha','USA','Nebraska',390007);
INSERT INTO `city` VALUES (3837,'Minneapolis','USA','Minnesota',382618);
INSERT INTO `city` VALUES (3838,'Honolulu','USA','Hawaii',371657);
INSERT INTO `city` VALUES (3839,'Miami','USA','Florida',362470);
INSERT INTO `city` VALUES (3840,'Colorado Springs','USA','Colorado',360890);
INSERT INTO `city` VALUES (3841,'Saint Louis','USA','Missouri',348189);
INSERT INTO `city` VALUES (3842,'Wichita','USA','Kansas',344284);
INSERT INTO `city` VALUES (3843,'Santa Ana','USA','California',337977);
INSERT INTO `city` VALUES (3844,'Pittsburgh','USA','Pennsylvania',334563);
INSERT INTO `city` VALUES (3845,'Arlington','USA','Texas',332969);
INSERT INTO `city` VALUES (3846,'Cincinnati','USA','Ohio',331285);
INSERT INTO `city` VALUES (3847,'Anaheim','USA','California',328014);
INSERT INTO `city` VALUES (3848,'Toledo','USA','Ohio',313619);
INSERT INTO `city` VALUES (3849,'Tampa','USA','Florida',303447);
INSERT INTO `city` VALUES (3850,'Buffalo','USA','New York',292648);
INSERT INTO `city` VALUES (3851,'Saint Paul','USA','Minnesota',287151);
INSERT INTO `city` VALUES (3852,'Corpus Christi','USA','Texas',277454);
INSERT INTO `city` VALUES (3853,'Aurora','USA','Colorado',276393);
INSERT INTO `city` VALUES (3854,'Raleigh','USA','North Carolina',276093);
INSERT INTO `city` VALUES (3855,'Newark','USA','New Jersey',273546);
INSERT INTO `city` VALUES (3856,'Lexington-Fayette','USA','Kentucky',260512);
INSERT INTO `city` VALUES (3857,'Anchorage','USA','Alaska',260283);
INSERT INTO `city` VALUES (3858,'Louisville','USA','Kentucky',256231);
INSERT INTO `city` VALUES (3859,'Riverside','USA','California',255166);
INSERT INTO `city` VALUES (3860,'Saint Petersburg','USA','Florida',248232);
INSERT INTO `city` VALUES (3861,'Bakersfield','USA','California',247057);
INSERT INTO `city` VALUES (3862,'Stockton','USA','California',243771);
INSERT INTO `city` VALUES (3863,'Birmingham','USA','Alabama',242820);
INSERT INTO `city` VALUES (3864,'Jersey City','USA','New Jersey',240055);
INSERT INTO `city` VALUES (3865,'Norfolk','USA','Virginia',234403);
INSERT INTO `city` VALUES (3866,'Baton Rouge','USA','Louisiana',227818);
INSERT INTO `city` VALUES (3867,'Hialeah','USA','Florida',226419);
INSERT INTO `city` VALUES (3868,'Lincoln','USA','Nebraska',225581);
INSERT INTO `city` VALUES (3869,'Greensboro','USA','North Carolina',223891);
INSERT INTO `city` VALUES (3870,'Plano','USA','Texas',222030);
INSERT INTO `city` VALUES (3871,'Rochester','USA','New York',219773);
INSERT INTO `city` VALUES (3872,'Glendale','USA','Arizona',218812);
INSERT INTO `city` VALUES (3873,'Akron','USA','Ohio',217074);
INSERT INTO `city` VALUES (3874,'Garland','USA','Texas',215768);
INSERT INTO `city` VALUES (3875,'Madison','USA','Wisconsin',208054);
INSERT INTO `city` VALUES (3876,'Fort Wayne','USA','Indiana',205727);
INSERT INTO `city` VALUES (3877,'Fremont','USA','California',203413);
INSERT INTO `city` VALUES (3878,'Scottsdale','USA','Arizona',202705);
INSERT INTO `city` VALUES (3879,'Montgomery','USA','Alabama',201568);
INSERT INTO `city` VALUES (3880,'Shreveport','USA','Louisiana',200145);
INSERT INTO `city` VALUES (3881,'Augusta-Richmond County','USA','Georgia',199775);
INSERT INTO `city` VALUES (3882,'Lubbock','USA','Texas',199564);
INSERT INTO `city` VALUES (3883,'Chesapeake','USA','Virginia',199184);
INSERT INTO `city` VALUES (3884,'Mobile','USA','Alabama',198915);
INSERT INTO `city` VALUES (3885,'Des Moines','USA','Iowa',198682);
INSERT INTO `city` VALUES (3886,'Grand Rapids','USA','Michigan',197800);
INSERT INTO `city` VALUES (3887,'Richmond','USA','Virginia',197790);
INSERT INTO `city` VALUES (3888,'Yonkers','USA','New York',196086);
INSERT INTO `city` VALUES (3889,'Spokane','USA','Washington',195629);
INSERT INTO `city` VALUES (3890,'Glendale','USA','California',194973);
INSERT INTO `city` VALUES (3891,'Tacoma','USA','Washington',193556);
INSERT INTO `city` VALUES (3892,'Irving','USA','Texas',191615);
INSERT INTO `city` VALUES (3893,'Huntington Beach','USA','California',189594);
INSERT INTO `city` VALUES (3894,'Modesto','USA','California',188856);
INSERT INTO `city` VALUES (3895,'Durham','USA','North Carolina',187035);
INSERT INTO `city` VALUES (3896,'Columbus','USA','Georgia',186291);
INSERT INTO `city` VALUES (3897,'Orlando','USA','Florida',185951);
INSERT INTO `city` VALUES (3898,'Boise City','USA','Idaho',185787);
INSERT INTO `city` VALUES (3899,'Winston-Salem','USA','North Carolina',185776);
INSERT INTO `city` VALUES (3900,'San Bernardino','USA','California',185401);
INSERT INTO `city` VALUES (3901,'Jackson','USA','Mississippi',184256);
INSERT INTO `city` VALUES (3902,'Little Rock','USA','Arkansas',183133);
INSERT INTO `city` VALUES (3903,'Salt Lake City','USA','Utah',181743);
INSERT INTO `city` VALUES (3904,'Reno','USA','Nevada',180480);
INSERT INTO `city` VALUES (3905,'Newport News','USA','Virginia',180150);
INSERT INTO `city` VALUES (3906,'Chandler','USA','Arizona',176581);
INSERT INTO `city` VALUES (3907,'Laredo','USA','Texas',176576);
INSERT INTO `city` VALUES (3908,'Henderson','USA','Nevada',175381);
INSERT INTO `city` VALUES (3909,'Arlington','USA','Virginia',174838);
INSERT INTO `city` VALUES (3910,'Knoxville','USA','Tennessee',173890);
INSERT INTO `city` VALUES (3911,'Amarillo','USA','Texas',173627);
INSERT INTO `city` VALUES (3912,'Providence','USA','Rhode Island',173618);
INSERT INTO `city` VALUES (3913,'Chula Vista','USA','California',173556);
INSERT INTO `city` VALUES (3914,'Worcester','USA','Massachusetts',172648);
INSERT INTO `city` VALUES (3915,'Oxnard','USA','California',170358);
INSERT INTO `city` VALUES (3916,'Dayton','USA','Ohio',166179);
INSERT INTO `city` VALUES (3917,'Garden Grove','USA','California',165196);
INSERT INTO `city` VALUES (3918,'Oceanside','USA','California',161029);
INSERT INTO `city` VALUES (3919,'Tempe','USA','Arizona',158625);
INSERT INTO `city` VALUES (3920,'Huntsville','USA','Alabama',158216);
INSERT INTO `city` VALUES (3921,'Ontario','USA','California',158007);
INSERT INTO `city` VALUES (3922,'Chattanooga','USA','Tennessee',155554);
INSERT INTO `city` VALUES (3923,'Fort Lauderdale','USA','Florida',152397);
INSERT INTO `city` VALUES (3924,'Springfield','USA','Massachusetts',152082);
INSERT INTO `city` VALUES (3925,'Springfield','USA','Missouri',151580);
INSERT INTO `city` VALUES (3926,'Santa Clarita','USA','California',151088);
INSERT INTO `city` VALUES (3927,'Salinas','USA','California',151060);
INSERT INTO `city` VALUES (3928,'Tallahassee','USA','Florida',150624);
INSERT INTO `city` VALUES (3929,'Rockford','USA','Illinois',150115);
INSERT INTO `city` VALUES (3930,'Pomona','USA','California',149473);
INSERT INTO `city` VALUES (3931,'Metairie','USA','Louisiana',149428);
INSERT INTO `city` VALUES (3932,'Paterson','USA','New Jersey',149222);
INSERT INTO `city` VALUES (3933,'Overland Park','USA','Kansas',149080);
INSERT INTO `city` VALUES (3934,'Santa Rosa','USA','California',147595);
INSERT INTO `city` VALUES (3935,'Syracuse','USA','New York',147306);
INSERT INTO `city` VALUES (3936,'Kansas City','USA','Kansas',146866);
INSERT INTO `city` VALUES (3937,'Hampton','USA','Virginia',146437);
INSERT INTO `city` VALUES (3938,'Lakewood','USA','Colorado',144126);
INSERT INTO `city` VALUES (3939,'Vancouver','USA','Washington',143560);
INSERT INTO `city` VALUES (3940,'Irvine','USA','California',143072);
INSERT INTO `city` VALUES (3941,'Aurora','USA','Illinois',142990);
INSERT INTO `city` VALUES (3942,'Moreno Valley','USA','California',142381);
INSERT INTO `city` VALUES (3943,'Pasadena','USA','California',141674);
INSERT INTO `city` VALUES (3944,'Hayward','USA','California',140030);
INSERT INTO `city` VALUES (3945,'Brownsville','USA','Texas',139722);
INSERT INTO `city` VALUES (3946,'Bridgeport','USA','Connecticut',139529);
INSERT INTO `city` VALUES (3947,'Hollywood','USA','Florida',139357);
INSERT INTO `city` VALUES (3948,'Warren','USA','Michigan',138247);
INSERT INTO `city` VALUES (3949,'Torrance','USA','California',137946);
INSERT INTO `city` VALUES (3950,'Eugene','USA','Oregon',137893);
INSERT INTO `city` VALUES (3951,'Pembroke Pines','USA','Florida',137427);
INSERT INTO `city` VALUES (3952,'Salem','USA','Oregon',136924);
INSERT INTO `city` VALUES (3953,'Pasadena','USA','Texas',133936);
INSERT INTO `city` VALUES (3954,'Escondido','USA','California',133559);
INSERT INTO `city` VALUES (3955,'Sunnyvale','USA','California',131760);
INSERT INTO `city` VALUES (3956,'Savannah','USA','Georgia',131510);
INSERT INTO `city` VALUES (3957,'Fontana','USA','California',128929);
INSERT INTO `city` VALUES (3958,'Orange','USA','California',128821);
INSERT INTO `city` VALUES (3959,'Naperville','USA','Illinois',128358);
INSERT INTO `city` VALUES (3960,'Alexandria','USA','Virginia',128283);
INSERT INTO `city` VALUES (3961,'Rancho Cucamonga','USA','California',127743);
INSERT INTO `city` VALUES (3962,'Grand Prairie','USA','Texas',127427);
INSERT INTO `city` VALUES (3963,'East Los Angeles','USA','California',126379);
INSERT INTO `city` VALUES (3964,'Fullerton','USA','California',126003);
INSERT INTO `city` VALUES (3965,'Corona','USA','California',124966);
INSERT INTO `city` VALUES (3966,'Flint','USA','Michigan',124943);
INSERT INTO `city` VALUES (3967,'Paradise','USA','Nevada',124682);
INSERT INTO `city` VALUES (3968,'Mesquite','USA','Texas',124523);
INSERT INTO `city` VALUES (3969,'Sterling Heights','USA','Michigan',124471);
INSERT INTO `city` VALUES (3970,'Sioux Falls','USA','South Dakota',123975);
INSERT INTO `city` VALUES (3971,'New Haven','USA','Connecticut',123626);
INSERT INTO `city` VALUES (3972,'Topeka','USA','Kansas',122377);
INSERT INTO `city` VALUES (3973,'Concord','USA','California',121780);
INSERT INTO `city` VALUES (3974,'Evansville','USA','Indiana',121582);
INSERT INTO `city` VALUES (3975,'Hartford','USA','Connecticut',121578);
INSERT INTO `city` VALUES (3976,'Fayetteville','USA','North Carolina',121015);
INSERT INTO `city` VALUES (3977,'Cedar Rapids','USA','Iowa',120758);
INSERT INTO `city` VALUES (3978,'Elizabeth','USA','New Jersey',120568);
INSERT INTO `city` VALUES (3979,'Lansing','USA','Michigan',119128);
INSERT INTO `city` VALUES (3980,'Lancaster','USA','California',118718);
INSERT INTO `city` VALUES (3981,'Fort Collins','USA','Colorado',118652);
INSERT INTO `city` VALUES (3982,'Coral Springs','USA','Florida',117549);
INSERT INTO `city` VALUES (3983,'Stamford','USA','Connecticut',117083);
INSERT INTO `city` VALUES (3984,'Thousand Oaks','USA','California',117005);
INSERT INTO `city` VALUES (3985,'Vallejo','USA','California',116760);
INSERT INTO `city` VALUES (3986,'Palmdale','USA','California',116670);
INSERT INTO `city` VALUES (3987,'Columbia','USA','South Carolina',116278);
INSERT INTO `city` VALUES (3988,'El Monte','USA','California',115965);
INSERT INTO `city` VALUES (3989,'Abilene','USA','Texas',115930);
INSERT INTO `city` VALUES (3990,'North Las Vegas','USA','Nevada',115488);
INSERT INTO `city` VALUES (3991,'Ann Arbor','USA','Michigan',114024);
INSERT INTO `city` VALUES (3992,'Beaumont','USA','Texas',113866);
INSERT INTO `city` VALUES (3993,'Waco','USA','Texas',113726);
INSERT INTO `city` VALUES (3994,'Macon','USA','Georgia',113336);
INSERT INTO `city` VALUES (3995,'Independence','USA','Missouri',113288);
INSERT INTO `city` VALUES (3996,'Peoria','USA','Illinois',112936);
INSERT INTO `city` VALUES (3997,'Inglewood','USA','California',112580);
INSERT INTO `city` VALUES (3998,'Springfield','USA','Illinois',111454);
INSERT INTO `city` VALUES (3999,'Simi Valley','USA','California',111351);
INSERT INTO `city` VALUES (4000,'Lafayette','USA','Louisiana',110257);
INSERT INTO `city` VALUES (4001,'Gilbert','USA','Arizona',109697);
INSERT INTO `city` VALUES (4002,'Carrollton','USA','Texas',109576);
INSERT INTO `city` VALUES (4003,'Bellevue','USA','Washington',109569);
INSERT INTO `city` VALUES (4004,'West Valley City','USA','Utah',108896);
INSERT INTO `city` VALUES (4005,'Clarksville','USA','Tennessee',108787);
INSERT INTO `city` VALUES (4006,'Costa Mesa','USA','California',108724);
INSERT INTO `city` VALUES (4007,'Peoria','USA','Arizona',108364);
INSERT INTO `city` VALUES (4008,'South Bend','USA','Indiana',107789);
INSERT INTO `city` VALUES (4009,'Downey','USA','California',107323);
INSERT INTO `city` VALUES (4010,'Waterbury','USA','Connecticut',107271);
INSERT INTO `city` VALUES (4011,'Manchester','USA','New Hampshire',107006);
INSERT INTO `city` VALUES (4012,'Allentown','USA','Pennsylvania',106632);
INSERT INTO `city` VALUES (4013,'McAllen','USA','Texas',106414);
INSERT INTO `city` VALUES (4014,'Joliet','USA','Illinois',106221);
INSERT INTO `city` VALUES (4015,'Lowell','USA','Massachusetts',105167);
INSERT INTO `city` VALUES (4016,'Provo','USA','Utah',105166);
INSERT INTO `city` VALUES (4017,'West Covina','USA','California',105080);
INSERT INTO `city` VALUES (4018,'Wichita Falls','USA','Texas',104197);
INSERT INTO `city` VALUES (4019,'Erie','USA','Pennsylvania',103717);
INSERT INTO `city` VALUES (4020,'Daly City','USA','California',103621);
INSERT INTO `city` VALUES (4021,'Citrus Heights','USA','California',103455);
INSERT INTO `city` VALUES (4022,'Norwalk','USA','California',103298);
INSERT INTO `city` VALUES (4023,'Gary','USA','Indiana',102746);
INSERT INTO `city` VALUES (4024,'Berkeley','USA','California',102743);
INSERT INTO `city` VALUES (4025,'Santa Clara','USA','California',102361);
INSERT INTO `city` VALUES (4026,'Green Bay','USA','Wisconsin',102313);
INSERT INTO `city` VALUES (4027,'Cape Coral','USA','Florida',102286);
INSERT INTO `city` VALUES (4028,'Arvada','USA','Colorado',102153);
INSERT INTO `city` VALUES (4029,'Pueblo','USA','Colorado',102121);
INSERT INTO `city` VALUES (4030,'Sandy','USA','Utah',101853);
INSERT INTO `city` VALUES (4031,'Athens-Clarke County','USA','Georgia',101489);
INSERT INTO `city` VALUES (4032,'Cambridge','USA','Massachusetts',101355);
INSERT INTO `city` VALUES (4033,'Westminster','USA','Colorado',100940);
INSERT INTO `city` VALUES (4034,'San Buenaventura','USA','California',100916);
INSERT INTO `city` VALUES (4035,'Portsmouth','USA','Virginia',100565);
INSERT INTO `city` VALUES (4036,'Livonia','USA','Michigan',100545);
INSERT INTO `city` VALUES (4037,'Burbank','USA','California',100316);
INSERT INTO `city` VALUES (4038,'Clearwater','USA','Florida',99936);
INSERT INTO `city` VALUES (4039,'Midland','USA','Texas',98293);
INSERT INTO `city` VALUES (4040,'Davenport','USA','Iowa',98256);
INSERT INTO `city` VALUES (4041,'Mission Viejo','USA','California',98049);
INSERT INTO `city` VALUES (4042,'Miami Beach','USA','Florida',97855);
INSERT INTO `city` VALUES (4043,'Sunrise Manor','USA','Nevada',95362);
INSERT INTO `city` VALUES (4044,'New Bedford','USA','Massachusetts',94780);
INSERT INTO `city` VALUES (4045,'El Cajon','USA','California',94578);
INSERT INTO `city` VALUES (4046,'Norman','USA','Oklahoma',94193);
INSERT INTO `city` VALUES (4047,'Richmond','USA','California',94100);
INSERT INTO `city` VALUES (4048,'Albany','USA','New York',93994);
INSERT INTO `city` VALUES (4049,'Brockton','USA','Massachusetts',93653);
INSERT INTO `city` VALUES (4050,'Roanoke','USA','Virginia',93357);
INSERT INTO `city` VALUES (4051,'Billings','USA','Montana',92988);
INSERT INTO `city` VALUES (4052,'Compton','USA','California',92864);
INSERT INTO `city` VALUES (4053,'Gainesville','USA','Florida',92291);
INSERT INTO `city` VALUES (4054,'Fairfield','USA','California',92256);
INSERT INTO `city` VALUES (4055,'Arden-Arcade','USA','California',92040);
INSERT INTO `city` VALUES (4056,'San Mateo','USA','California',91799);
INSERT INTO `city` VALUES (4057,'Visalia','USA','California',91762);
INSERT INTO `city` VALUES (4058,'Boulder','USA','Colorado',91238);
INSERT INTO `city` VALUES (4059,'Cary','USA','North Carolina',91213);
INSERT INTO `city` VALUES (4060,'Santa Monica','USA','California',91084);
INSERT INTO `city` VALUES (4061,'Fall River','USA','Massachusetts',90555);
INSERT INTO `city` VALUES (4062,'Kenosha','USA','Wisconsin',89447);
INSERT INTO `city` VALUES (4063,'Elgin','USA','Illinois',89408);
INSERT INTO `city` VALUES (4064,'Odessa','USA','Texas',89293);
INSERT INTO `city` VALUES (4065,'Carson','USA','California',89089);
INSERT INTO `city` VALUES (4066,'Charleston','USA','South Carolina',89063);




DROP TABLE IF EXIST `country`
CREATE TABLE `country` (
  `Code` CHAR(3) NOT NULL DEFAULT '',
  `Name` CHAR(52) NOT NULL DEFAULT '',
  `Continent` enum('Asia','Europe','North America','Africa','Oceania','Antarctica','South America') NOT NULL DEFAULT 'Asia',
  `Region` CHAR(26) NOT NULL DEFAULT '',
  `SurfaceArea` FLOAT(10,2) NOT NULL DEFAULT '0.00',
  `IndepYear` SMALLINT(6) DEFAULT NULL,
  `Population` INT(11) NOT NULL DEFAULT '0',
  `LifeExpectancy` FLOAT(3,1) DEFAULT NULL,
  `GNP` FLOAT(10,2) DEFAULT NULL,
  `GNPOld` FLOAT(10,2) DEFAULT NULL,
  `LocalName` CHAR(45) NOT NULL DEFAULT '',
  `GovernmentForm` CHAR(45) NOT NULL DEFAULT '',
  `HeadOfState` CHAR(60) DEFAULT NULL,
  `Capital` INT(11) DEFAULT NULL,
  `Code2` CHAR(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `country` VALUES ('USA','United States','North America','North America',9363520.00,1776,278357000,77.1,8510700.00,8110900.00,'United States','Federal Republic','George W. Bush',3813,'US');
INSERT INTO `country` VALUES ('CAN','Canada','North America','North America',9970610.00,1867,31147000,79.4,598862.00,625626.00,'Canada','Constitutional Monarchy, Federation','Elisabeth II',1822,'CA');



DROP TABLE IF EXISTS `countrylanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countrylanguage` (
  `CountryCode` CHAR(3) NOT NULL DEFAULT '',
  `Language` CHAR(30) NOT NULL DEFAULT '',
  `IsOfficial` enum('T','F') NOT NULL DEFAULT 'F',
  `Percentage` FLOAT(4,1) NOT NULL DEFAULT '0.0',
  PRIMARY KEY (`CountryCode`,`Language`),
  KEY `CountryCode` (`CountryCode`),
  CONSTRAINT `countryLanguage_ibfk_1` FOREIGN KEY (`CountryCode`) REFERENCES `country` (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


INSERT INTO `countrylanguage` VALUES ('USA','Chinese','F',0.6);
INSERT INTO `countrylanguage` VALUES ('USA','English','T',86.2);
INSERT INTO `countrylanguage` VALUES ('USA','French','F',0.7);
INSERT INTO `countrylanguage` VALUES ('USA','German','F',0.7);
INSERT INTO `countrylanguage` VALUES ('USA','Italian','F',0.6);
INSERT INTO `countrylanguage` VALUES ('USA','Japanese','F',0.2);
INSERT INTO `countrylanguage` VALUES ('USA','Korean','F',0.3);
INSERT INTO `countrylanguage` VALUES ('USA','Polish','F',0.3);
INSERT INTO `countrylanguage` VALUES ('USA','Portuguese','F',0.2);
INSERT INTO `countrylanguage` VALUES ('USA','Spanish','F',7.5);
INSERT INTO `countrylanguage` VALUES ('USA','Tagalog','F',0.4);
INSERT INTO `countrylanguage` VALUES ('USA','Vietnamese','F',0.2);

INSERT INTO `countrylanguage` VALUES ('CAN','Chinese','F',2.5);
INSERT INTO `countrylanguage` VALUES ('CAN','Dutch','F',0.5);
INSERT INTO `countrylanguage` VALUES ('CAN','English','T',60.4);
INSERT INTO `countrylanguage` VALUES ('CAN','Eskimo Languages','F',0.1);
INSERT INTO `countrylanguage` VALUES ('CAN','French','T',23.4);
INSERT INTO `countrylanguage` VALUES ('CAN','German','F',1.6);
INSERT INTO `countrylanguage` VALUES ('CAN','Italian','F',1.7);
INSERT INTO `countrylanguage` VALUES ('CAN','Polish','F',0.7);
INSERT INTO `countrylanguage` VALUES ('CAN','Portuguese','F',0.7);
INSERT INTO `countrylanguage` VALUES ('CAN','Punjabi','F',0.7);
INSERT INTO `countrylanguage` VALUES ('CAN','Spanish','F',0.7);
INSERT INTO `countrylanguage` VALUES ('CAN','Ukrainian','F',0.6);