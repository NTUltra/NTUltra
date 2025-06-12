event_inherited()
scrDrop(droprate,0);
var dir = random(360);
var dirStep = 360/acidAmount;
var canAcid = true;
if instance_exists(Player)
	canAcid = distance_to_object(Player) > 24
repeat(acidAmount)
{
    dir += dirStep;
    with instance_create(x,y,AcidStreak)
    {
		motion_add(dir,8)
		image_angle = direction
    }
	if canAcid
		with instance_create(x, y, ToxicGas) {
	        motion_add(dir,0.25)
	        team = other.team
	    }
}
if slimeExplosion != noone
	instance_create(x,y,slimeExplosion);