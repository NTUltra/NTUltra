/// @description Initiate sneak attack from bottom
snd_play(sndWarning);
instance_create(x-5,y,Notice);
instance_create(x,y,Notice);
instance_create(x+5,y,Notice);
alarm[1] += sneakTell + actTime*3;
alarm[2] = sneakTell;
gunangle = 90;
walk = sneakTell;
vspeed = acc;
hspeed = 0;
//image_alpha = targetAlpha + 0.1;
event_user(2);
var n = instance_nearest_notme(x,y,CloudKnifer);
if n != noone && point_distance(x,y,n.x,n.y) < 64
{	
	with n {
		if alarm[1] < actTime
			alarm[1] += actTime;
	}
}