/// @description xxx
if bskin
{
	with instance_create(x,y,BulletHit)
		sprite_index=sprHorrorHitB
}
else if bskin=2
{
	with instance_create(x,y,BulletHit)
		sprite_index=sprHorrorHitC
}
else
{
	with instance_create(x,y,BulletHit)
		sprite_index=sprHorrorHit
}