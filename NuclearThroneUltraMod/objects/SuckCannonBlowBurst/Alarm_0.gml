ammo -= 1
alarm[0] = time
if instance_exists(creator)
{
	x = creator.x
	y = creator.y
	//FIRING
	if time < 3 && ammo != 0
	{
		snd_play(sndSuckCannonBlowShort,0.2,true,true,2,false,false);
	}
	else
	{
		snd_play(sndSuckCannonBlow,0.1,false,true,2,false,false);
	}
	//var al = ds_list_size(suckedProjectiles);
	var dir = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
	var range = min(ammo * 2,maxRange);
	if ammo < ds_list_size(suckedProjectiles) && ammo >= 0
	{
		if sprite_exists(suckedProjectiles[| ammo])
		{
			with instance_create(x,y,MovingCorpse)
			{
				mySize = 2;
				sprite_index = other.suckedProjectiles[| other.ammo];
				image_xscale = choose(1,-1);
				mask_index = sprite_index;
				motion_add(dir + ((random(range) - (range * 0.5)) * other.accuracy),other.projectileSpeed + random(2));
				if instance_exists(Player) && Player.skill_got[20] {
					speed += 3;
				}
			}
		}
		else
		{
			with instance_create(x,y,suckedProjectiles[| ammo])
			{
				motion_add(dir + ((random(range) - (range * 0.5)) * other.accuracy),other.projectileSpeed + random(4));
				team = other.team;
				scrCopyWeaponMod(other);
				image_angle = direction;
				event_user(15);
			}
		}
	}
	BackCont.viewx2 += lengthdir_x(wkick + 1,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(wkick + 1,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.shake += wkick
	creator.wkick = wkick
}
if ammo <= 0
	instance_destroy()