/*<header>
<entity> towers </entity>
<project> (FTR90U78) </project>
<developerid> Leandropaz (201br) </developerid>
</header>*/

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
SiglaState varchar(2) PRIMARY KEY,
NameState nvarchar(30)
);
Alter table towers
add constraint FK_towers_X_TypesTower Foreign Key (TypeTower) references TypesTower (IdentificationTypeTower
);
Alter table towers
add constraint FK_towers_X_TypesGuage Foreign Key (GaugeUnitTower) references TypesGauge (IndentificationGauge
);
Alter table towers
add constraint FK_towers_X_Unity Foreign Key (HeightUnitTower) references Unity (IdentificationUnity
);
Alter table towers
add constraint FK_towers_X_USStates Foreign Key (StateTower) references USStates (SiglaState
);

/*Alter Table -- Nome da tabela que possui a chave estrangeira
add constraint -- coloque o nome da chave  que voce deseja 
Foreign Key (--Chave estrangeira )
references -- nome da tabela onde consta a chave primaria 
(
-- coloca o nome do campo da chave estrangeira
)*/