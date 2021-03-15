/*<header>
<entity> towers </entity>
<project> (FTR90U78) </project>
<developerid> Leandropaz (201br) </developerid>
</header>*/

use master
go
	alter procedure Decrypte_Passe
(
	@IDutilisateur varchar (30),
	@PWD3 varchar (20)	
)
AS
Begin Try

 declare @PWD4 as varbinary(max)
 

select @PWD4 = Passe from utilisateur where IDutilisateur = @IDutilisateur

select PWDCOMPARE(@PWD3,@PWD4,0)


End try
Begin catch
	Select ERROR_NUMBER() as NumberError,
	ERROR_SEVERITY() as ErroSeverity,
	ERROR_STATE() As ErrorState,
	ERROR_PROCEDURE() As ErrorProcedure,
	Error_line() As ErrorLine,
	ERROR_MESSAGE() As Error_Menssage
End Catch

exec Decrypte_Passe @IDutilisateur = 'Gordo fei',@PWD3 = 'ufo21328'

exec Decrypte_Passe @IDutilisateur = 'leo', @PWD3 = 'farfnir86'


sp_helptext Decrypte_Passe


 ALTER procedure Decrypte_Passe  
(  
 @IDutilisateur varchar (30),  
 @PWD3 varchar (20)   
)  
AS  
Begin Try  
  
 declare @PWD4 as varbinary(max)  
   
  
select @PWD4 = Passe from utilisateur where IDutilisateur = @IDutilisateur  
  
select PWDCOMPARE(@PWD3,@PWD4,0)  
  
  
End try  
Begin catch  
 Select ERROR_NUMBER() as NumberError,  
 ERROR_SEVERITY() as ErroSeverity,  
 ERROR_STATE() As ErrorState,  
 ERROR_PROCEDURE() As ErrorProcedure,  
 Error_line() As ErrorLine,  
 ERROR_MESSAGE() As Error_Menssage  
End Catch  