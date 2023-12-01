if my_health <= 0
instance_destroy()


if speed = 0
{if sprite_index != spr_hurt
sprite_index = spr_idle}
else
{if sprite_index != spr_hurt
sprite_index = spr_walk}
if sprite_index = spr_hurt
{if image_index > 2
sprite_index = spr_idle}

if walk > 0
{
	walk -= 1
	motion_add(direction,0.8)
}
if target != noone && instance_exists(target) {
	motion_add(point_direction(x,y,target.x,target.y), 0.2)
}
if instance_exists(Player)
{
	var dis = point_distance(x,y,Player.x,Player.y)
	if dis > 52
	{
		motion_add(point_direction(x,y,Player.x,Player.y), 0.15)
	}

}
speed = clamp(speed,1.2,maxSpeed);