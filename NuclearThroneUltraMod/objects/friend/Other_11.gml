/// @description Fire
//UberCont.mouse__x,UberCont.mouse__y
ammo[0] = 999;
ammo[1] = 999;
ammo[2] = 999;
ammo[3] = 999;
ammo[4] = 999;
ammo[5] = 999;
rad = 999;
wkick = 0;
bwkick = 0;
var canDeflect = false;
with target
{
	if place_meeting(x,y,PopoShield)
		canDeflect = true;
}
if canDeflect
	exit;
var ogx = UberCont.mouse__x;
var ogy = UberCont.mouse__y;
var dir = point_direction(x,y,target.x,target.y);
gunangle = dir;
var len = 128;
if scrMeleeWeapons(wep)
	motion_add(dir,3);
UberCont.mouse__x = x + lengthdir_x(len,dir);
UberCont.mouse__y = y + lengthdir_y(len,dir);
scrFire();
if race == 7
{
	scrFire();
}
alarm[1] = min(alarm[1],wep_load[wep]);
alarm[2] = wep_load[wep];
UberCont.mouse__x = ogx;
UberCont.mouse__y = ogy;
