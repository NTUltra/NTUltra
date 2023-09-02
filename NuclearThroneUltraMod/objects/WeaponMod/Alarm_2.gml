/// @description Collision with a prop
if instance_exists(GenCont)
	alarm[2] = 10;
var p = instance_place(x,y,prop)
with p {
	instance_destroy(id,false);
}