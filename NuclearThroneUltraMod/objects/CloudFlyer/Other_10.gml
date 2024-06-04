/// @description Fire
snd_play(sndLaserCannonCharge)
walk = 0;
speed = 0;
sprite_index = spr_fire;
image_index = 0;
alarm[2] = (image_number/image_speed) + 1
with instance_create(x, y, EnemyDamageCircle) {
    team = other.team
}
alarm[1] = actTime * 3 + random(actTime * 2);

var ang = random(360);
repeat(6)
{
	with instance_create(x+random(6)-3,y+random(6)-3,LaserCharge)
	{
		motion_add(ang,2+random(1))
		alarm[0] = 2+random(4)
	}
	ang += 60;
}