/// @description Also explode

// Inherit the parent event
event_inherited();
var acc = 1;
if instance_exists(Player)
	acc = Player.accuracy*0.5;
var um = GetPlayerUltramod()
if um == ultramods.bloodMelee
{
	snd_play(sndBloodHammer,0.1,true);
	var xx = x + lengthdir_x(24,image_angle);
	var yy = y + lengthdir_y(24,image_angle);
	with instance_create(xx,yy,MeatExplosion)
	{
		direction = other.direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	xx = x + lengthdir_x(48,image_angle);
	yy = y + lengthdir_y(48,image_angle);
	with instance_create(xx,yy,MeatExplosion)
	{
		direction = other.direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
}
else // if um == ultramods.krakenMelee
{
	event_inherited();
}