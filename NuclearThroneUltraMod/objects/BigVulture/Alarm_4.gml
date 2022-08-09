/// @description Charging (end)
spr_idle = sprBigVultureChargeStop;
spr_walk = sprBigVultureChargeStop;
spr_hurt = sprBigVultureHurt;
meleedamage = 0;

image_angle = 0;
speed = 3;
image_index = 0;
if random(3) < 1
{
	event_user(0);
}
else
{
	alarm[7] = 9;//Stoptime
	alarm[1] += 9;
}
