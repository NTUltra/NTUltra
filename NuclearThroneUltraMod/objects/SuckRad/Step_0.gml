/// @description xxx
if UberCont.normalGameSpeed == 60
{
	lerpTime += lerpSpeed*0.5;
}
else
{
	lerpTime += lerpSpeed;
}
if instance_exists(Player)
{
	tx = Player.x;
	ty = Player.y;
	image_angle = point_direction(xx,yy,tx,ty);
}
xx = lerp(xstart,tx,lerpTime);
yy = lerp(ystart,ty,lerpTime);
if lerpTime >= 0.9
{
	instance_destroy();
	with instance_create(tx,ty,Rad)
	{
		motion_add(other.image_angle,
		clamp(point_distance(other.xstart,other.ystart,x,y)*other.lerpSpeed,1,6))
		motion_add(random(360),0.2+random(1))
	}
}