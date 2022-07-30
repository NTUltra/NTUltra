scrTarget()
if target > 0
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
timer += 1

if point_distance(x,y,target.x,target.y) < 160 and !instance_exists(Portal) and timer > 200
{
instance_destroy()
}
}

event_inherited()

