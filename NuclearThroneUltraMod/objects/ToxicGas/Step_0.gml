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
		growspeed += 0.0045
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

if instance_exists(Player) && instance_exists(enemy)
{
	var n = instance_nearest(x,y,enemy)
	if n != noone
	{
		var dir=point_direction(x,y,n.x,n.y)
		if fps60
			motion_add(dir,0.025);
		else
			motion_add(dir,0.05);
		if Player.race=23&&Player.skill_got[5]=1
		{
			if fps60
				motion_add(dir,0.55);
			else
				motion_add(dir,0.11);
		}
	}
}

