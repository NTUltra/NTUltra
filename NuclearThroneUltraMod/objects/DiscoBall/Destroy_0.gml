/// @description BRING THE FLASHY FLASHYNESS
snd_play(sndClusterOpen);
snd_play_fire(sndLaserUpg)
with instance_create(x,y,Flash)
{
	alpha = 0.5;
	alarm[0] = 4;
}
var dir = image_angle;
var a = 6
dirStep = 360 / a;
repeat(a)
{
	with instance_create(x,y,Laser)
	{
		image_angle = dir
		team = other.team
		scrCopyWeaponMod(other);
		event_perform(ev_alarm,0)
		laserhit=3;
		sprite_index=sprBouncingLaser;
		image_yscale -= 0.1
	}
	dir += dirStep;
}
dir += (dirStep*0.5)
snd_play(sndLightning2);
repeat(a)
{
	with instance_create(x,y,Lightning)
	{
		image_angle = dir;
		accuracy=0;
		team = other.team
		ammo = 6;
		scrCopyWeaponMod(other);
		event_perform(ev_alarm,0)
		visible = 0
		with instance_create(x,y,LightningSpawn)
		image_angle = other.image_angle
	}
	dir += dirStep;
}