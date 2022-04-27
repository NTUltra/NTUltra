event_inherited()

if walk > 0
{
walk -= 1
motion_add(direction,0.8)
}

if speed > 4.5 && stolen<1
speed = 4.5
else if speed>6
speed=6;

if speed=0
alpha=0.1
else
alpha=(speed*0.2)+0.1//0.25?

if alpha>1
alpha=1;

if dodge > 0
{
sprite_index=spr_walk;
move_contact_solid(direction,4)
dodge -= 1
}

if point_distance(x,y,UberCont.mouse__x,UberCont.mouse__y)<60{
if mouse_check_button_pressed(mb_left) and target > 0
{
if point_distance(x,y,target.x,target.y) < 70
direction = point_direction(x,y,target.x,target.y);
else
direction = point_direction(target.x+lengthdir_x(point_distance(x,y,target.x,target.y)*0.95,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),target.y+lengthdir_y(point_distance(x,y,target.x,target.y)*0.95,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),x,y)+random(60)-30
dodge = 3
walk=5;
sprite_index=spr_walk;
gunangle = point_direction(x,y,target.x,target.y);
}}

