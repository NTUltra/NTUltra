/// @description Reset health of those I made immune
event_inherited();

var tal = ds_list_size(myGuys);
for (var j = 0; j < tal; j++)
{
	if myGuys[| j] != noone && instance_exists(myGuys[| j])
	{
		var h = min(myGuys[| j].maxhealth,healths[| j]);

		myGuys[| j].my_health = h;
		myGuys[| j].prevhealth = h;
	}
}