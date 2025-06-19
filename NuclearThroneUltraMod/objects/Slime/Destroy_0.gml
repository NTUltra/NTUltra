event_inherited()
scrDrop(droprate,0);
var dir = random(360);
var dirStep = 360/acidAmount;
repeat(acidAmount)
{
    dir += dirStep;
    with instance_create(x,y,AcidStreak)
    {
		motion_add(dir,8)
		image_angle = direction
    }
}
if slimeExplosion != noone
	instance_create(x,y,slimeExplosion);