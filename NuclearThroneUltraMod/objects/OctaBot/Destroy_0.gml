scrDrop(14,0)

event_inherited()

if !sleeping && existTime > 15
{
with instance_create(x,y,GreenExplosion)
	team = other.team
}