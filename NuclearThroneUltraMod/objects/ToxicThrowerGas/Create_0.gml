event_inherited();
image_angle = random(360)
motion_add(random(360),random(1.5)+0.2)
friction = 0.06
image_speed = 0
image_index = random(5)

image_xscale = 0.6
image_yscale = 0.6
rot = (1+random(3))*choose(1,-1)
growspeed = 0.002+random(0.003)
alarm[0]=10;
team = 2
typ = 0//2
depth = 0;
dmg=3;
if instance_exists(Player)
{
	//FROG POTENCY
	if Player.ultra_got[92] && !Player.altUltra
	{
		dmg=4;
		image_xscale += 0.054;
		image_yscale += 0.054;
	}
	if place_meeting(x,y,Wall)
	{
		var ground = instance_nearest(x,y,Floor);
		var o = 16;
		if ground.object_index == FloorExplo
				o = 8;
		move_outside_solid(point_direction(x,y,ground.x+o,ground.y+o),16);	
	}
}
alarm[1] = 10;
alarm[11] = 1;