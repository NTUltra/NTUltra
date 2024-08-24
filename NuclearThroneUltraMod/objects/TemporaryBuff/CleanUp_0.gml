/// @description reset the maxhp and speed back to normal
if instance_exists(Player)
{
	with Player
	{
		maxhealth -= other.maxhp;
		my_health = max(my_health-other.maxhp,1);
		prevhealth = my_health;
		maxSpeed -= other.maxSpeed;
	}
}

