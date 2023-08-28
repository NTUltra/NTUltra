if existTime > 15
{
with instance_create(x,y,PurpleExplosion)
	team = other.team
}
existTime = 20;
event_inherited()

