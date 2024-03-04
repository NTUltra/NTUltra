/// @description Tranquility
var ang = random(360);
alarm[8] = 1;
with Player {
	if ultra_got[71] && (sprite_index == spr_hurt || alarm[3] > 0)
	{
		snd_play(sndScorpionFire);
		repeat(8)
		{
			with instance_create(x,y,EnemyBullet2)
			{
				motion_add(ang,18);
				image_angle = direction
				team = other.team
				event_perform(ev_alarm,11);
			}
			ang += 45;
		}
	}
}