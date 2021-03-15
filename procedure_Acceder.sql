/*<header>
<entity> towers </entity>
<project> (FTR90U78) </project>
<developerid> Leandropaz (201br) </developerid>
</header>*/

use master
go
	alter procedure Acceder (@IDutilisateur varchar(30))
	
AS 
Begin Try
	
	select Nom_D_utilisateur,Passe from utilisateur where IDutilisateur = 'leo'
	
End try
Begin catch
	Select ERROR_NUMBER() as NumberError,
	ERROR_SEVERITY() as ErroSeverity,
	ERROR_STATE() As ErrorState,
	ERROR_PROCEDURE() As ErrorProcedure,
	Error_line() As ErrorLine,
	ERROR_MESSAGE() As Error_Menssage
End Catch	

