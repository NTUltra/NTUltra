/// @description Bolt marrow
if instance_exists(Player) and instance_exists(enemy)
{dir = instance_nearest(x,y,enemy)
if speed > 0 and Player.skill_got[21] = 1 and point_distance(x,y,dir.x,dir.y) < 48 +Player.betterboltmarrow
{x += lengthdir_x(1,point_direction(x,y,dir.x,dir.y))
y += lengthdir_y(1,point_direction(x,y,dir.x,dir.y))}}