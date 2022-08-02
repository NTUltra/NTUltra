scrTarget()
alarm[1] = 6+random(5)
if target > 0
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
{
walk = 20
motion_add(point_direction(x,y,target.x,target.y)+random(180)-90,1.5)
}
else
{
motion_add(random(360),0.5)
alarm[1] += 3;
}
}
else 
motion_add(random(360),0.5)

