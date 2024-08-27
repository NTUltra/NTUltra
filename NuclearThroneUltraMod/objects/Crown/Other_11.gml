/// @description Wall collision
if (sprite_index == sprCrown36Idle)
{
	image_alpha = 0.5;
}
else
{
	move_bounce_solid(false)
	move_outside_solid(direction,8);
	mp_potential_step(targetx,targety,1,false)
}
