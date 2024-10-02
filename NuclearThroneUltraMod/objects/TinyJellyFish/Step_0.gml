event_inherited()


if !sleeping && sprite_index != spr_hurt and target != noone
	motion_add(point_direction(x,y,target.x,target.y),acc)
image_angle = direction - 90;
speed = maxSpeed;
if instance_exists(Player) && point_distance(x,y,Player.x,Player.y) < 48
	speed = maxSpeed - 1;
if sleeping
	speed = 0;
var n = instance_place(x,y,hitme)
if n != noone && n.team != team && n.team != 0
{
	esplode = true;
	my_health = 0;	
}