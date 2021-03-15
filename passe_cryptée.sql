/*<header>
<entity> towers </entity>
<project> (FTR90U78) </project>
<developerid> Leandropaz (201br) </developerid>
</header>*/

declare 
	@IDutilisateur varchar (30),
	@Nom_D_utilisateur varchar(200),
	@PWD1 varchar (20),
	@PWD2 varbinary(max),
	@Compte bit = 1

set @IDutilisateur = 'Gordo fei'
set @Nom_D_utilisateur = 'claudio matias paz silveira'
set @PWD1 = 'ufo213285'
set @PWD2 = Convert(varbinary(max),pwdEncrypt(@PWD1))

select @PWD2 

insert into utilisateur
(
	IDutilisateur,
	Nom_D_utilisateur,
	Passe
)
values
(
	@IDutilisateur,
	@Nom_D_utilisateur,
	@PWD2,
	@Compte
)