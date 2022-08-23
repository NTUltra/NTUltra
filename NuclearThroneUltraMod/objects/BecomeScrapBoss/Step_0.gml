/// @description Wake up
scrTarget()
if target != noone
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
	timer += 1
else if timer > 0//Added some form of sightloss
	timer -= 0.25;

if point_distance(x,y,target.x,target.y) < 160 and !instance_exists(Portal) and timer > 300
{
instance_destroy()
}
}

event_inherited()

