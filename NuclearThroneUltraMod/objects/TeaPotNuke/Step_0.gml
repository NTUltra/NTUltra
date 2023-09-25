event_inherited()

//target = instance_nearest(x,y,Player)
if sprite_index != spr_hurt and target != noone
motion_add(point_direction(x,y,target.x,target.y),1.8)

if sprite_index = spr_hurt
alarm[1] = 30

image_angle=direction;

speed = 2

if random(2) < 1{
with instance_create(xprevious,yprevious,Smoke)
	depth = other.depth + 1;
//scrTarget()
}
else{
with instance_create(xprevious,yprevious,TrapFire)
team=other.team;
}

