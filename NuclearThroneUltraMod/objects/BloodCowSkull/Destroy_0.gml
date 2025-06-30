event_inherited()

var ang = random(360)

repeat(10)
{with instance_create(x,y,Dust)
motion_add(ang,3)
ang += 36}

var splatDir = random(360);
var rpt = 8;
var angStep = 360 / rpt;
repeat(rpt)
{
	with instance_create(x,y,BloodStreak)
	{
		motion_add(splatDir,12)
		image_angle = direction
	}
	scrAddToBGFXLayer(
		sprBloodSplat,
		irandom(sprite_get_number(sprBloodSplat)),
		x + lengthdir_x(random_range(10,16),splatDir),
		y + lengthdir_y(random_range(10,16),splatDir),
		random_range(0.8,1),
		random_range(0.8,1),
		splatDir,
		c_white,
		1
	);
	splatDir += angStep;
}