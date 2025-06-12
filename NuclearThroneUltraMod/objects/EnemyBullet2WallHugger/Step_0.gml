/// @description alter curve
var dd = direction + wallDirection;
if collision_line(x,y,x + lengthdir_x(12,dd),y + lengthdir_y(12,dd),WallHitMe,false,false)
&& !place_meeting(x + lengthdir_x(curveSpeed, dd),y + lengthdir_y(curveSpeed, dd),WallHitMe)
{
	if UberCont.normalGameSpeed == 60
	{
		x += lengthdir_x(curveSpeed * 0.5, dd);
		y += lengthdir_y(curveSpeed * 0.5, dd);
	}
	else
	{
		x += lengthdir_x(curveSpeed, dd);
		y += lengthdir_y(curveSpeed, dd);
	}
}