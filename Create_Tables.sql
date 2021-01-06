
create table towers
( 
IdentificationTower smallint,
AliasTower nvarchar(50),
LatitudePositionTower nvarchar(50),
LongitudePositionTower nvarchar(50),
HeightTower numeric,
HeightUnitTower numeric,
GaugeTower numeric,
GaugeUnitTower numeric,
TypeTower numeric,
StateTower varchar(2),
RegistrationDateTower dateTime,
StatusTower nvarchar(200)
)
create table TypesTower
(
IdentificationTypeTower smallint,
DescriptionTypeTower nvarchar(30),
ActivetypeTower bit
)
create table TypesGauge
(
IndentificationGauge smallint,
DescriptionGauge nvarchar(30),
ActiveGauge bit
)
create table Unity
(
IdentificationUnity smallint,
DescriptionUnity nvarchar(30),
ActiveUnity bit
)
create table USStates
(
SinglaState nvarchar(2),
NameState nvarchar(30)
)