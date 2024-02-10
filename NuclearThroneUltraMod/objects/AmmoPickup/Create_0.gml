event_inherited();
if scrIsGamemode(48)
	instance_destroy(id,false);
isArmour = false;
if sprite_index == sprAmmo {
	var curselevel = 0;

	if instance_exists(Player) {
		if Player.curse {
			curselevel++
		}
		if Player.bcurse {
			curselevel++
		}
		if Player.ccurse {
			curselevel++
		}
		if (Player.ultra_got[30] && Player.altUltra)
		{
			curselevel ++;
		}
		else if Player.skill_got[3] == 1
		{
			curselevel --;
		}
		if curselevel == 2 {
			if random(2) < 1 {
				cursed = true;
				snd_play(sndCursedPickup);
			}
		} else if curselevel >= 3 {
			cursed = true;
			snd_play(sndCursedPickup);
			if random(4) < 1 {
				supercursed = true;
			}
		}
		
		if scrIsCrown(32)//Misfortune
		{
			sprite_index = sprHPAmmo;
			if Player.ultra_got[62] && Player.altUltra// living armour
			{
				isArmour = true;
				sprite_index = sprArmourAmmo;
			}
		}
		else
		{
			if cursed {
				sprite_index = sprCursedAmmo
				alarm[0] -= 100
				alarm[3] = 5;
				if Player.ultra_got[30] && Player.altUltra
				{
					alarm[4] = 5;
					alarm[0] += 50;
				}
			}
			if supercursed {
				actTime -= 5;
				sprite_index = sprSuperCursedAmmo
				alarm[0] -= 40
				alarm[3] = 5;
				if Player.ultra_got[30] && Player.altUltra
				{
					alarm[4] = 5;
					alarm[0] += 50;
				}
			}
		}
		alarm[0] = max(alarm[0],15);
	}
}
