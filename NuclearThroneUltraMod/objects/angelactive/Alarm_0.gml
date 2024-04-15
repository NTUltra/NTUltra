/// @description Destroy
with Player {
	alarm[3] += 1;	
}
instance_destroy();
instance_create(x,y,AngelActiveDelay);