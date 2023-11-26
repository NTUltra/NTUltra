event_inherited()


if hspeed > 0
	right = image_xscale;
else if hspeed < 0
	right = -image_xscale;

if walk > 0
{
	if sprite_index != spr_hurt
		motion_add(direction,acc)

}

if target != noone
{
	if instance_exists(target)
		mp_potential_step(target.x,target.y,acc,0)
}


if speed > maxSpeed
	speed = maxSpeed

//I'm hurt I will bite now
if instance_exists(Player) && sprite_index = spr_hurt
	motion_add(point_direction(x,y,Player.x,Player.y),acc);

