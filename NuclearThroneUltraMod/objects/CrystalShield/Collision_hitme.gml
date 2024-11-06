if !instance_exists(Player)
	exit;
if sprite_index == spr_disappear && image_index > fadeNumber
	exit;
if image_speed = 0 and other.team != team
other.direction = point_direction(x,y,other.x,other.y)
var enem = other;
var gg = gammaGuts;
var d = dmg;
if d > 0 && enem.team != team
with Player
{
	if gg//Dealing the damage with gamma guts
	{
		snd_play(sndGammaGutsProc,0,true);
	}
	with enem
	{
		var mover = 6;
		if (my_health - d<=0)//gamma guts kill?
		{
			DealDamage(d, true, true, false)
			if gg
			{
				with Player
				{
					alarm[3] = max(3,alarm[3]);	
				}
				instance_create(x,y,GammaGutsProjectileDestroyer);
				instance_create(other.x,other.y,GammaGutsProjectileDestroyer);
				snd_play(sndGammaGutsKill,0,true);
				with instance_create(x,y,GammaGutsBlast)
				{
					image_xscale = 1.5;
					image_yscale = 1.5;
				}
			}

		} else if UberCont.normalGameSpeed == 60
		{
			DealDamage(d * 0.5, true, true, false);
			mover *= 0.5;
		}
		else
			DealDamage(d, true, true, false)
		sprite_index = spr_hurt
		image_index = 0
		if meleedamage == 0
			motion_add(point_direction(other.x,other.y,x,y),mover)
    
	}
}