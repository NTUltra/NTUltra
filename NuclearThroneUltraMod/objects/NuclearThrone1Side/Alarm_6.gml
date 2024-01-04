/// @description End lasers
var al = ds_list_size(myLasers);
for (var i = 0; i < al; i ++)
{
	with myLasers[| i] {
		event_user(0);
	}
}
ds_list_clear(myLasers);
alarm[7] = 120;