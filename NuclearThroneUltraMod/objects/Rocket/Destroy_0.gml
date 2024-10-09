audio_stop_sound(snd)
if (alarm[11] < 1 || GetPlayerUltramod() != ultramods.rocketBolt)
{
	snd_play(sndExplosionL)
	if !ultramodded
	{
		var ang = direction;
		instance_create(x,y,Explosion)
		var xx = x + lengthdir_x(12,ang);
		var yy = y + lengthdir_y(12,ang);
		instance_create(x+lengthdir_x(24,ang),y+lengthdir_y(24,ang),Explosion)
		with instance_create(xx+lengthdir_x(24,ang+90),yy+lengthdir_y(24,ang+90),SmallExplosion)
		{
			scrCopyWeaponMod(other);
			dmg -= 1;
			with myExplosionMask
				dmg -= 1;
		}
		with instance_create(xx+lengthdir_x(24,ang-90),yy+lengthdir_y(24,ang-90),SmallExplosion)
		{
			scrCopyWeaponMod(other);
			dmg -= 1;
			with myExplosionMask
				dmg -= 1;
		}
	}
	else
	{
		with instance_create(x,y,Explosion)
		{
			scrCopyWeaponMod(other);	
		}
	}
}