x=xx;
y=yy;
if owner != -1 && instance_exists(owner){
//first try check if enemies are further away then check frozen state
	if point_distance(x,y,owner.x,owner.y)>8{
	image_speed=1;}
	else if owner.frozen==false || owner.alarm[11] < 10
	{
		image_speed=1;
	}
}
else{image_speed=1;}

