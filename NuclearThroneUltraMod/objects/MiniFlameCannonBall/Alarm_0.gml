alarm[0]=fireDelay;
image_angle+=10;
if instance_exists(Player){
if team!=Player.team{//enemy
	var spawn = TrapFire;
	if inverted
		spawn = EnemyIceFlame;
	with instance_create(x,y,spawn)
	{motion_add(other.image_angle+random(10)-5,random(2))
	team = other.team
	image_speed=0.5+random(0.2);}


	with instance_create(x,y,spawn)
	{motion_add(other.image_angle+180+random(10)-5,random(2))
	team = other.team
	image_speed=0.5+random(0.2);}
}
else{
BackCont.shake += 2
	repeat(fireAmount)
	{
	with instance_create(x,y,Flame)
	{motion_add(other.image_angle+random(10)-5,2+random(2))
	team = other.team
	}

	with instance_create(x,y,Flame)
	{motion_add(other.image_angle+180+random(10)-5,2+random(2))
	team = other.team
	}
	}
}
}

