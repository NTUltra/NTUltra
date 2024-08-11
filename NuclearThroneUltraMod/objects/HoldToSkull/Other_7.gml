/// @description DROP/MOVE A SKULL
if instance_exists(Player)
{
	if instance_exists(SkeletonSkull)
	{
		BackCont.shake += 10;
		snd_play(sndExplosionS);
		with SkeletonSkull
		{
			my_health = other.skullHealth;
			var ang = random(360);
			repeat(6)
			{
				with instance_create(x,y,Dust)
				motion_add(ang,2)
				ang += 60
			}
			snd_play(sndExplosionS);
			x = Player.x;
			y = Player.y;
			scrForcePosition60fps();
			var ang = random(360);
			repeat(6)
			{
				with instance_create(x,y,Dust)
				motion_add(ang,2)
				ang += 60
			}
		}
	
	}
	else if !instance_exists(SkeletonSkullDestroyed)
	{
		BackCont.shake += 10
		snd_play(sndExplosionS);
		with instance_create(Player.x,Player.y,SkeletonSkull) {
			var ang = random(360);
			repeat(6)
			{
				with instance_create(x,y,Dust)
				motion_add(ang,2)
				ang += 60
			}	
		}
	}
}
instance_destroy();