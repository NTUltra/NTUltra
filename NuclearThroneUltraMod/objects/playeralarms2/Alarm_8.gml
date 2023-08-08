/// @description Tranquility
var ang = random(360);
alarm[8] = 1;
with Player {
	if sprite_index == spr_hurt || alarm[3] > 0
	{
		snd_play(sndScorpionFire);
		repeat(4)
		{
			with instance_create(x,y,EnemyBullet2)
			{
				motion_add(ang,16);
				image_angle = direction
				team = other.team
			}
			ang += 90;
		}
	}
}