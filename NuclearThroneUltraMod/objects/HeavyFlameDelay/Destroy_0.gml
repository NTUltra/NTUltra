/// @description Destroy
var ang = direction + 180;
var am = 8;
var angstep = 360/am;
repeat(am)
{
	with instance_create(x,y,HeavyFlame)
	{
		motion_add(ang,random(2)+4)
		scrCopyWeaponMod(other);
		team = other.team
		ang += angstep;
	}
}

with instance_create(x,y,BigScorchMark) {
	sprite_index = sprMeteorLanded;	
}