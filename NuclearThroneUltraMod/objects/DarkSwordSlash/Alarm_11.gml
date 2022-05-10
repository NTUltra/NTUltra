/// @description Also explode

// Inherit the parent event
event_inherited();
snd_play(sndBloodHammer,0.1,true);
var l = 64;
var xx = x + lengthdir_x(l,image_angle-30);
var yy = y + lengthdir_y(l,image_angle-30);
with instance_create(xx,yy,MeatExplosion)
{
	direction = other.direction;
	speed = other.speed;
	team = other.team;
	alarm[11] = 0;
	ceil(other.dmg*0.25);
}
xx = x + lengthdir_x(l,image_angle);
yy = y + lengthdir_y(l,image_angle);
with instance_create(xx,yy,MeatExplosion)
{
	direction = other.direction;
	speed = other.speed;
	team = other.team;
	alarm[11] = 0;
	dmg += 2;
}
xx = x + lengthdir_x(l,image_angle+30);
yy = y + lengthdir_y(l,image_angle+30);
with instance_create(xx,yy,MeatExplosion)
{
	direction = other.direction;
	speed = other.speed;
	team = other.team;
	alarm[11] = 0;
	dmg += 2;
}
xx = x + lengthdir_x(l,image_angle+60);
yy = y + lengthdir_y(l,image_angle+60);
with instance_create(xx,yy,MeatExplosion)
{
	direction = other.direction;
	speed = other.speed;
	team = other.team;
	alarm[11] = 0;
	dmg += 2;
}
xx = x + lengthdir_x(l,image_angle-60);
yy = y + lengthdir_y(l,image_angle-60);
with instance_create(xx,yy,MeatExplosion)
{
	direction = other.direction;
	speed = other.speed;
	team = other.team;
	alarm[11] = 0;
	dmg += 2;
}
if instance_exists(Player) && Player.my_health <= 0
{
	l = 32;
	xx = x + lengthdir_x(l,image_angle-30);
	yy = y + lengthdir_y(l,image_angle-30);
	with instance_create(xx,yy,MeatExplosion)
	{
		direction = other.direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
		dmg += 2;
	}
	xx = x + lengthdir_x(l,image_angle);
	yy = y + lengthdir_y(l,image_angle);
	with instance_create(xx,yy,MeatExplosion)
	{
		direction = other.direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
		dmg += 2;
	}
	xx = x + lengthdir_x(l,image_angle+30);
	yy = y + lengthdir_y(l,image_angle+30);
	with instance_create(xx,yy,MeatExplosion)
	{
		direction = other.direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
		dmg += 2;
	}
	xx = x + lengthdir_x(l,image_angle+60);
	yy = y + lengthdir_y(l,image_angle+60);
	with instance_create(xx,yy,MeatExplosion)
	{
		direction = other.direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
		dmg += 2;
	}
	xx = x + lengthdir_x(l,image_angle-60);
	yy = y + lengthdir_y(l,image_angle-60);
	with instance_create(xx,yy,MeatExplosion)
	{
		direction = other.direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
		dmg += 2;
	}	
}
