/// @description Line of fire

snd_play(sndEnemyFire)
        
snd_play(sndHeavyNader)
with instance_create(x,y,EnemyLineFire)
{
	direction = other.gunangle-other.lineOfFireOffset;
	image_angle = direction
	team = other.team
}

with instance_create(x,y,EnemyLineFire)
{
	direction = other.gunangle+other.lineOfFireOffset;
	image_angle = direction
	team = other.team
}
scrTarget();
if target != noone
{
	direction = point_direction(x,y,target.x,target.y);
	motion_add(direction,0.8);
}
scrDrop(20,0);
