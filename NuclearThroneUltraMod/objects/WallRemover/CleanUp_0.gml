/// @description Destroy ds list
with Wall {
	instance_destroy(id,false);
	with instance_create(x,y,FloorExplo) {
		alarm[0] = 0;
		alarm[2] = 0;
	}
}
with Top
{
	instance_destroy(id,false);	
}
with TopSmall
{
	instance_destroy(id,false);	
}