/// @description Shpawn
var didIt = false;
var me = id;

with owner
{
	if object_index != Player || jump <= 1
	{
		wkick = 10;
		didIt = true;
		scrSplashDamage(40,80, false);
		with instance_create(x,y,HeavyFlameDelay) {
			scrCopyWeaponMod(me);
			snd_play(sndFlareExplode,0.1,true)
		}
		with instance_create(x,y,AnimDestroyBloom)
		{
			instance_create(x,y,BigCircleWallBreak);
			snd_play(sndCraterImpact,0.1,true)
			sprite_index = sprMeteorLand;
			image_speed = 0.6;
			image_angle = random(360);
			image_xscale = choose(1,-1);
		}
	}
}
if !didIt
	alarm[0] = 1;
else
{
	instance_destroy();
	var ran = random(360);
	BackCont.viewx2 += lengthdir_x(30,ran)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(30,ran)*UberCont.opt_shake
	BackCont.shake += 50
}