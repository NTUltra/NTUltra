/// @description Fire
if !flamed
{
	flamed = true;
	with instance_create(x,y,HeavyFlame)
	{
		motion_add(other.direction,min(4,speed))
		team = other.team
		scrCopyWeaponMod(other);
	}	
}