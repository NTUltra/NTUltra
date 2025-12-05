/// @description Collision Wall ad returnn
if canDealDamage == 2
{
	if UberCont.normalGameSpeed == 60
	{
		time += timeIncrease * 0.5;
		timeIncrease += timeIncreaseIncrease * 0.5;
	}
	else
	{
		time += timeIncrease;
		timeIncrease += timeIncreaseIncrease;
	}
	if timeIncrease > timeIncreaseMax
		timeIncrease = timeIncreaseMax;
	var curve;
	if instance_exists(Player)
		curve = quadratic_curve(time,collisionX,collisionY,offsetX,offsetY,Player.x,Player.y);
	else
		curve = quadratic_curve(time,collisionX,collisionY,offsetX,offsetY,xstart,ystart);
	image_angle = point_direction(x,y,curve[0],curve[1]);
	x = curve[0];
	y = curve[1];
	scrForcePosition60fps();
	if time > 1
		instance_destroy();
}
else if canDealDamage > 0
{
	if collision_line(xprev,yprev,x,y,Wall,false,false)
	{
		event_user(0);
	}
	xprev = x;
	yprev = y;
}
else if alarm[2] < 1
{
	x = collisionX;
	y = collisionY;
}
else
{
	if UberCont.normalGameSpeed == 60
		image_angle += angleReturn * 0.5;
	else
		image_angle += angleReturn;
}