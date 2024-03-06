/// @description GASS
instance_create(x,y,WallBreakWallOnly);
repeat(8)
{
	with instance_create(x,y,ToxicGas)
	{
		cantHitTeam = other.team;
	}
}