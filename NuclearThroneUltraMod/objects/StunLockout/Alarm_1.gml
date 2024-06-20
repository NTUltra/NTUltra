/// @description Show a stun sprite a little later
with instance_create(x,y-8,HumphryConfuse)
{
	image_xscale = choose(1,-1);
	image_speed = 0.4;
	sprite_index = sprEnemyConfusion;
	alarm[0] = 16;//STUNLOCK IS 13
}