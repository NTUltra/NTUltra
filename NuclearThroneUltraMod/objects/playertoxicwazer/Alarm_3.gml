/// @description Gass
if array_length(hit) > 1
if point_distance(x,y,hit[1],hit[2]) > 16
{
	var l = 6;	
	with instance_create(hit[1]+lengthdir_x(l,image_angle+180),
	hit[2]+lengthdir_y(l,image_angle+180),ToxicThrowerGas)
	{
		if other.alarm[5] < 1
		{
			snd_play(sndToxicBoltGas,0.12,true);
			other.alarm[5] = 5;
		}
	}
}
alarm[3] = 1;