  /// @description Morph
if array_length(hit) > 1
if point_distance(x,y,hit[1],hit[2]) > 16
{
	var l = 6;	
	with instance_create(hit[1]+lengthdir_x(l,image_angle+180),
	hit[2]+lengthdir_y(l,image_angle+180),Morph)
	{
		if other.alarm[5] < 1
		{
			if instance_exists(Player) && Player.skill_got[17] = 1
				snd_play(sndMorphStart,0.1,true,true);
			else
				snd_play(sndMorphStop,0.1,true,true);
			other.alarm[5] = 5;
		}
	}
}
alarm[3] = 3;