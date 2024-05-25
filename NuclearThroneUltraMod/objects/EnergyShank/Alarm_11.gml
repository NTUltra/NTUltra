/// @description Also explode / additional small tentacle

// Inherit the parent event
event_inherited();
var um = GetPlayerUltramod()
if um == ultramods.bloodMelee
{
	var xx = x + lengthdir_x(24,image_angle);
	var yy = y + lengthdir_y(24,image_angle);
	snd_play(sndBloodHammer,0.1,true);
	with instance_create(xx,yy,MeatExplosion)
	{
		direction = other.direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	with instance_create(x,y,HeavyBloodBullet)
	{
		ceil(other.dmg*0.5);
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = 14+other.speed;
		team = other.team;
		alarm[11] = 0;
	}
}
else // if um == ultramods.krakenMelee
{
	event_inherited();
}