if instance_exists(Player)
{
var sp = Player.sheepPower;
alpha = clamp((sp-2)/Player.sheepPowerToHaveEffect,0.1,1);


image_xscale=((sp)*0.1)+1;
image_yscale=((sp)*0.1)+1;
if image_xscale>1.7
image_xscale=1.7;

if image_yscale>1.7
image_yscale=1.7;

x=Player.x;
y=Player.y;
var pd = Player.direction;
image_angle=pd;

imageIndex += 0.5;


if (sp > Player.sheepPowerToHaveEffect)
{
	//Player.meleeimmunity = 10;
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
	if Player.ultra_got[49]==1{
	instance_create(x+random(16)-8,y+random(30)-15,Smoke);
	}else{
	instance_create(x+random(16)-8,y+random(30)-15,Dust);}

	with BackCont{
	if shake<2
	shake += sp*0.2;
	}
	with Player
	{
		alarm[3]=2;//imunity
		meleeimmunity = 3;
	}
}
else
{
	alpha *= 0.5;
	if (thresholdBroken)
	{
		thresholdBroken = false;
		audio_stop_sound(sndSheepLoopUpg);
		audio_stop_sound(sndSheepLoop);
	}
}
}
else{instance_destroy();}