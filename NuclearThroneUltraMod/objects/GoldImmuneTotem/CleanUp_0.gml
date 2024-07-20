/// @description Clean list
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
ds_list_destroy(myGuys);
ds_list_destroy(shieldX);
ds_list_destroy(shieldY);
ds_list_destroy(shieldRadius);