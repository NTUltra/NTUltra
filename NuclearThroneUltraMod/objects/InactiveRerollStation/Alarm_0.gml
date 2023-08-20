/// @description delete props
var n = instance_place(x,y,prop);
if n != noone
{
	with n
	{
		instance_destroy(id,false);	
	}
}