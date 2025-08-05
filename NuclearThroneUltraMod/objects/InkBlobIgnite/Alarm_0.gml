/// @description Funny scaling and rotating
var dir = ang;
repeat(2)
{
	with instance_create(x + lengthdir_x(16,dir),y + lengthdir_y(16,dir),Flame)
	{
		dmg += other.dmgAdd;
		team = 2;
		scrCopyWeaponMod(other);
		motion_add(dir,4.5);
	}
	dir += 180;
}