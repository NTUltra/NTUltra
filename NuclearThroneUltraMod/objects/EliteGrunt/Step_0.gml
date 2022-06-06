event_inherited()

if roll = 0
{
if walk > 0
{
walk -= 1
motion_add(direction,0.8)
}

scrRoguePopo();

if speed > 3 && my_health > 0
speed = 3

if instance_exists(Player)
{
if Player.speed > 0 or my_health < maxhealth
freeze += 4
if Player.can_shoot = 0
freeze += 8
}
image_angle=0;

if dodge > 0
{
sprite_index=spr_walk;
move_contact_solid(direction,2)
dodge -= 1
}

if point_distance(x,y,UberCont.mouse__x,UberCont.mouse__y)<60{
if mouse_check_button_pressed(mb_left) and target > 0
{
if point_distance(x,y,target.x,target.y) < 64
direction = point_direction(x,y,target.x,target.y)
else
direction = point_direction(target.x+lengthdir_x(point_distance(x,y,target.x,target.y)*0.95,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),target.y+lengthdir_y(point_distance(x,y,target.x,target.y)*0.95,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),x,y)+random(60)-30
dodge = 3
walk=5;
sprite_index=spr_walk;
gunangle = direction
}}

}
else
{
//rolling
motion_add(point_direction(x,y,target.x,target.y)+random(30)-15,0.4);
speed = 5
instance_create(x+random(6)-3,y+random(6),Dust)

if random(80)<1
direction = point_direction(x,y,target.x,target.y)+random(80)-40

if rolltime<0 && random(20)<1
{
roll = 0
image_angle=0;
}
else
{
rolltime--;
}
image_angle=direction;
}

