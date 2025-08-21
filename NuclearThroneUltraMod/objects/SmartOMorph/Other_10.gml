/// @description Damage
if !dealtDamage
{
	var db = dmgBoost
	with instance_create(targetX,targetY,AnimDestroyBloom)
	{
		if other.energyBrained
			sprite_index = sprSmartOMorphHitUpg;
		else
			sprite_index = sprSmartOMorphHit;
		image_angle = random(360);
		direction = other.homeDirection;
		speed = 0.5;	
	}
	with instance_create(targetX,targetY,Morph)
	{
		direction = other.homeDirection;
		speed = 0.5;	
		if other.energyBrained
			snd_play(sndMorphStart,0.1,true,true);
		else
			snd_play(sndMorphStop,0.1,true,true);
	}
	BackCont.shake += 2;
	var xx = x;
	var yy = y;
	x = targetX;
	y = targetY;
	scrSplashDamage(dmg + dmgBoost, range, false);
	x = xx;
	y = yy;
	/*
	with myTarget
	{
		if team != 2
		{
			DealDamage(other.dmg + other.dmgBoost,false,true,false);
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,other.dmg);
			snd_play(snd_hurt, hurt_pitch_variation,true)
		}
	}
	*/
	dealtDamage = true;
}