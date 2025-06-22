/// @description Gas strike
alarm[5] = actTime;
sprite_index = spr_idle
var aimDirection = point_direction(x,y,targetX,targetY);
if (myThunderStrikeTarget != noone && instance_exists(myThunderStrikeTarget))
{
	targetX = myThunderStrikeTarget.x;
	targetY = myThunderStrikeTarget.y;
	with myThunderStrikeTarget
	{
		instance_destroy();	
	}
	snd_play_2d(sndAboutToGas);
	instance_create(targetX,targetY,AboutToGas);
	var ang = random(360)
	repeat(6)
	{
		instance_create(targetX + lengthdir_x(32,ang),targetY+ lengthdir_y(32,ang),AboutToGas)
		ang += 60;
	}
	ang += 15;
	repeat(12)
	{
		instance_create(targetX + lengthdir_x(64,ang),targetY+ lengthdir_y(64,ang),AboutToGas)
		ang += 30;
	}
	var ang = random(360);
	var am = 12;
	var angStep = 360/am;
	repeat(am)
	{
		with instance_create(x,y,ToxicGas) {
			cantHitTeam = other.team;
			motion_add(ang,4);	
		}
		ang += angStep;
	}
}
