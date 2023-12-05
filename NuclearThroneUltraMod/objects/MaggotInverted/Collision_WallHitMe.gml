/// @description Bounce
move_bounce_solid(false)

if charge
{
	charge = false;
	image_angle = 0;
	alarm[1] = 10;
	sprite_index = spr_walk;
}