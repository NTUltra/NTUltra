scrDrop(40,6)
scrDrop(5,0)
snd_play(sndExplosionL);
if instance_exists(Player)
{
	var dir = point_direction(x,y,Player.x,Player.y) + 180
	with instance_create(x+lengthdir_x(8,dir),y+lengthdir_y(8,dir),GreenExplosion) {
		image_speed += 0.2;
		with myExplosionMask
		{
			image_speed += 0.2;	
		}
	}
}
else
{
	with instance_create(x,y,GreenExplosion) {
		image_speed += 0.2;
		with myExplosionMask
		{
			image_speed += 0.2;	
		}
	}
}
event_inherited()

