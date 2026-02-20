/// @description e
alarm[3] = 1;
if alarm[2]>0&&target != noone && instance_exists(target)
{

direction = point_direction(x,y,target.xprevious,target.yprevious)
    BackCont.shake += 0.1
    if instance_exists(Player)
    {
    if Player.loops>0
    {//loopfire
        repeat(2){
			with instance_create(x/*-8*/,y,TrapFire)
            {
	            sprite_index = sprFireLilHunter
				dmg += 1;
	            motion_add(other.direction+random(16)-6,6+random(3))
	            image_angle = direction
	            team = other.team
            }
        }
    }
    else
    {//preloopfire
        repeat(2){
        with instance_create(x/*-8*/,y,TrapFire)
            {
            sprite_index = sprFireLilHunter
			dmg += 1;
            motion_add(other.direction+random(12)-6,5+random(3))
            image_angle = direction
            team = other.team
            }
        }

    }
    }
}





