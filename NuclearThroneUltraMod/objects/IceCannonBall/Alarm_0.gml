alarm[0]=1;
image_angle+=10;
/*if team=1{//enemy
repeat(2){
with instance_create(x,y,TrapFire)
{motion_add(other.image_angle+random(10)-5,2+random(4))
team = other.team
//sprite_index= sprFireLilHunter;
move_contact_solid(direction,16)
image_speed = 0.3+random(0.2)}


with instance_create(x,y,TrapFire)
{motion_add(other.image_angle+180+random(10)-5,2+random(4))
team = other.team
//sprite_index= sprFireLilHunter;
move_contact_solid(direction,16)
image_speed = 0.3+random(0.2)}
}
}*/
//else{
BackCont.shake += 1
repeat(2)
{
	with instance_create(x+hspeed,y+vspeed,IceFlame)
	{motion_add(other.image_angle+random(10)-5,3+random(4))
	team = other.team
	}


	with instance_create(x+hspeed,y+vspeed,IceFlame)
	{motion_add(other.image_angle+180+random(10)-5,3+random(4))
	team = other.team
	}
}