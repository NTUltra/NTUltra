/// @description reset the maxhp and speed back to normal
if instance_exists(Player)
{
	with Player
	{
		maxhealth -= other.maxhp;
		if my_health > maxhealth
			my_health = max(my_health-4,maxhealth);
		prevhealth = my_health;
		maxSpeed -= other.maxSpeed;
	}
}

