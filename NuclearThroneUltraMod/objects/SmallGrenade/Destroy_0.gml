snd_play(sndExplosionS)
with instance_create(x,y,SmallExplosion)
{
	if instance_exists(Player) && Player.crown == 3//crown of death
	{
		var dir = random(360);
		var dis = 8 + random(16);
		instance_create(x+lengthdir_x(dis,dir),y+lengthdir_y(dis,dir),SmallExplosion)
	}
}
event_inherited();