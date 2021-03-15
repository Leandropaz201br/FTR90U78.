/*<header>
<entity> towers </entity>
<project> (FTR90U78) </project>
<developerid> Leandropaz (201br) </developerid>
</header>*/

select * from utilisateur
 
create table utilisateur 
( 
	IDutilisateur varchar (30) primary key,
	Nom_D_utilisateur varchar (200),
	Passe varbinary (200),
	Compte bit
);

