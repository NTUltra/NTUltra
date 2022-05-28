event_inherited()
speed = 3//2

//target = instance_nearest(x,y,Player)
if sprite_index != spr_hurt and target > 0
	motion_add(point_direction(x,y,target.xprevious,target.yprevious),0.6)//1.8

if sprite_index = spr_hurt
alarm[1] = 20

image_angle = direction;



with instance_create(xprevious,yprevious,TrapFire)
	team=other.team;