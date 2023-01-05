alarm[0]=3;
image_angle+=4;
//enemy
BackCont.shake += 1

with instance_create(x,y,TrapFire)
{motion_add(other.image_angle+random(6)-3,2+random(3))
team = other.team
sprite_index= sprFireLilHunter;
image_speed = 0.3+random(0.2)}


with instance_create(x,y,TrapFire)
{motion_add(other.image_angle+180+random(6)-3,2+random(3))
team = other.team
sprite_index= sprFireLilHunter;
image_speed = 0.3+random(0.2)}


