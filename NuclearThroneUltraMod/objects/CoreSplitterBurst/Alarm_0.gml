ammo -= 1

alarm[0] = time

if instance_exists(creator)
{
	x = creator.x
	y = creator.y
	//snd_play(sndJackHammer)
	//FIRING
	var aim = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(10)-5)*creator.accuracy;
	var xx = x + lengthdir_x(ammo*8,aim);
	var yy = y + lengthdir_y(ammo*8,aim);
	var maxLen = 8;
	var step = 24;
	var xstep = lengthdir_x(step,aim);
	var ystep = lengthdir_y(step,aim);
	for(var i = 0; i < maxLen; i ++)
	{
		if collision_line(x,y,xx,yy,Wall,false,false)
		{
			i = maxLen;
		}
		else
		{
			with instance_create(xx,yy,LightningFlame)
			{
				motion_add(aim,1);
				motion_add(aim + 90,7);
				team = other.team
				scrCopyWeaponMod(other);
			}
			with instance_create(xx,yy,HeavyFlame)
			{
				motion_add(aim,1);
				motion_add(aim - 90,7);
				team = other.team
				scrCopyWeaponMod(other);
			}
			xx += xstep;
			yy += ystep;
		}
	}
	with creator
	{
		wkick = 4
		if object_index != Player || !skill_got[2]
		{
			motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180,0.5)
			scrMoveContactSolid(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180, 0.5);
		}
	}
	BackCont.viewx2 += lengthdir_x(3,aim+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(3,aim+180)*UberCont.opt_shake
	BackCont.shake += 2
}


if ammo <= 0
instance_destroy()


