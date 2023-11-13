event_inherited()

//if sprite_index != spr_hurt
//motion_add(direction,0.8)
if walk > 0
{
walk -= 1
motion_add(direction,0.8)
}

if hspeed > 0
right = 1
else if hspeed < 0
right = -1


if instance_exists(Player)
{
    if Player.loops>0
    {
    if speed > 2.2
    speed = 2.2
    }
    else
    {
    if speed > 2
    speed = 2
    }
}
else
{
if speed > 2
speed = 2
}


if alarm[2]>0&&target>0
{

direction = point_direction(x,y,target.xprevious,target.yprevious)
    BackCont.shake += 0.15

if instance_exists(Player)
{
    if Player.loops>0
    {//loop fire

            with instance_create(x,y,TrapFire)
            {
            motion_add(other.direction+random(12)-6+30,3+random(4))
            image_angle = direction
            team = other.team
            }
            
            with instance_create(x,y,EnemyIceFlame)
            {
            motion_add(other.direction+random(12)-6-30,3+random(4))
            image_angle = direction
            team = other.team
            }
        
    }
    else
    {
            with instance_create(x,y,TrapFire)
            {
            motion_add(other.direction+random(16)-6+30,2+random(3))
            image_angle = direction
            team = other.team
            }
            
            with instance_create(x,y,EnemyIceFlame)
            {
            motion_add(other.direction+random(16)-6-30,2+random(3))
            image_angle = direction
            team = other.team
            }

    }
}
}
