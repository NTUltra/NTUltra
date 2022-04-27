event_inherited()

if walk > 0
{
walk -= 1
motion_add(direction,3)
if target > 0
mp_potential_step(target.x,target.y,2,false)
}


if dodge > 0
{
sprite_index=spr_walk;
move_contact_solid(direction,8)
dodge -= 1
}

if point_distance(x,y,UberCont.mouse__x,UberCont.mouse__y)<60{
if mouse_check_button_pressed(mb_left) and target > 0
{
if point_distance(x,y,target.x,target.y) < 64
direction = point_direction(x,y,target.x,target.y)
else
direction = point_direction(target.x+lengthdir_x(point_distance(x,y,target.x,target.y)*0.95,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),target.y+lengthdir_y(point_distance(x,y,target.x,target.y)*0.95,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),x,y)+random(60)-30
dodge = 4
walk=4;
sprite_index=spr_walk;
gunangle = direction
}}


if speed > 3.5
speed = 3.5

