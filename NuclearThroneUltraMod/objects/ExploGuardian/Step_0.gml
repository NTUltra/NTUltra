event_inherited()

motion_add(direction,2)

if charge && sprite_index != spr_hurt
{
	sprite_index = spr_charge;
	speed = 0;
}
else if fire && !charge
{
	sprite_index = spr_fire;
	speed = 0;
}
else if speed < 1 && !charge
{
	spr_idle = spr_normal;
	spr_hurt = spr_normal_hurt;
	speed = 1;
}
	

if speed > 4
speed = 4
