if place_meeting(x,y,Floor)
{
	if other.id > id
		instance_destroy();
}
else
{
	var wall = instance_place(x,y-8,Wall);
	if wall != noone
	{
		wall.visible = true;
	}
	wall = instance_place(x,y-16,Wall);
	if wall != noone
	{
		with  wall
		{
			event_perform(ev_alarm,1);	
		}
	}
	wall = instance_place(x,y+16,Wall);
	if wall != noone
	{
		with  wall
		{
			event_perform(ev_alarm,1);	
		}
	}
	wall = instance_place(x+16,y,Wall);
	if wall != noone
	{
		with  wall
		{
			event_perform(ev_alarm,1);	
		}
	}
	wall = instance_place(x-16,y,Wall);
	if wall != noone
	{
		with  wall
		{
			event_perform(ev_alarm,1);	
		}
	}
}
