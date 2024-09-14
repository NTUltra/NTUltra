x -= hspeed * wallPierce
y -= vspeed * wallPierce


with other
{
	instance_destroy()
	instance_create(x,y,FloorExplo)
}

with instance_create(x,y,GhostEffect)
{
	motion_add(other.direction,1);
}