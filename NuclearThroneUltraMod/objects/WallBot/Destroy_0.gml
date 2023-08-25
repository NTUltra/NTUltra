/// @description Boom
scrDrop(15,0)

event_inherited()

if existTime > 15
{
with instance_create(x,y,GreenExplosion)
	team = other.team
}