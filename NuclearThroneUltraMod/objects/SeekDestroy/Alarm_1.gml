/// @description Follow aim
alarm[1] = 1
var xN = UberCont.mouse__x - xPrev;
var yN = UberCont.mouse__y - yPrev;
x += xN;
y += yN;
with scrBoltTrail(trailColour,trailShrink,trailScale)
{
	image_speed = 0;
}
xPrev = UberCont.mouse__x;
yPrev = UberCont.mouse__y;
var diffo = clamp(angle_difference(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y),aimPrevious)*followRate,-8,8);
var newAim = aimPrevious + diffo;
direction += diffo;
image_angle += diffo;
aimPrevious = newAim;