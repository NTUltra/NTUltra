event_inherited();

if instance_exists(Player)
{
	if Player.race == 22 && Player.bskin=2
		sprite_index=sprRogueCExplosion;
}

dmg = 9;

//Crown of death
if instance_exists(Player) && scrIsCrown(3) && object_index == RogueExplosion
{
	var am = 3;
	var dis = 34;
	var ang = random(360);
	var angStep = 360/am;
	repeat(am)
	{
		with instance_create(x+lengthdir_x(dis,ang),y+lengthdir_y(dis,ang),RogueExplosionCrownOfDeath)
		{
			dmg = 4;
			image_xscale = 0.5;
			image_yscale = 0.5;
			alarm[2] = 0;
		}
		ang += angStep;
	}
}