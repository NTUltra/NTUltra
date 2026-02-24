/// @description Suck it
if speed < 1
{
	if alarm[0] < 1
	{
		snd_play(sndUltraGrenadeSuck);
		alarm[0] = 30 * audio_sound_length(sndUltraGrenadeSuck);
		alarm[3] = alarm[0] - 12;
		alarm[4] = 1;
	}
	var mask = mask_index;
	mask_index = mskUltraGrenadeSuck;
	var enems = ds_list_create();
	var al = instance_place_list(x,y,enemy,enems,false)
	var suckStrength = 2;
	for (var i = 0; i < al; i++) {
		with enems[| i] {
			if object_index == Player && skill_got[2]
				continue;
			var d = point_direction(x,y,other.x,other.y);
			if place_free(x+lengthdir_x(suckStrength,d),y)
				x += lengthdir_x(suckStrength,d)
			if place_free(x,y+lengthdir_y(suckStrength,d))
				y += lengthdir_y(suckStrength,d)
		}
	}
	ds_list_destroy(enems);
	mask_index = mask;
}
alarm[2] = 1;