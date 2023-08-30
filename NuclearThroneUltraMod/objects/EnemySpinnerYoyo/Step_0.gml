instance_create(x,y,DiscTrail);
var fps60 = UberCont.normalGameSpeed == 60;
if followOwner 
{
	if owner > -1 && instance_exists(owner)
	{
		tx = owner.x;
		ty = owner.y;
	}
	else
	{
		instance_destroy();
		instance_create(x,y,DiscDisappear);	
	}
}
x = tx + lengthdir_x(length,oDir);
y = ty + lengthdir_y(length,oDir);
if speed < 0
{
	if fps60
	{
		if rotation > 0
			oDir += max((rotation/length),1)*0.25;
		else
			oDir += min((rotation/length),-1)*0.25;
	}
	else
	{
		if rotation > 0
			oDir += max((rotation/length),1)*0.5;
		else
			oDir += min((rotation/length),-1)*0.5;
	}
}
else
{
	if fps60
	{
		if rotation > 0
			oDir += clamp(rotation/(maxlength-length),0.5,1);
		else
			oDir += clamp(rotation/(maxlength-length),-0.5,-1);
	}
	else
	{
		if rotation > 0
			oDir += clamp(rotation/(maxlength-length),1,2);
		else
			oDir += clamp(rotation/(maxlength-length),-1,-2);
	}
}
if fps60
	length += speed * 0.5;
else
	length += speed;
if (point_distance(tx,ty,x,y) > maxlength && speed > 0)
{
	speed = -6;
}
else if (length <= 2 && speed < 0)
{
	instance_destroy();
	instance_create(x,y,DiscDisappear);
}
image_angle+=20;