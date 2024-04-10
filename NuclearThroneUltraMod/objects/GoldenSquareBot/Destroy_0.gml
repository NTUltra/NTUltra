if !sleeping && existTime > 15
{
with instance_create(x,y,Explosion)
	team = other.team
}
existTime = 5;
event_inherited()

