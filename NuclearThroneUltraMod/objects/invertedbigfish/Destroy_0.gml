/// @description Gass

// Inherit the parent event
event_inherited();

snd_play(sndToxicBarrelGas)
var dir = random(360);
repeat(5)
{

	with instance_create(x,y,AcidStreak)
	{
	motion_add(dir,8)
	image_angle = direction
	}
	dir += 72;
}
repeat(20)
	with instance_create(x+random_range(10,-10),y+random_range(10,-10),ToxicGas)
		cantHitTeam = other.team;

repeat(6+clamp(0,GetPlayerLoops(),6))
{
	instance_create(x,y,InvertedBoneFish);
}