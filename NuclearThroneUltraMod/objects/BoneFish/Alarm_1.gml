scrTarget()
alarm[1] = actTime+random(10)


maxSpeed = 4
if target != noone
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0 and point_distance(x,y,target.x,target.y) < 180//96
{
maxSpeed=4.8;
direction = point_direction(x,y,target.x,target.y)+random(90)-45
speed = 0.4
walk = 15+random(5)
alarm[1] = walk+5
}
else if random(2) < 1
{
motion_add(random(360),0.5)
walk = 10+random(10)
alarm[1] = walk+10+random(10)
}

}
else if random(4) < 1
{
motion_add(random(360),0.4)
walk = 10+random(10)
alarm[1] = walk+10+random(10)
}

