/// @description Gamme guts yo
if !instance_exists(Player)
	exit;
if sprite_index == spr_disappear && image_index > fadeNumber
	exit;
var enem = other;
if enem.team != team && team != 0
with Player
{
	if skill_got[8] = 1//Dealing the damage with gamma guts
	{
		snd_play(sndGammaGutsProc,0,true);
		with enem
	    {
			var dmg = 3;
			var mover = 6;
			if Player.race == 25
				dmg = 4;
		    if (my_health - dmg<=0)//gamma guts kill?
		    {
				DealDamage(dmg, true)
				snd_play(sndGammaGutsKill,0,true);
				with instance_create(x,y,GammaGutsBlast)
				{
					image_xscale = 1.5;
					image_yscale = 1.5;
				}

		    } else if UberCont.normalGameSpeed == 60
			{
				DealDamage(dmg * 0.5, true);
				mover *= 0.5;
			}
			else
				DealDamage(dmg)
		    sprite_index = spr_hurt
		    image_index = 0
			if meleedamage == 0
				motion_add(point_direction(other.x,other.y,x,y),mover)
    
	    }
	}
}