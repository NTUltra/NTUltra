/// @description Spawn a frost
alarm[1] = 90;
snd_play(sndBreakIce,0.1);
var ang = random(360);
repeat(6)
{
	with instance_create(x,y + 16,EnemyIceFlame)
	{
		motion_add(ang,2);
		image_angle = direction
		team = other.team
	}
	ang += 60;	
}
ang += 30;
repeat(6)
{
	with instance_create(x,y + 16,EnemyIceFlame)
	{
		motion_add(ang,2.5);
		image_angle = direction
		team = other.team
	}
	ang += 60;
}