/// @description splinter 1
with instance_create(x,y,Splinter)
{
	motion_add(other.ang,20);
	image_angle = direction
	team = other.team
	scrCopyWeaponMod(other);
}
instance_create(x,y,Smoke)
alarm[1] = 4;
ang += 30;