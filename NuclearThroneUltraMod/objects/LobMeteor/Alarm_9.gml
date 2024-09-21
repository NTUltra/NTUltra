/// @description GOING DOWN
alarm[9] = 1;
speed += 1;

with instance_create(x,y - ((scale-1) * heightScale),TopHeavyFlame)
{
	motion_add(random(360),2);
	team = other.team
	scrCopyWeaponMod(other);
}