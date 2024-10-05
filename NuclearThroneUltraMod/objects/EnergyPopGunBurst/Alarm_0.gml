ammo -= 1

alarm[0] = time

if instance_exists(creator)
{
	x = creator.x
	y = creator.y
	//FIRING
	if instance_exists(Player) && Player.skill_got[17]
		snd_play_fire(choose(sndEnergyPopgunUpg1,sndEnergyPopgunUpg2))
	else
		snd_play_fire(choose(sndEnergyPopgun1,sndEnergyPopgun2))
	var aimDirection = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
	with instance_create(x,y,Bullet2Energy)
	{
		motion_add(aimDirection,other.projectileSpeed + (other.ammo * 2))
		image_angle = direction
		team = other.team
		scrCopyWeaponMod(other);
	}
	BackCont.viewx2 += lengthdir_x(8,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 4
	with creator
	{
		if object_index != Player || !skill_got[2]
		{
			motion_add(aimDirection+180,3)
		}	
		wkick = 6
	}
}


if ammo <= 0
instance_destroy()


