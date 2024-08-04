/// @description Within my range make immune
alarm[1] = actTime;
var tal = ds_list_size(myGuys);
for (var j = 0; j < tal; j++)
{
	if myGuys[| j] != noone && instance_exists(myGuys[| j])
	{
		var h = min(myGuys[| j].maxhealth,healths[| j]);
		myGuys[| j].my_health = h;
		myGuys[| j].prevhealth = h;
		myGuys[| j].totemImmune = false;
	}
}
ds_list_clear(myGuys);
ds_list_clear(healths);
ds_list_clear(shieldX);	
ds_list_clear(shieldY);	
ds_list_clear(shieldRadius);
var al = collision_circle_list(x,y,range,enemy,false,true,myGuys,false);
var deleters = [];
for (var i = 0; i < al; i++)
{
	var conflictInterest = false;
	with GoldImmuneTotem
	{
		if id != other.id
		{
			if list_contains(myGuys, other.myGuys[| i]) {
				conflictInterest = true;
			}
		}
	}
	if !conflictInterest && myGuys[| i].team != 2
	{
		ds_list_add(healths,myGuys[| i].my_health);
		ds_list_add(shieldX,0);
		ds_list_add(shieldY,0);
		ds_list_add(shieldRadius,0);
	}
	else
	{
		deleters[array_length(deleters)] = i;
	}
}
var dels = array_length(deleters);
for (var k = 0; k < dels; k++)
{
	ds_list_delete(myGuys,deleters[k]);
}