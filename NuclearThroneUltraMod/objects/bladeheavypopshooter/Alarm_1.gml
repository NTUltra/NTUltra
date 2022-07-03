/// @description Pop 1
with instance_create(x,y,Bullet2Heavy)
{
	motion_add(other.ang,15);
	image_angle = direction
	team = other.team
}
instance_create(x,y,Smoke)
alarm[1] = 2;
ang += 30;