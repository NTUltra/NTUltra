/// @description Go after healthpacks
if instance_exists(HPPickup)
{
	var n = instance_nearest(x,y,HPPickup);
	targetx = n.x;
	targety = n.y;
}
if instance_exists(creator)
{
targetx = creator.x+random(64)-32
targety = creator.y+random(64)-32
}
else
{
	instance_destroy();	
}
alarm[1] = 10+random(40)


