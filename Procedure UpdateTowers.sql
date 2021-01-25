/*<header>
<entity> towers </entity>
<project> (FTR90U78) </project>
<developerid> Leandropaz (201br) </developerid>
</header>*/

use Towers
go

Create procedure UpdateTower(
    
	@IdentificationTower  numeric,
	@AliasTower  nvarchar(50),
	@LatitudePositionTower nvarchar(50),
	@LongitudePositionTower nvarchar(50),
	@HeightTower numeric,
	@HeightUnitTower numeric,
	@GaugeTower numeric,
	@GaugeUnitTower numeric,
	@TypeTower numeric,
	@StateTower varchar(2),
	@StatusTower nvarchar(200)
	)

AS
Begin Try

	update towers 
	set 
	AliasTower=@AliasTower,
	LatitudePositionTower = @LatitudePositionTower,
	LongitudePositionTower =@LongitudePositionTower,
	HeightTower = @HeightTower,
	HeightUnitTower = @HeightUnitTower,
	GaugeTower = @GaugeTower,
	GaugeUnitTower = @GaugeUnitTower,
	TypeTower = @TypeTower,
	StateTower = @StateTower,
	StatusTower =@StatusTower
	where IdentificationTower=@IdentificationTower

End try

Begin catch
	Select ERROR_NUMBER() as NumberError,
	ERROR_SEVERITY() as ErroSeverity,
	ERROR_STATE() As ErrorState,
	ERROR_PROCEDURE() As ErrorProcedure,
	Error_line() As ErrorLine,
	ERROR_MESSAGE() As Error_Menssage
End Catch
	