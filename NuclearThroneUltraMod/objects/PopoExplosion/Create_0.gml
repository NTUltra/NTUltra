event_inherited();

with myExplosionMask
{
	mask_index = mskPopoExplosion4Player;
	dmg = 7;
	if UberCont.opt_gamemode == 9
		dmg = 4;
	else if scrIsHardMode()//HARD MODE
		dmg = 10;
}
dmg = 8;
//Crown of death
if instance_exists(Player)
{
	if Player.ultra_got[57]
	{
		dmg += 3;
	}
	if Player.crown == 3 && object_index == PopoExplosion
	{
		var am = 3;
		var dis = 42;
		var ang = random(360);
		var angStep = 360/am;
		repeat(am)
		{
			with instance_create(x+lengthdir_x(dis,ang),y+lengthdir_y(dis,ang),PopoExplosionCrownOfDeath)
			{
				dmg = 4;
				image_xscale = 0.5;
				image_yscale = 0.5;
				alarm[2] = 0;
			}
			ang += angStep;
		}
	}
}