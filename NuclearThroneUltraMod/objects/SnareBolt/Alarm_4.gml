/// @description Dust
if speed > 1
{
	alarm[4] = 1;
	with instance_create(x,y,Dust) {
		motion_add(other.direction,1);	
	}
}