if instance_exists(Player)
{
	if Player.lockout
	{
		instance_destroy();
		exit;
	}
var sp = Player.sheepPower;
alpha = clamp((sp-2)/Player.sheepPowerToHaveEffect,0.1,1);

image_xscale=((sp)*0.1)+1;
image_yscale=((sp)*0.1)+1;
if image_xscale>1.8
{
	image_xscale=1.8;
	image_yscale=1.8;
}
maxReach = max(maxReach,sp);
maxScale = max(image_yscale,maxScale);

x=Player.x;
y=Player.y;
var pd = Player.direction;
image_angle=pd;
var is60fps = UberCont.normalGameSpeed == 60
if is60fps
	imageIndex += 0.25;
else
	imageIndex += 0.5;


if (sp > Player.sheepPowerToHaveEffect)
{
	if (!thresholdBroken)
	{
		BackCont.shake += 5;
		BackCont.viewx2 += lengthdir_x(11,pd+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(11,pd+180)*UberCont.opt_shake
		if Player.ultra_got[49]==1{
			repeat(4)
				instance_create(x+random(16)-8,y+random(30)-15,Smoke);
		}else{
			repeat(4)
				instance_create(x+random(16)-8,y+random(30)-15,Dust);
		}
		thresholdBroken = true;
		if Player.ultra_got[49]==1
		{
			snd_play(sndSheepLoopStartUpg,true);
			if !sound_isplaying(sndSheepLoopUpg)
				snd_loop(sndSheepLoopUpg);
		}
		else
		{
			snd_play(sndSheepLoopStart,true);
			if !sound_isplaying(sndSheepLoop)
				snd_loop(sndSheepLoop);
		}
		Sleep(5);
	}
	if Player.ultra_got[49]
	{
		instance_create(x+random(16)-8,y+random(30)-15,Smoke);
	}
	else
	{
		instance_create(x+random(16)-8,y+random(30)-15,Dust);
	}

	with BackCont{
		if shake < 2
			shake += sp*0.2;
	}
	with Player
	{
		with EuphoriaShield
			instance_destroy();
		alarm[3]=max(alarm[3],1);//imunity
		snd_hurt = sndDamageNegate;
		meleeimmunity = max(meleeimmunity,1);
	}
}
else
{
	if is60fps
		alpha *= 0.75;//aprox
	else
		alpha *= 0.5;
	if (thresholdBroken)
	{
		thresholdBroken = false;
		with Player
		{
			sheepPower = -1;
		}
		audio_stop_sound(sndSheepLoopUpg);
		audio_stop_sound(sndSheepLoop);
	}
}
}
else{
	instance_destroy();
	}