alarm[0]=1;
image_angle+=10;
//enemy
BackCont.shake += 1
repeat(2){
with instance_create(x,y,TrapFire)
{motion_add(other.image_angle+random(10)-5,2+random(3))
team = other.team
sprite_index= sprFireLilHunter;
move_contact_solid(direction,7)
image_speed = 0.3+random(0.2)}


with instance_create(x,y,TrapFire)
{motion_add(other.image_angle+180+random(10)-5,2+random(3))
team = other.team
sprite_index= sprFireLilHunter;
move_contact_solid(direction,8)
image_speed = 0.3+random(0.2)}
}


