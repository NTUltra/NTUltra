scrDrop(20,0)

event_inherited()

var splatDir = random(360);
var rpt = 5;
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
		x + lengthdir_x(random_range(8,14),splatDir),
		y + lengthdir_y(random_range(8,14),splatDir),
		random_range(0.8,1),
		random_range(0.8,1),
		splatDir,
		c_white,
		1
	);
	splatDir += angStep;
}