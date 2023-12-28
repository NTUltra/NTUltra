if fire > 0
{
	image_index = 1;
	fire -= 1
	var xx = x + 8 + lengthdir_x(14,ang);
	var yy = y + 8 + lengthdir_y(14,ang)
	if !position_meeting(xx,yy,Wall) && position_meeting(xx,yy,Floor)
		with instance_create(xx,yy,TrapFire)
		{
			motion_add(other.ang,other.fireSpeed);
		}
	else
		fireSpeed = 0;
	fireSpeed = min(fireSpeed + 0.25, 7);
}
else
{
	image_index = 0;	
}
alarm[1] = 1;
ang += spinRate;

if !position_meeting(x,y,Wall)
	instance_destroy()