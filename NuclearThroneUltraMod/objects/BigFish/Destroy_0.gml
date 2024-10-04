scrDrop(100,5)
scrDrop(20,0)
if UberCont.area == 101 || UberCont.area == 122
scrDefeatedRequiredBoss(secretChallengeBosses.bigFish);
if !isOneWeaponOnlyModes() && !instance_exists(SurvivalWave) && !instance_exists(InvaderBossSpawnPortal)
{
	with instance_create(x-8,y,WepPickup)
	{
		scrWeapons()
		SetSeedWeapon();
		wep = scrDecideWep(choose(1,2), 1000, 0)
		scrAddNewWeaponDrop(wep);
		SetSeed();
		name = wep_name[wep]
		ammo = 50
		curse = 0;
		type = wep_type[wep]
		sprite_index = wep_sprt[wep]
	}
}


event_inherited()
repeat(8)
{
with instance_create(x,y,Dust)
{motion_add(random(360),1+random(5))
}
}
scrBossKill();
if !instance_exists(SurvivalWave) && !instance_exists(WantBoss) && instance_number(BigFish) == 1
with MusCont
{
//optimise sound_discard(song)
//optimise sound_discard(amb)

audio_stop_sound(song);
song = musBossWin
snd_play_2d(song)
//snd_loop(amb)

audio_group_set_gain(agsfx,max(0, UberCont.opt_sfxvol),0);

audio_sound_gain(song,max(0,UberCont.opt_musvol),0);

audio_sound_gain(amb,max(0,UberCont.opt_ambvol),0);

//audio_sound_gain(sndBossWin,max(0,sqrt(UberCont.opt_musvol)),0);

}

if !instance_exists(WantBoss) && instance_number(BigFish) == 1
with Player
{
	if my_health >= round(maxhealth*0.5)
	{
		with DragonSkull
		{
			snd_play(sndDragonEmerge,0,false,true,2,false,false,0.7,false,-1,0.8);
			event_user(2);	
		}
	}
	else
	{
		with DragonSkull
		{
			alarm[1] = 0;
			closed = true;
		}
	}
}