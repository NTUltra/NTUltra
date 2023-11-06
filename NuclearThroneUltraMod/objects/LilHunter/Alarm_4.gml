//BOUNCER BULLETS
if target != noone && instance_exists(target)
{
    gunangle = point_direction(x,y,target.x,target.y)+random(14)-7-30
    
    snd_play(sndBouncerFlakExplo)//(sndEnemyFire)
    wkick = 8
    repeat(4)
    {
    with instance_create(x,y,EnemyBouncerBullet)
    {
    motion_add(other.gunangle+random(20)-10,3+random(3))
    image_angle = direction
    team = other.team
    }
    }
}

