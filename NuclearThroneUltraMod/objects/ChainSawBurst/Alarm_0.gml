ammo -= 1

alarm[0] = time

if instance_exists(creator)
{
	lifeTimeSpeed = originalLifeTimeSpeed;
	x = creator.x
	y = creator.y
	snd_play_fire(sndJackHammer)
	//FIRING
	var dir = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)
	var i = 0;
	repeat(am)
	{
		offsets[cutLength] = (random(12) - 6) * accuracy;
		var thisDir = dir + offsets[cutLength];
	    cuts[cutLength] = instance_create(
		x+lengthdir_x(step * i,thisDir),
		y+lengthdir_y(step * i,thisDir),
		ChainSawSlash)
		with cuts[cutLength]
	    {
			if i % 2 == 0
			{
				rotation *= -1;	
			}
		    dmg = 2;
		    image_angle = direction
			scrCopyWeaponMod(other);
		    team = other.team
		}
		cutLength += 1;
		i += 1;
	}
	BackCont.viewx2 += lengthdir_x(6,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y))*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(6,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y))*UberCont.opt_shake
	if BackCont.shake < 1
		BackCont.shake = 1
	creator.wkick = -8
}

if ammo <= 0
instance_destroy()


