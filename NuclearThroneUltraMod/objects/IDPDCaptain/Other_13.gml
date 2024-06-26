/// @description Dash
if forceAnimation && forceAnimationSprite == spr_chrg_start
{
	meleedamage = meleeAttackDamage;
	forceAnimationSprite = spr_chrg;
	forceAnimationIndex = 0;
	forceAnimationEnd = sprite_get_number(forceAnimationSprite);
	snd_play(snd_melee_strike);
	scrDrop(25,0,true);
	with instance_create(x,y,PopoExplosion)
	{
		team = other.team;
	}
	alarm[5] = dashExtraTell;
}
else if forceAnimation && forceAnimationSprite == spr_chrg_end
{
	meleedamage = 0;
	forceAnimation = false;
	alarm[1] = actTime + random(actTime)
}
else
{
	forceAnimation = true;
	forceAnimationSprite = spr_chrg_start;
	forceAnimationIndex = 0;
	forceAnimationEnd = sprite_get_number(forceAnimationSprite);
	snd_play(snd_melee_charge);
	scrTarget();
	if target != noone && instance_exists(target)
	{
		gunangle = point_direction(x,y,target.x,target.y);
		if target.x > x
			right = 1
	    else
			right = -1
	}
	else
	{
		if hspeed > 0
			right = 1;
		else
			right = -1;
	}
	speed = 1.5;
	walk = 6;
	direction = gunangle + 180;
	instance_create(x,y,Notice);
	instance_create(x+5,y,Notice);
	instance_create(x-5,y,Notice);
}