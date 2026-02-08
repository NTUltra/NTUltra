if instance_exists(Player)
{
	if (team == 2)
	{
		direction = scrAimAssistLaser(direction);
	}
}
event_perform(ev_alarm,0)