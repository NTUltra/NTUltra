maxAmmo = max(ammo,maxAmmo);
alarm[0] = time
if instance_exists(creator)
{
	x = creator.x
	y = creator.y
	var aimer = clamp(0.5/creator.accuracy,0,1);
	snd_play(sndNailGunWave,0.1);
	//FIRING
	var sino = (((sin((ammo/maxAmmo) * cycles * pi) + 1) * 0.5) - 0.5) * 32 * creator.accuracy;
	var diffo = clamp(angle_difference(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y),aimPrevious)*aimer,-5,5)
	var newAim = aimPrevious + diffo;
	var dirChange = diffo * aimer;
	aimPrevious = newAim;
	var al = ds_list_size(myNails);
	for (var i = 0 ; i < al; i++)
	{
		with myNails[| i]
		{
			direction += dirChange;
			image_angle += dirChange;
		}
	}
	if ammo != maxAmmo && ammo != 0
	{
		var newNail1 = instance_create(x,y,Nail);
		ds_list_add(myNails,newNail1);
		with newNail1
		{
			motion_add(newAim+sino,other.projectileSpeed)
			image_angle = direction
			team = other.team
			scrCopyWeaponMod(other);
		}
	}
	var newNail2 = instance_create(x,y,Nail);
	ds_list_add(myNails,newNail2);
	with newNail2
	{
		motion_add(newAim-sino,other.projectileSpeed)
		image_angle = direction
		team = other.team
		scrCopyWeaponMod(other);
	}
	BackCont.viewx2 += lengthdir_x(2,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(2,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.shake += 2
	creator.wkick = 7
}
if ammo <= 0
	instance_destroy()
ammo -= 1