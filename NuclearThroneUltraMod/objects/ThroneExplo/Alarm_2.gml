var spd = 0;
var dir = 0;
if instance_exists(Player)
{
	spd = 0.1;
	dir = point_direction(x,y,Player.x,Player.y) + 180;
	if sprite_index == sprNothing2Death || sprite_index == sprInvertedNothing2Death
	{
		spd += 0.1;
		motion_add(dir,0.01);
	}
}

with instance_create(x+random(128-(rr*0.25))-64-(rr*0.125),y+random(128-(rr*0.25))-64-(rr*0.125),explo)
	motion_add(dir,spd);

if alarm[0] < 90
if random(2) < 1
{
	with instance_create(x+random(128-(rr*0.25))-64-(rr*0.125),y+random(128-(rr*0.25))-64-(rr*0.125),explo)
		motion_add(dir,spd);
}
if alarm[0] < 70
{
	if random(2) < 1
	{
		with instance_create(x+random(160-(rr*0.25))-80-(rr*0.125),y+random(200-(rr*0.25))-100-(rr*0.125),explo)
			motion_add(dir,spd);
	}
		with instance_create(x+random(160-(rr*0.25))-80-(rr*0.125),y+random(200-(rr*0.25))-100-(rr*0.125),explo)
			motion_add(dir,spd);
}
alarm[2] = 1;