ammo -= 1

alarm[0] = time

if instance_exists(creator)
{
	xx = creator.x + xOffset;
	yy = creator.y + yOffset;
}
//FIRING
with instance_create(x,y,bloodType)
{
	motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+random_range(other.accuracy,-other.accuracy),12+other.boost)
	image_angle = direction
	team = other.team
	scrCopyWeaponMod(other);
}
boost += 3;
if ammo < 1
	instance_destroy();