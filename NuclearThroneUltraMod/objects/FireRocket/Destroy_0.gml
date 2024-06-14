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
		BackCont.shake += 5;
		with instance_create(x,y,FlameBazookaFire)
		{
			team = other.team;
			scrCopyWeaponMod(other)	
		}
		Sleep(10)
		
	}
	else
	{
		instance_create(x,y,Explosion)
	}
}