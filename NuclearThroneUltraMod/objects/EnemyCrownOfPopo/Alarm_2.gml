/// @description Popo
instance_create(x,y,WallBreak);
with instance_create(x,y,IDPDSpawn)
{
	x = other.x;
	y = other.y;
}
instance_destroy();