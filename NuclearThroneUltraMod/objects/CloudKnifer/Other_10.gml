/// @description Initiate sneak attack from bottom
snd_play(sndWarning);
instance_create(x-5,y,Notice);
instance_create(x,y,Notice);
instance_create(x+5,y,Notice);
alarm[1] += sneakTell + actTime*3;
alarm[2] = sneakTell;
existTime = 30 - sneakTell - 1;
gunangle = 90;
walk = sneakTell;
vspeed = maxSpeed;
hspeed = 0;
//image_alpha = targetAlpha + 0.1;
event_user(2);
with CloudKnifer
{
	if point_distance(x,y,other.x,other.y) < 96
	{	
		if alarm[1] < actTime*3
			alarm[1] += actTime*2;
	}
}
