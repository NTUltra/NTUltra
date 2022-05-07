/// @description Special super spin!
snd_play(sndHeavyBloodPistol,0.1,true);
var am = 24;
var angstep = 360/am;
var ang = image_angle + angstep;
repeat(am)
{
	with instance_create(x,y,HeavyBloodBullet)
	{
		ceil(other.dmg*0.25);
		scrCopyWeaponMod(other);
		direction = ang;
		image_angle = direction;
		speed = 17+other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	ang += angstep;
}
instance_destroy(id,false);
