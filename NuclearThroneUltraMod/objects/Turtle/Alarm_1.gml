alarm[1] = 50+random(10)
scrTarget()
walk = 0

if target != noone
{
//GOT TARGET
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0 and point_distance(x,y,target.x,target.y) < 320
{
//CAN SEE
direction = point_direction(x,y,target.x,target.y)+random(60)-30

if random(3) < 2
walk = 50
else
alarm[1] /= 2
}
else
{
//CANT SEE
direction = random(360)

if random(4) < 1
walk = 50
else
alarm[1] /= 2
}

}

