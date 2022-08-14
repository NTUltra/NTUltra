instance_create(x,y,EBulletHit)
instance_create(x,y,WallBreak);
with instance_create(x,y,SmallExplosion)
{
	team=other.team;
	if UberCont.opt_gamemode != 34
	{
		dmg=3;
		with myExplosionMask
			dmg = 3;
	}
	if instance_exists(Player) && Player.crown == 3//crown of death
	{
		var dir = random(360);
		var dis = 8 + random(16);
		instance_create(x+lengthdir_x(dis,dir),y+lengthdir_y(dis,dir),SmallExplosion);
	}
}
if !audio_is_playing(sndExplosion)
snd_play(sndExplosion);

