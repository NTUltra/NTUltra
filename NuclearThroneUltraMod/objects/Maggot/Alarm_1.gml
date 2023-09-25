scrTarget()
alarm[1] = 30+random(20)

if instance_exists(Player)
{
    if Player.loops>0
    {//LOOP
    alarm[1] = 10+random(10)
    }
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

