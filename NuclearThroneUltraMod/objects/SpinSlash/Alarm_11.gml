/// @description Special spin!
snd_play(sndHeavyBloodPistol,0.1,true);
var am = 14;
var angstep = 360/am;
var ang = image_angle + angstep
repeat(am)
{
	with instance_create(x,y,HeavyBloodBullet)
	{
		scrCopyWeaponMod(other);
		dmg += floor(other.dmg*0.25);
		direction = ang;
		image_angle = direction;
		speed = 14+other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	ang += angstep;
}
instance_destroy(id,false);
