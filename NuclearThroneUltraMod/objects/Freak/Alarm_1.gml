scrTarget()
alarm[1] = 6+random(5)

if instance_exists(Player)
{
if Player.loops>0
alarm[1] = 5+random(5);
}

if target > 0
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0 && point_distance(x,y,target.x,target.y) > 8
{
walk = 20
motion_add(point_direction(x,y,target.x,target.y)+random(80)-40,1.5)
}
else
motion_add(random(360),0.5)
}
else 
motion_add(random(360),0.5)

