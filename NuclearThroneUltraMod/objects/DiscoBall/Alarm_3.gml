/// @description Lasers 1
alarm[3] = 4;
with instance_create(x,y,Laser)
{
	image_angle = other.image_angle + 90;
	team = other.team
	scrCopyWeaponMod(other);
	event_perform(ev_alarm,0)
}
with instance_create(x,y,Laser)
{
	image_angle = other.image_angle - 90;
	team = other.team
	scrCopyWeaponMod(other);
	event_perform(ev_alarm,0)
}