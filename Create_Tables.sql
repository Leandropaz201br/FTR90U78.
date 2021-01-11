/*<header>
<entity> towers </entity>
<project> (FTR90U78) </project>
<developerid> Leandropaz (201br) </developerid>
</header>*/


/*select 
t.IdentificationTower,
t.AliasTower,
t.HeightTower,
U.DescriptionUnity,
t.StateTower,US.NameState,
t.GaugeTower,TG.DescriptionGauge
from towers as t join Unity as U on t.HeightUnitTower=U.IdentificationUnity
join USStates as US on t.StateTower = US.SiglaState
join TypesGauge as TG on t.GaugeUnitTower = TG.IdentificationGauge;*/


select * from towers; 
create table towers
( 

IdentificationTower numeric identity (1,1) primary key,
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
);
create table TypesTower
( 
IdentificationTypeTower numeric identity (1,1) primary key,
DescriptionTypeTower nvarchar(30),
ActivetypeTower bit
);
create table TypesGauge
(
IndentificationGauge numeric identity (1,1) primary key,
DescriptionGauge nvarchar(30),
ActiveGauge bit
);
create table Unity
(
IdentificationUnity numeric identity (1,1) primary key,
DescriptionUnity nvarchar(30),
ActiveUnity bit
);
create table USStates
(
SiglaState nvarchar(2) PRIMARY KEY,
NameState nvarchar(30)
);
