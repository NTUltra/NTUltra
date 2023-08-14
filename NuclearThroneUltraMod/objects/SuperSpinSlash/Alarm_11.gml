/// @description Special super spin!
var um = GetPlayerUltramod()
if um == ultramods.bloodMelee
{
	snd_play(sndHeavyBloodPistol,0.1,true);
	var am = 24;
	var angstep = 360/am;
	var ang = image_angle + angstep;
	repeat(am)
	{
		with instance_create(x,y,BloodBullet)
		{
			dmg = 2;
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
}
else
{
	event_inherited();
	image_angle += 18;
	var s = speed;
	speed *= 2;
	event_inherited();
	speed = s;
	image_angle -= 18;
}
