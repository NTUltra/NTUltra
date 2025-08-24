/// @description Contact damage
if alarm[2] > 0 || alarm[4] > 0
	exit;
var dealtDamage = false;
with other
{
	var contactDmg = (other.dmg);
	if contactDmg > 0 && team != other.team
	{
		if my_health - contactDmg <= 0 
		{
			DealDamage(contactDmg, true);
			snd_play(sndGammaGutsKill,0,true);
			with Player
			{
				alarm[3] = max(3,alarm[3]);	
			}
			instance_create(x,y,GammaGutsBlast);
			instance_create(x,y,GammaGutsProjectileDestroyer);
			instance_create(other.x,other.y,GammaGutsProjectileDestroyer);
		}
		else
		{
			snd_play(sndGammaGutsProc);
			if UberCont.normalGameSpeed == 60
				contactDmg *= 0.5;
			DealDamage(contactDmg, true);
		}
		if sprite_index != spr_hurt
			snd_play(snd_hurt,hurt_pitch_variation,true);
		sprite_index = spr_hurt
		image_index = 0
		motion_add(point_direction(other.x,other.y,x,y),3)
		dealtDamage = true;
	}
}
if dealtDamage
{
	alarm[1] = 2;
	image_alpha = 1;
}
