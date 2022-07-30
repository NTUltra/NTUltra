alarm[1] = 15+random(20)

if instance_exists(Player)
{
if Player.loops>0
alarm[1] = 2+random(5);
}

scrTarget()
if target > 0
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
{
direction = point_direction(x,y,target.x,target.y)+random(20)-10
speed = 0.4
walk = 20+random(10)
alarm[1] = walk
}
else if random(5) < 1
{
motion_add(random(360),0.4)
walk = 5+random(15)
alarm[1] = walk+5+random(30)
}

}
else if random(10) < 1
{
motion_add(random(360),0.4)
walk = 5+random(15)
alarm[1] = walk+5+random(30)
}

