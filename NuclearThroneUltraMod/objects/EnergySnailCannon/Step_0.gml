/// @description Wall Collision

	if UberCont.normalGameSpeed == 60
	{
		image_angle += rotation * 0.5;
		time += timeScale 
	}
	else
	{
		image_angle += rotation;
		time += timeScale
	}
	time += timeScale
	if time > 1 || time <= 0
		timeScale *= -1;
	var lp = lerp(1,-1,time);
	xScale = image_xscale + cos(lp)*flexScale;
	yScale = image_xscale + sin(lp)*flexScale;
if alarm[2] > 5
{
	var hitWall = false;
	if collision_line(x,y,x+hspeed,y,Wall,false,false)
	{
		hitWall = true;
		event_user(0);
	}
	if collision_line(x,y,x,y+vspeed,Wall,false,false)
	{
		hitWall = true;
		event_user(1);
	}
	if speed < minSpeed
	{
		speed = minSpeed;
	}
	if (hitWall)
	{
		event_user(3);
	}
}
else
{
	speed = 0;	
}