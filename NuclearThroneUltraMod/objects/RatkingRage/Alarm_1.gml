alarm[1] = 30+random(10)
scrTarget()
walk = 0;
if target != noone
{
if point_distance(x,y,target.x,target.y) < 120
{
//charge
walk = 40+random(10)

mydir = point_direction(x,y,target.x,target.y)+random(20)-10
meleedamage = 4
speed = 0.4

if target.x < x
right = -1
else if target.x > x
right = 1
}
}

