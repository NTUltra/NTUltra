ammo -= 1

image_xscale *= 0.5
image_xscale = max(image_xscale,0.4);
image_yscale = image_xscale;
if instance_exists(creator)
{

	if gotEnergyBrain
			snd_play_fire(sndEnergySwordUpg)
		else
			snd_play_fire(sndEnergySword)

		instance_create(x,y,Dust)
	var aimDirection = point_direction(x,y,creator.x,creator.y);
	with instance_create(x,y,EnergyLanceShank)
	{
		longarms = 0
		longarms = (other.gotLongarms+other.bettermelee)*3
		motion_add(aimDirection,3.5+longarms)
		image_angle = direction
		team = other.team
	}
	BackCont.viewx2 += lengthdir_x(7,aimDirection)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(7,aimDirection)*UberCont.opt_shake
	BackCont.shake += 4
	creator.wepangle = -creator.wepangle
	creator.wkick = -4;
}


if ammo > 0
	alarm[0] = time