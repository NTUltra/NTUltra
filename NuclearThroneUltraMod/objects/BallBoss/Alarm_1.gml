///@description AI
alarm[1] = actTime + random(actTime)
scrTarget()
if target > 0 {
	scrDrop(2,0);
	var ran = random(100);
	if ran > 90
	{
		event_user(0);
	}
	else if ran > 80
	{
		//Stop and turn
		repeat(2+irandom(2))
		with instance_create(x,y,Smoke)
		{
			motion_add(other.image_angle,1+random(2));
		}
		alarm[4] = 30;
	}
	else if ran > 70 && collision_line(x,y,target.x,target.y,Wall,0,0) < 0
	{
		//Line of fire
		event_user(1);
		alarm[1] = alarm[5] + actTime;
	}
	else if ran > 60
	{
		//SPINNNIIIIINGG BULLEETS
		event_user(2);	
	}

}
else if random(10) < 1 {
    motion_add(random(360), 0.9)
}
if !reachHalfHealth && my_health < maxhealth * 0.65
{
	reachHalfHealth = true;
	maxSpeed += 0.5;
	spinRate += 0.3;
	actTime --;
	amountOfSpinBulletProjectiles += 2;
	event_user(0);
	for (var i = 0; i < amountOfProjectiles; i++) {
		with myCompanions[i]
		{
			time = 0;
			startDistance = distance;
			targetDistance -= 32;
		}
	}
}
else if !reachLowHealth && my_health < maxhealth * 0.24
{
	actTime -= 2;
	reachLowHealth = true;
	maxSpeed += 0.75;
	spinRate -= 0.2;
	pSpeed ++;
	amountOfSpinBulletProjectiles += 2;
	alarm[3] = 1;
	for (var i = 0; i < amountOfProjectiles; i++) {
		with myCompanions[i]
		{
			time = 0;
			startDistance = distance;
			targetDistance -= 10;
		}
	}
}
