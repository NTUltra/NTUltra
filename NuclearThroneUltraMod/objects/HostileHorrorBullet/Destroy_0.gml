/// @description Hitsprite
with instance_create(x,y,ScorpionBulletHit)
{
	sprite_index = sprHorrorHit;	
}
with instance_create(xprevious,yprevious,Rad)
{
	direction = other.direction + 180;
	speed = 1;
}
