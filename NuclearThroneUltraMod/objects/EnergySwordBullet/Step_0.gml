//image_angle = direction
image_angle+=40;

if(speed<=0){instance_destroy();}
if instance_exists(enemy) and instance_exists(Player)
{

if speed > 0 and Player.skill_got[21] = 1
{
dir = instance_nearest(x,y,enemy)
    if point_distance(x,y,dir.x,dir.y) < 24 +Player.betterboltmarrow
    {
    x = dir.x-hspeed*0.9
    y = dir.y-vspeed*0.9
    speed-=0.4;//this so it isn't OP against bosses and big targets
    }
/*x += lengthdir_x(8,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y))
y += lengthdir_y(8,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y))*/
}}

/* */
/*  */
