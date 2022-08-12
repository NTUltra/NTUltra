if target != noone
direction = point_direction(x,y,target.x,target.y)
snd_play(sndEnemyFire)
        
snd_play(sndGrenade)
wkick = -8
with instance_create(x,y,EnemyLineFire)
{
	direction = other.gunangle
	image_angle = direction
	team = other.team
}

gonnafire=0;

