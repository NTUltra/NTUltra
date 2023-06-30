ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
	x = creator.x
	y = creator.y
	//FIRING
	var aimDirection = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
	
	if Player.skill_got[17] = 1
	snd_play_fire(choose(sndLightning2,sndLightning3))
	else
	snd_play_fire(sndLightning1)


	with instance_create(x,y,Lightning)
	{image_angle = aimDirection+(random(6)-3)*Player.accuracy
		scrCopyWeaponMod(other);
	team = other.team
	ammo = other.lightningAmmo
	event_perform(ev_alarm,0)
	visible = 0
	with instance_create(x,y,LightningSpawn)
	image_angle = other.image_angle}
	
	lightningAmmo += lightningAmmoChange;

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	creator.wkick = 8
}

if ammo <= 0
instance_destroy()

