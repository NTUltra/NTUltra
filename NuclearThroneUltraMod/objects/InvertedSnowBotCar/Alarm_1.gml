alarm[1] = 25
scrTarget()
meleedamage = 0
sprite_index = spr_idle
if target != noone
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0 and random(2) < 1 and point_distance(x,y,target.x,target.y) < 190
{

gunangle = point_direction(x,y,target.x,target.y)+random(8)-4
//SEE PLAYER
alarm[3] = 7;



}else if random(5) < 1
{
//DO NOTHING
gunangle = random(360)
walk = 30
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}
else//walk
{
walk = 14
motion_add(point_direction(x,y,target.x,target.y)+random(20)-10,0.4);
gunangle=direction;
alarm[1]=walk;
}

if target.x < x
right = -1
else if target.x > x
right = 1
}
else if random(5) < 1
{
//DO NOTHING
gunangle = random(360)
walk = 30
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}

