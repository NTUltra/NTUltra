/// @description FIRE!
instance_create(x,y,BigCircleWallBreak);
snd_play(sndFlareExplode,0.1,true)
snd_play(sndCraterImpact,0.1,true)
BackCont.shake += 100;
with instance_create(x,y,HeavyFlameDelay) {
	scrCopyWeaponMod(other);	
}

var ang = direction;
var am = 6;
var angstep = 360/am;
repeat(am)
{
	with instance_create(x,y,MiniFlameCannonBall)
	{
		motion_add(ang,8);
		scrCopyWeaponMod(other);
		team = other.team
		ang += angstep;
		alarm[6] = 0;
		exploSound = sndMiniFlameCannonExplode;
		if (audio_emitter_exists(emitter))
			audio_emitter_free(emitter);
	}
}
scrSplashDamage(20,90, false);

with instance_create(x,y,AnimDestroyBloom)
{
	sprite_index = sprMeteorLand;
	image_angle = random(360);
	image_xscale = choose(1,-1);
}