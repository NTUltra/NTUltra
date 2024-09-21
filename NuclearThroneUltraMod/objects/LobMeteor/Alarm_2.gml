/// @description Stall mid air
	alarm[4] = 9;
	alarm[9] = 9;
	rotationSpeed *= 0.5;
	speed -= 2;
	image_speed = 0.5;
	snd_play(sndFlameCannonEnd,0.1);
	BackCont.shake += 10;
	BackCont.viewx2 += lengthdir_x(50,direction+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(50,direction+180)*UberCont.opt_shake
	var i = 0;
	repeat(6)
	{
		with instance_create(x,y - ((scale-1) * heightScale),MiniFlameCannonBallTop)
		{
			direction = other.direction + (random_range(-12,12)*other.accuracy);
			image_angle = direction;
			speed = other.speed * 1.25;
			alarm[4] = 30;
			alarm[5] = 1 + i;
			motion_add(270,2);
			team = other.team
			scrCopyWeaponMod(other);
		}
		i += 1;
	}
	var ang = direction + 180;
	var am = 18;
	var angstep = 360/am;
	repeat(am)
	{
		with instance_create(x,y - ((scale-1) * heightScale),TopFlame)
		{
			motion_add(ang,random(2)+4)
			scrCopyWeaponMod(other);
			team = other.team
			ang += angstep;
		}
	}