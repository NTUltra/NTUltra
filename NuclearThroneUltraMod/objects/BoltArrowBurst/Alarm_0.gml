ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
	x = creator.x
	y = creator.y
	//FIRING
	snd_play(sndArrowRainFire,0.2);
	var t = clamp((maxAmmo - ammo) / (3*accuracy),0,1);
	var xx = lerp(x,UberCont.mouse__x,t);
	var yy = lerp(y,UberCont.mouse__y - 16,t);
	with instance_create(x,y,LobBolt)
	{
		team = other.team
		targetX = xx + (random_range(16,-16)*other.accuracy);
		targetY = yy + (random_range(16,-16)*other.accuracy);
		if targetX > x
		{
			targetAngle += 10;
			baseAngle -= 10;
		}
		else
		{
			targetAngle -= 10;
			baseAngle += 10;
		}
	}

	BackCont.viewx2 += lengthdir_x(8,point_direction(x,y,xx,yy)+135)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,point_direction(x,y,xx,yy)+135)*UberCont.opt_shake
	BackCont.shake += 2
	with creator
	{
		wkick = 4
		if !skill_got[2]
		{
			var aimDirection = point_direction(x,y,xx,yy);
			//scrMoveContactSolid(aimDirection + 135,0.25);
			motion_add(aimDirection+135,1)
		}

	}
}


if ammo <= 0
instance_destroy()

