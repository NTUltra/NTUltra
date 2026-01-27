if droprate > 0
{
	scrDrop(droprate,0,false,0,0,true);
}

event_inherited()

scrPopoDead();
if !sleeping
with instance_create(x,y,PopoNade)
{
	team = other.team;
	if team == 2
	{
		sprite_index = sprPopoNadeRogue;
	}
}