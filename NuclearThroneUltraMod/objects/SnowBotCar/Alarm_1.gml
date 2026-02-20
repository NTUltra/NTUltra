alarm[1] = 20
scrTarget()
meleedamage = 0
sprite_index = spr_idle
if target != noone
{
if !collision_line(x,y,target.x,target.y,Wall,0,0) and random(2) < 1 and point_distance(x,y,target.x,target.y) < 210
{
gunangle = point_direction(x,y,target.x,target.y);
instance_create(x-5,y,Notice);
instance_create(x,y,Notice);
instance_create(x+5,y,Notice);
alarm[3] = 13;

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

