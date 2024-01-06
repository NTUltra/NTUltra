scrDrop(17,0)

event_inherited()

scrPopoDead();

with instance_create(x,y,PopoNade)
{
	team = other.team;
	if team == 2
	{
		sprite_index = sprPopoNadeRogue;
	}
}