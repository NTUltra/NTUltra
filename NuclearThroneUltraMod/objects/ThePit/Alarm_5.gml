/// @description WeaponMod
alarm[5] = 30;
var p = instance_place(x,y,WeaponMod)
with p {
	y = other.y - 144;
	x = other.x;
}