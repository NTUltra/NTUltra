/// @description Deal damage
var theDamage = dmg;
var checkingDamage = dmg;
var breakPoint = 1;
var toCheck = 10;
if instance_exists(owner)
{
	if owner.object_index == Player
	{
		if scrIsCrown(18) || scrIsCrown(41)
			checkingDamage *= 2;
		if UberCont.voidChallengeGoing[1]
			checkingDamage *= 2;
		if Player.ultra_got[62] && Player.altUltra//LIVING ARMOUR
		{
			toCheck = Player.armour;
		}
		else
		{
			toCheck = owner.my_health;
		}
		if Player.skill_got[32] && Player.isAlkaline
		{
			toCheck += 1;	
		}
		if Player.skill_got[31]//Tough shell
			toCheck -= 1;
		toCheck += max(0,Player.skill_got[46] ? Player.peaceBarriers : 0) + ((Player.skill_got[38] && Player.metabolism == Player.metabolismBreak) ? 1 : 0) + max(0,Player.lag) + max(0,Player.armour);
		while (checkingDamage > 0 && toCheck - checkingDamage < breakPoint) {
			checkingDamage *= 0.5
			theDamage *= 0.5
		} 
	}
	else
	{
		toCheck = owner.my_health;	
	}
}
if !instance_exists(owner) || owner == noone || toCheck <= breakPoint || hits > maxDamage
{
	instance_destroy();	
	exit;
}
with owner
{
	snd_play(sndVenom,0.1);
	DealDamage(theDamage);
	other.hits += 1;
	if object_index == Player
	{
		BackCont.shake += 20;
		var d = random(360);
		BackCont.viewx2 += lengthdir_x(10,d)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(10,d)*UberCont.opt_shake
		Sleep(20);
	}
	repeat(3)
		with instance_create(x,y,AcidStreak)
		{
			motion_add(random(360),5 + random(3));
			image_angle = direction;
		}
	if other.venomized
	{
		snd_hurt = snd_hurt_actual;
		snd_play(snd_hurt, hurt_pitch_variation,true);
		hurtTime = hurtDurationLoop - 2;
		alarm[3] = 0;
	}
	else if sprite_index != spr_hurt
	{
		snd_play(snd_hurt, hurt_pitch_variation,true);
	}
	sprite_index = spr_hurt;
	image_index = 0;
}/*
if !instance_exists(owner) || owner == noone || toCheck < breakPoint
{
	instance_destroy();	
}
else
{*/
	alarm[0] = rate;	
//}