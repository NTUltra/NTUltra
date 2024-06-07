/// @description xxx
with instance_create(x,y,Lightning)
{
	image_angle = other.direction + random_range(90,-90);
	dmg -= 2;
	team = other.team
	ammo = 4 + irandom(4);
	scrCopyWeaponMod(other);
	event_perform(ev_alarm,0)
}