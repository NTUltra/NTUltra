/// @description lasers 2
alarm[4] = 4;
snd_play(sndLaser)
with instance_create(x,y,Laser)
{
	image_angle = other.image_angle
	team = other.team
	scrCopyWeaponMod(other);
	event_perform(ev_alarm,0)
}
with instance_create(x,y,Laser)
{
	image_angle = other.image_angle + 180;
	team = other.team
	scrCopyWeaponMod(other);
	event_perform(ev_alarm,0)
}