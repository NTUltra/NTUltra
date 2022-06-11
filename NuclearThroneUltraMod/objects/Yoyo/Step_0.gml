instance_create(x,y,DiscTrail);


dist += 1

if instance_exists(Player) and instance_exists(enemy)
{dir = instance_nearest(x,y,enemy)
if dir.team != team && speed > 0 and Player.skill_got[21] = 1 and point_distance(x,y,dir.x,dir.y) < 48 +Player.betterboltmarrow
{x += lengthdir_x(4,point_direction(x,y,dir.x,dir.y))
y += lengthdir_y(4,point_direction(x,y,dir.x,dir.y))}}

if dist>distrange
{
if instance_exists(Player)
{//return to player
motion_add(point_direction(x,y,Player.x,Player.y),0.8);


if place_meeting(x,y,Player)&&dist>10
{
instance_destroy();
instance_create(x,y,DiscDisappear)
}

}
}

image_angle+=20;

