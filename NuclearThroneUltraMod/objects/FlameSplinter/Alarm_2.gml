/// @description Flame
alarm[2] = 3;
with instance_create(x,y,Flame)
{
	scrCopyWeaponMod(other);
	speed = other.speed*0.25;
	direction = other.direction;
	team = other.team;	
}
