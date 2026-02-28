/// @description and now go away
var gone = false;
humphryHealth -= 1;
with Player
{
	maxhealth -= 1;
	my_health -= 1;
	maxhealth = max(1,maxhealth);
	my_health = max(1,my_health);
}
with PlayerSpawn {
	maxhealth -= 1;
	my_health -= 1;
	maxhealth = max(1,maxhealth);
	my_health = max(1,my_health);
}
alarm[0] = lifeDuration;
if humphryHealth <= 0
	instance_destroy();
