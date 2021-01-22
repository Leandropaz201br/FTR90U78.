/*<header>
<entity> towers </entity>
<project> (FTR90U78) </project>
<developerid> Leandropaz (201br) </developerid>
</header>*/


USE Towers 
GO 
ALTER PROCEDURE SearchTower (@idTower as numeric) 
AS 
Begin Try
	select t.IdentificationTower,
	t.AliasTower,
	tt.DescriptionTypeTower,
	t.HeightTower,
	U.DescriptionUnity,
	t.GaugeTower,
	TG.DescriptionGauge,
	t.LatitudePositionTower,
	t.LongitudePositionTower,
	t.RegistrationDateTower,t.StateTower,
	US.NameState
	from towers as t join Unity as U on t.HeightUnitTower=U.IdentificationUnity
	join USStates as US on t.StateTower = US.SiglaState
	join TypesGauge as TG on t.GaugeUnitTower = TG.IndentificationGauge
	join TypesTower as tt on tt.IdentificationTypeTower=t.TypeTower
	--identification search index
	where t.IdentificationTower=@IdTower
End try
Begin catch
	Select ERROR_NUMBER() as NumberError,
	ERROR_SEVERITY() as ErroSeverity,
	ERROR_STATE() As ErrorState,
	ERROR_PROCEDURE() As ErrorProcedure,
	Error_line() As ErrorLine,
	ERROR_MESSAGE() As Error_Menssage
End Catch
 

