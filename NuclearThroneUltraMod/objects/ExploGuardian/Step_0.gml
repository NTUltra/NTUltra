event_inherited()





if fire && !charge
{
	sprite_index = spr_fire;
	speed = 0;
}
else if speed < 1
{
	spr_idle = spr_normal;
	spr_hurt = spr_normal_hurt;
	speed = 1;
}
	
motion_add(direction,2)

if speed > 4
speed = 4

if charge || fire
{
	speed = 0;
}
