/// @description Drop inversion magnet

// Inherit the parent event
event_inherited();

if spr_idle == sprBigVultureSkullOpen
{
	//Drop the inversion magnet
	with instance_create(x,y,WepPickup)
	{
	scrWeapons()
	wep = 375
	scrAddNewWeaponDrop(wep);
	name = wep_name[375]
	ammo = 0
	type = wep_type[375]
	curse = 0
	sprite_index = wep_sprt[375]
	}
}
var xx = x;
var yy = y;
with PitEnterance
{
	disable = true;
	name = "";
	var a = point_direction(x,y,xx,yy);
	with instance_create(x + lengthdir_x(16,a),y + lengthdir_y(16,a),WallBreakLine)
	{
		snd_play(sndExplosionS);
		image_angle = a
		image_xscale = point_distance(x,y,xx,yy);
	}
}