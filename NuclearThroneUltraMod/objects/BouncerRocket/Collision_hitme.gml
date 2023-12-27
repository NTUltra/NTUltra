/// @description xxx
if other.team != team
{
	instance_create(x+hspeed,y+vspeed,Explosion);
	hspeed *= -1;
	vspeed *= -1;
	with other
	{
		my_health -= 20
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,10)
	}
	snd_play(sndExplosion,0.1,true);
	hits--;
	if hits < 0
		instance_destroy();
}