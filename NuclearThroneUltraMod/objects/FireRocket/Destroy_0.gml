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
		Sleep(20)
		snd_play(sndFlareExplode,0.1,true)
		var ang = direction + 180;
		var am = 24;
		var angstep = 360/am;
		repeat(am)
		{
			with instance_create(x,y,HeavyFlame)
			{
				mask_index = mskPickupThroughWall;
				alarm[5] = 2;
				motion_add(ang,random(2)+4)
				scrCopyWeaponMod(other);
				team = other.team
				ang += angstep;
			}
		}

	}
	else
	{
		instance_create(x,y,Explosion)
	}
}