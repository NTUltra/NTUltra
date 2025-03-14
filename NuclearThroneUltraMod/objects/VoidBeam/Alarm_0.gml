/// @description Position and scale
if instance_exists(Player)
{
	x = Player.x;
	y = Player.y;
	Player.voidBeam -= removeVoid;
	BackCont.shake += image_yscale;
	with myOrigin {
		image_yscale = other.image_yscale;
		if other.image_yscale >= 1.8
			image_yscale += 0.2;
		else if other.image_yscale < 0.5
			image_yscale -= 0.1;
		image_yscale = max(0.01,image_yscale);
		image_xscale = image_yscale;
		x = other.x;
		y = other.y;
	}
	image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
	delayAngle += angle_difference(image_angle,delayAngle) * curveUpdate;
	var len = 300;
	var hit = collision_line_point(x,y,x + lengthdir_x(len,delayAngle),y + lengthdir_y(len,delayAngle),Wall,false,false);
	targetX = hit[1]
	targetY = hit[2]
	delayAngle = point_direction(x,y,targetX,targetY);
	image_xscale = max(1,point_distance(x,y,targetX,targetY));
}
waveGrow += waveGrowIncrease;
if waveGrow > 0.3 && waveGrowIncrease > 0
	waveGrow = 0.3;
else if waveGrow < 0.05
	waveGrow = 0.05;
/*
if waveGrow > 1 && waveGrowIncrease > 0
	waveGrowIncrease *= -1;
else if waveGrow < 0.1 && waveGrowIncrease < 0
	waveGrowIncrease *= -1;
*/
minScale = min(0.5,image_yscale);
maxScale = image_yscale + maxScaleOffset;
if waveScale >= maxScale && waveGrow > 0
	waveGrow *= -1;
else if waveScale <= minStartScale && waveGrow < 0
	waveGrow *= -1;
waveScale += waveGrow
alarm[0] = 1;