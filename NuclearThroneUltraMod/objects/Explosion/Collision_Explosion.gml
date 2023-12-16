if UberCont.normalGameSpeed == 60
{
	x += lengthdir_x(0.5,point_direction(other.x,other.y,x,y))
	y += lengthdir_y(0.5,point_direction(other.x,other.y,x,y))	
}
else
{
	x += lengthdir_x(1,point_direction(other.x,other.y,x,y))
	y += lengthdir_y(1,point_direction(other.x,other.y,x,y))
}