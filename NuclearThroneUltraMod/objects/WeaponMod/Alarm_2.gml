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
		x = ProtoStatue.x - 16;
		y = ProtoStatue.y - 16;
		instance_create(x,y,WallBreak);
		scrForcePosition60fps();
	}
	with other
	{
		alarm[2] = 1;	
	}
}