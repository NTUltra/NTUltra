/// @description Fire electric ball
gunangle = point_direction(x, y, target.x, target.y)
snd_play(sndLightningCannon);
with instance_create(x,y,EnemyLightningBall)
{
    motion_add(other.gunangle,2.2)
    team = other.team
}
alarm[1] += 10;