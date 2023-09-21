/// @description Alarms
instance_deactivate_object(EnemyDeactivater);
with all
{
	var i = 0;
	repeat(13)
	{
		var a = alarm_get(i);
		if a > 0
			alarm_set(i, a + 1);
		i++;
	}
}
instance_activate_object(EnemyDeactivater);
alarm[0] = 2;