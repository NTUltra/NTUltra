/// @description Leap toward Target
if alarm[2] > 0 || alarm[4] > 0 || alarm[3] > 0
	exit;
if (right > 0 && target.x > x) || (right < 0 && target.x < x)
{
	leapDirection = point_direction(x,y,target.x,target.y);
	alarm[2] = leapDuration;
	spr_walk = spr_leap;
	spr_idle_use = spr_leap;
	spr_hurt = spr_hurt_leap;
	immuneHealth = my_health;
	forceAnimation = 0;
	alarm[3] = (sprite_get_number(spr_leap_start)/image_speed) + 1
	event_user(1);
	snd_play(sndBigVultureChargeTell);
}
else
{
	event_user(1);	
}