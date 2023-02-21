/// @description Fire
alarm[0]=1;
image_angle+=10;
BackCont.shake += 1
repeat(2){
	with instance_create(x,y,Flame)
	{motion_add(other.image_angle+random(10)-5,2+random(4))
	team = other.team
	depth = other.depth + 1;
	}


	with instance_create(x,y,Flame)
	{motion_add(other.image_angle+180+random(10)-5,2+random(4))
	team = other.team
	depth = other.depth + 1;
	}
}