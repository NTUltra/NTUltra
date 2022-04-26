event_inherited();
type = 0;
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
		if Player.skill_got[3] == 1
		{
			curselevel --;	
		}
	}

	if curselevel == 2 {
		if random(2) < 1 {
			cursed = true;
		}
	} else if curselevel == 3 {
		cursed = true;
		if random(4) < 1 {
			supercursed = true;
		}
	}

	if cursed {
		sprite_index = sprCursedAmmo
		alarm[0] -= 100
		alarm[3] = 5;
	}

	if supercursed {
		sprite_index = sprSuperCursedAmmo
		alarm[0] -= 40
		alarm[3] = 5;
	}
}
