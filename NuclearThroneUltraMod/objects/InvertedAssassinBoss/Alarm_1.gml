alarm[1] = 4+random(5)
deflectExhaustion -= 2;
if deflectExhaustion < 0
	deflectExhaustion = 0;
scrTarget()
if target > 0
{
	if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
	{
		if random(4)<1//shift dodgy movement
		{
			move_contact_solid(direction+choose(90,-90),1+irandom(3))
		}
		
		if point_distance(target.x,target.y,x,y) < 70 && point_distance(target.x,target.y,x,y) > 24 {//SMACK THAT
			if alarm[5] < 1 {
				alarm[2]=14-smackdelayReduction
				instance_create(x,y,Notice);
				instance_create(x+5,y,Notice);
				instance_create(x-5,y,Notice);
				alarm[1]=19-smackdelayReduction;
				speed *= 0.1;
			} else {
				alarm[2]=19-smackdelayReduction
				instance_create(x,y,Notice);
				instance_create(x+5,y,Notice);
				instance_create(x-5,y,Notice);
				alarm[1]=32-smackdelayReduction;
				speed *= 0.1;
			}
		}
		else
		{
			motion_add(point_direction(target.x,target.y,x,y)+random(20)-10,4);
			walk = 30+random(10)
			gunangle = point_direction(x,y,target.x,target.y)
		}

		if target.x < x
		right = -1
		else if target.x > x
		right = 1
	}
	else if point_distance(target.x,target.y,x,y) < 70 && alarm[5] < 1
	{//SMACK THAT ANYWAYS WE CAN GO THROUGH WALLS FK THAT SHIT
		if alarm[5] < 1 {
			alarm[2]=12-smackdelayReduction//the delay that everyone wants its longer here cause you wont expect this
			instance_create(x,y,Notice);
			instance_create(x+5,y,Notice);
			instance_create(x-5,y,Notice);
			alarm[1]=21-smackdelayReduction;
		} else {
			alarm[2]=22-smackdelayReduction
			instance_create(x,y,Notice);
			instance_create(x+5,y,Notice);
			instance_create(x-5,y,Notice);
			alarm[1]=17-smackdelayReduction;
		}
		
	}
	else if random(4) < 1
	{
		motion_add(random(360),0.4)
		walk = 5+random(10)
		alarm[1] = walk+random(7)
		gunangle = direction

		if hspeed > 0
		right = 1
		else if hspeed < 0
		right = -1
	}
}
else if random(10) < 1
{
	motion_add(random(360),0.4)
	walk = 20+random(10)
	alarm[1] = walk+10+random(30)
	gunangle = direction
	
	if hspeed > 0
	right = 1
	else if hspeed < 0
	right = -1
}

