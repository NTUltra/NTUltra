/// @description
with Player
{
	if maxhealth > 19
	{
		other.lifeDuration = 5;
	}
	else if maxhealth > 14
	{
		other.lifeDuration = 10;
	}
	else if maxhealth > 11
	{
		other.lifeDuration = 15;
	}
	else if maxhealth > 9
	{
		other.lifeDuration = 20;
	}
	else if maxhealth > 7
	{
		other.lifeDuration = 30;
	}
}