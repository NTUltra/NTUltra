/// @description Kill me
var p = instance_place(x,y,Bullet1)
if p != noone && p.team == 2
{
	if sprite_index != spr_dead
	{
		sprite_index = spr_dead;
		image_index = 0;
		image_speed = 0.4;
		snd_play(sndVenuz);
		with p
		{
			instance_destroy();	
		}
		BackCont.shake += 50;
	}
}
else
{
	alarm[4] = 1;
}