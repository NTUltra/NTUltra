/// @description e
alarm[3] = 1;
if alarm[2]>0&&target != noone && instance_exists(target)
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
