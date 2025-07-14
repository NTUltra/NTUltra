maxAmmo = max(ammo,maxAmmo);
ammo -= 1

alarm[0] = time
if instance_exists(creator) && ammo >= 0
{
	//FIRING
	with instance_create(x,y,IceFlame)
	{
		freezetime -= 1;
		motion_add(other.burstAim+((random(4)-2)*other.accuracy),
		6 + (other.ammo))
		scrCopyWeaponMod(other);
		team = other.team
	}
	BackCont.viewx2 += lengthdir_x(1,burstAim+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(1,burstAim+180)*UberCont.opt_shake
	BackCont.shake += 0.5
	creator.wkick = 4
}


if ammo <= 0 && image_index >= image_number - 1
	instance_destroy();