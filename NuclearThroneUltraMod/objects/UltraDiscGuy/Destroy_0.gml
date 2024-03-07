/// @description Get discfucked kid
with instance_create(x,y,EnemySquareDisc)
{
	motion_add(90,5);
	image_angle = direction
	team = other.team
}
with instance_create(x,y,EnemySquareDisc)
{
	motion_add(0,5);
	image_angle = direction
	team = other.team
}
with instance_create(x,y,EnemySquareDisc)
{
	motion_add(270,5);
	image_angle = direction
	team = other.team
}
with instance_create(x,y,EnemySquareDisc)
{
	motion_add(180,5);
	image_angle = direction
	team = other.team
}
snd_play(sndDiscDie);
snd_play(sndExplosionL);
instance_create(x,y,GreenExplosion);
scrDrop(15,0)
event_inherited()

