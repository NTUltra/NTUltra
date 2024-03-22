/// @description Bounce bolt marrow
var msk = mask_index;
mask_index = mskBlade;
if place_meeting(x,y,Wall)// || collision_line(xprev,yprev,x,y,Wall,false,false)
{
	event_user(0);
}
else if collision_line(xprev,yprev,x + hspeed,y + vspeed,Wall,false,false)
{
	x = xprev;
	y = yprev;
	while !place_meeting(x,y,Wall)
	{
		x += lengthdir_x(1,direction);	
		y += lengthdir_y(1,direction);
	}
	event_user(0);
}
mask_index = msk;
scrBoltTrail(trailColour,0.15,2);
scrBladeBoltMarrow();
if UberCont.normalGameSpeed == 60
	image_angle += rotation * 0.5;
else
	image_angle += rotation;
