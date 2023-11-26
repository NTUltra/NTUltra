event_inherited()

if sprite_index != spr_hurt
motion_add(direction,0.6)


if hspeed > 0
right = 1
else if hspeed < 0
right = -1

if charge
{
	if sprite_index = spr_hurt
	{
		charge = false;
		ignoreOverlap = false;
		image_angle = 0;
		alarm[1] = 10;
	}
	else
	{
		motion_add(direction,1);
		speed = 6;
		sprite_index = sprFiredMaggot;
		image_angle = direction+180;
	}
}
else
{
if instance_exists(Player)
{
if Player.loops>0
{//LOOP
if speed > 3
speed=3;
}
else if speed > 2
speed = 2

}else if speed > 2
speed = 2
}