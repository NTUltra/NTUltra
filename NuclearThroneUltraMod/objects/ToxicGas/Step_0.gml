var fps60 = UberCont.normalGameSpeed == 60
image_xscale += growspeed
image_yscale += growspeed
if fps60
{
	image_xscale -= growspeed*0.5;
	image_yscale -= growspeed*0.5;
}

if growspeed > -0.005
{
	growspeed -= 0.0007
	if fps60
		growspeed += 0.00045
}
if image_xscale < 0.4
{
	growspeed -= 0.02
	if fps60
		growspeed += 0.01
}
image_angle += rot
if fps60
	image_angle -= rot*0.5;
if image_xscale < 0.15
	instance_destroy()
