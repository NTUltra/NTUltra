if instance_exists(creator)
{if point_distance(x,y,creator.x,creator.y) > 96 
{
if speed > maxSpeed+1
speed = maxSpeed+1
mp_potential_step(targetx,targety,1,false)
}
else if speed > maxSpeed
speed = maxSpeed
}else if speed > maxSpeed
speed = maxSpeed


friction = 0.2

if walk > 0
{
walk -= 1
motion_add(direction,1)
}

if speed > 0
sprite_index = spr_walk
else
sprite_index = spr_idle

