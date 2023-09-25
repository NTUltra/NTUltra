alarm[1] = 5+random(10)

if !instance_exists(target)
target = -1
if target = -1
{
if instance_exists(enemy)
target = instance_nearest(x,y,enemy)
}

if target != noone
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
direction = point_direction(x,y,target.x,target.y)+random(20)-10
else 
motion_add(random(360),0.5)
}
else 
motion_add(random(360),0.5)

