/*<header>
<entity> towers </entity>
<project> (FTR90U78) </project>
<developerid> Leandropaz (201br) </developerid>
</header>*/

declare 
	@IDutilisateur varchar (30),
	@Nom_D_utilisateur varchar(200),
	@PWD3 varchar (20),
	@PWD4 varbinary(max),
	@Compte bit = 1

set @IDutilisateur = 'Gordo fei'
set @Nom_D_utilisateur = 'claudio matias paz silveira'
set @PWD3 = 'ufo213285'

select @PWD4 = Passe from utilisateur where IDutilisateur = @IDutilisateur

select PWDCOMPARE(@PWD3,@PWD4)