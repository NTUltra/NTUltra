/// @description Gamma guts
spr = sprNormal;
if (instance_exists(Player) && !Player.isInvisible && deflectDurability < maxDeflect || alarm[1] > 0)
{
	var hitting = false;
	var hits = ds_list_create();
	var al = instance_place_list(x,y,enemy,hits,false);
	for (var i = 0; i < al; i ++)
	{
		with hits[| i] {
			if team != 2
			{
				hitting = true;
				snd_play(sndGammaGutsProc);
				DealDamage(other.dmg, true,true,false);
				if (my_health <= 0)//gamma guts kill?
				{
					if !audio_is_playing(snd_hurt)
						snd_play(snd_hurt,0,false);
					sprite_index = spr_hurt
					image_index = 0
					motion_add(other.image_angle,2)
					snd_play(sndGammaGutsKill,0,true);
					with Player
					{
						alarm[3] = max(3,alarm[3]);	
					}
					instance_create(x,y,GammaGutsBlast);
					instance_create(x,y,GammaGutsProjectileDestroyer);
					instance_create(other.x,other.y,GammaGutsProjectileDestroyer);
				}
			}
		}
	}
	if hitting {
		spr = sprCrescentMoonGammaGutsing;
	}
	ds_list_destroy(hits);
}
if sprite_index != sprCrescentMoonDeflecting
{
	sprite_index = spr;	
}
alarm[4] = 3;