/// @description Collision with a prop
if instance_exists(GenCont)
	alarm[2] = 10;
var p = instance_place(x,y,prop)
with p {
	if object_index != ProtoStatue
	{
		instance_destroy(id,false);
	}
	else
	{
		var maxtries = 48;
		var i = 0;
		while place_meeting(x,y,ProtoStatue) && i < maxtries
		{
			x += 2;
			i++;
		}
	}
	with other
	{
		alarm[2] = 1;	
	}
}