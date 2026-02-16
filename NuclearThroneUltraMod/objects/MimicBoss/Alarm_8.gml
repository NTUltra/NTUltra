/// @description Wait for player to spawn
if instance_exists(Player)
{
	event_user(1);
	visible = true;
}
else
{
	alarm[8] = 2;	
}
alarm[1] = wakeupTime;
alarm[10] = 30;