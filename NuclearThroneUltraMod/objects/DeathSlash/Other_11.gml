/// @description Frost
var len = 8;
var aimDir = direction;
var fx = tx + lengthdir_x(len,aimDir);
var fy = ty + lengthdir_y(len,aimDir);
var angStep = 60
var t = team;
BackCont.shake += 2;
var flameType = IceFlame
if um == ultramods.fireFrost
	flameType = HeavyFlame;
repeat(6)
{
	with instance_create(fx,fy,flameType)
	{
		alarm[11] = 0;
		motion_add(aimDir,4)
		image_angle = direction
		team = t
	}
	aimDir += angStep;
	fx = tx + lengthdir_x(len,aimDir);
	fy = ty + lengthdir_y(len,aimDir);
}
with instance_create(tx,ty,ReviveFX)
{
	snd_play(choose(sndDeathScytheCorpse1,sndDeathScytheCorpse2),0.05);
	if other.um == ultramods.fireFrost
		sprite_index = sprFireRevive;
	else
		sprite_index = sprFrostRevive;
	image_speed += random(0.2);
}
var xx = x;
var yy = y;
x = tx;
y = ty;
scrSplashDamage(10,32,false);
x = xx;
y = yy;