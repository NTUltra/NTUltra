var fps60 = UberCont.normalGameSpeed == 60
image_xscale += growspeed;
image_yscale += growspeed;
if fps60
{
	image_xscale -= growspeed*0.5;
	image_yscale -= growspeed*0.5;
}

if growspeed > -0.005
{
	growspeed -= 0.0029;
	if fps60
		growspeed += 0.00145;
}
if image_xscale < 0.4
{
	growspeed -= 0.1
	if fps60
		growspeed += 0.05;
}
image_angle += rot
if fps60
	image_angle -= rot*0.5;
if image_xscale < 0.15
instance_destroy()


/// @description Bounce off of wall
var hitWall = false;
if collision_line(x,y,x+hspeed,y,Wall,false,false)
{
	x -= hspeed;
	hitWall = true;
	hspeed *= -1;
	image_angle = direction;
}
if collision_line(x,y,x,y+vspeed,Wall,false,false)
{
	y -= vspeed;
	hitWall = true;
	vspeed *= -1;
	image_angle = direction;
}
if (hitWall)
{
	speed *= 0.5;
}