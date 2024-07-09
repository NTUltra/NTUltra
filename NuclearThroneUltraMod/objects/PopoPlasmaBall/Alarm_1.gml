/// @description green trail
with instance_create(x+random(8)-4,y+random(16)-8,PlasmaFX)
{
	motion_add(other.direction+random(30)-15,random(2))
}