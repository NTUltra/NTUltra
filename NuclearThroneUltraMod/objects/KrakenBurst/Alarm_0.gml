ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
	x = creator.x
	y = creator.y
	//FIRING
	var aimDirection = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
	
	snd_play_fire(sndBloodLauncher);
	snd_play_fire(choose(sndWater1,sndWater2,sndRoll) );


	with instance_create(x,y,Tentacle)
	{image_angle = aimDirection+(random(30)-15)*Player.accuracy
		scrCopyWeaponMod(other);
	team = other.team
	ammo = other.krakenAmmo
	event_perform(ev_alarm,0)
	visible = 0
	with instance_create(x,y,LightningSpawn)
	image_angle = other.image_angle
	sprite_index=sprTentacleSpawn}
	
	krakenAmmo += krakenAmmoChange;

	BackCont.viewx2 += lengthdir_x(6,aimDirection+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,aimDirection+180)*UberCont.opt_shake
	BackCont.shake += 8
	creator.wkick = 8
	time = max(1,time - 1);
}

if ammo <= 0
instance_destroy()

