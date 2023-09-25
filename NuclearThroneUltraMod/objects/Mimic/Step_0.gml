event_inherited()

scrTarget()
if target != noone
{
if point_distance(x,y,target.x,target.y) < 48 and sprite_index = spr_hurt
{
sprite_index = spr_walk
}
}

if speed > 2
speed = 2

