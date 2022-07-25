event_inherited()
audio_emitter_position(emitter,x,y,depth);
if target > 0
{
	var lerpp = lp;
	if alarm[4] > 0
		lerpp = 1;
	x += ((target.x + lengthdir_x(distanceToTarget,angle))-x)*lerpp;
	y += ((target.y + lengthdir_y(distanceToTarget,angle))-y)*lerpp;
	if alarm[6] < 1 && !place_meeting(x,y,Tangle) && alarm[11] < 1
	angle += rotationSpeed; 
	if target.x < x
		right = -1
	else if target.x > x
		right = 1
}
if speed > 3
speed = 3;
