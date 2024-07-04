/// @description Black screen now
with CrackScreen
{
	instance_destroy();
}
instance_create(x,y,UnlockingAlternativeRoutesMilestone);
with Player
{
	lockout = true;	
}