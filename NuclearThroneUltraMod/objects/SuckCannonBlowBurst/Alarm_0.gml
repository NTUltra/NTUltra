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
	var range = min(ammo * 2,30);
	//for (var i = 0; i < alol; i++)
	//{
	if ammo < ds_list_size(suckedProjectiles) && ammo >= 0
		with instance_create(x,y,suckedProjectiles[| ammo])
		{
			motion_add(dir + ((random(range) - (range * 0.5)) * other.accuracy),12 + random(4));
			team = other.team;
			scrCopyWeaponMod(other);
			image_angle = direction;
			event_user(15);
		}
	//}

	BackCont.viewx2 += lengthdir_x(5,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(5,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.shake += 4
	creator.wkick = 4
}
if ammo <= 0
	instance_destroy()