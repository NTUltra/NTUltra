/// @description Boom
scrDrop(23,0)

event_inherited()

if existTime > 15
{
with instance_create(x,y,GreenExplosion)
	team = other.team
}