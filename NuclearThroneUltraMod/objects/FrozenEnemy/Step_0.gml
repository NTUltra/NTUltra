x=xx;
y=yy;
if owner != noone && instance_exists(owner){
//first try check if enemies are further away then check frozen state
	if point_distance(x,y,owner.x,owner.y)>8{
	image_speed=1;}
	else if owner.frozen == false
	{
		image_speed=1;
	}
}
else{image_speed=1;}
if image_index >= image_number-1
{
	instance_destroy();
	visible = false;
}