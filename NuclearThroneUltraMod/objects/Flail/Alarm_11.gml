/// @description Also explode

// Inherit the parent event
event_inherited();
var um = GetPlayerUltramod()
if um == ultramods.bloodMelee
{
	snd_play(sndBloodHammer,0.1,true)
	var xx = x + lengthdir_x(40,image_angle);
	var yy = y + lengthdir_y(40,image_angle);
	with instance_create(xx,yy,MeatExplosion)
	{
		direction = other.direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	xx = x + lengthdir_x(64,image_angle);
	yy = y + lengthdir_y(64,image_angle);
	with instance_create(xx,yy,MeatExplosion)
	{
		direction = other.direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
}
else
{
	event_inherited();	
}