/// @description Reset player health
with Player
{
	maxhealth -= other.humphryHealth;
	my_health -= other.humphryHealth;
	prevhealth -= other.humphryHealth;
	maxhealth = max(1,maxhealth);
	my_health = max(1,my_health);
	prevhealth = max(1,prevhealth);
	exception = true;
}
with PlayerSpawn {
	maxhealth -= other.humphryHealth;
	my_health -= other.humphryHealth;
	maxhealth = max(1,maxhealth);
	my_health = max(1,my_health);
}