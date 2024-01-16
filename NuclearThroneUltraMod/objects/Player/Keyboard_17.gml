if UberCont.public = 0 {
    //CHEATS

    if keyboard_check_pressed(ord("Z")) {

        Player.ammo[1] += 200
        Player.ammo[2] += 20
        Player.ammo[3] += 20
        Player.ammo[4] += 20
        Player.ammo[5] += 20
        if wep < maxwep
        wep += 1
        else
            wep = 1
    }
	
	if keyboard_check_pressed(ord("T")) {

        with enemy
		{
			my_health = 0;	
		}
    }

    if keyboard_check_pressed(ord("X")) {

        Player.ammo[1] += 200
        Player.ammo[2] += 20
        Player.ammo[3] += 20
        Player.ammo[4] += 20
        Player.ammo[5] += 20

        if wep > 1
        wep -= 1
        else
            wep = maxwep
    }

    if keyboard_check_pressed(ord("K")) {
        with enemy
        my_health = 0;
    }
	
	if keyboard_check_pressed(ord("F")) {
		if cheatyinfiniteammo {
			cheatyinfiniteammo = false;
			snd_play_2d(sndAmmoPickup)
			thing = instance_create(x,y,PopupText);
			thing.mytext = "NOT INFINITE AMMO!";
		} else {
			cheatyinfiniteammo = true;
			snd_play_2d(sndAmmoChest)
			thing = instance_create(x,y,PopupText);
			thing.mytext = "INFINITE AMMO!";
		}
    }

    if keyboard_check_pressed(ord("1")) {
		if scrIsGamemode(25)
		{
			subarea = 18;
			hard = 18 * 1.25;
		}
		else
		{
	        area = 1
	        subarea = 0
		}
        with enemy
        my_health = 0
        with instance_create(x, y, Portal) type = 1
		
    }

    if keyboard_check_pressed(ord("2")) {
        area = 126
        subarea = 0
        with enemy
        my_health = 0
        with instance_create(x, y, Portal) type = 1
    }

    if keyboard_check_pressed(ord("3")) {
        area = 3
        subarea = 0
        with enemy
        my_health = 0
        with instance_create(x, y, Portal) type = 1
    }
	if keyboard_check_pressed(ord("4")) {
        area = 100
        subarea = 0
        with enemy
        my_health = 0
        with instance_create(x, y, Portal) type = 1
    }
    if keyboard_check_pressed(ord("5")) {
        area = 5
        subarea = 0;
        with enemy
        my_health = 0
        with instance_create(x, y, Portal) type = 1
    }
    if keyboard_check_pressed(ord("6")) {
        area = 7
        subarea = 0
        with enemy
        my_health = 0
        with instance_create(x, y, Portal) type = 1
    }
    if keyboard_check_pressed(ord("7")) {
        area = 9
        subarea = 0
        with enemy
        my_health = 0
        with instance_create(x, y, Portal) type = 1
    }
    if keyboard_check_pressed(ord("8")) {
        area = 101
        subarea = 0
        with enemy
        my_health = 0
        with instance_create(x, y, Portal) type = 1
    }

    if keyboard_check_pressed(ord("9")) {
        area = 130
        subarea = 0
        with enemy
        my_health = 0
        with instance_create(x, y, Portal) type = 1
    }

    if keyboard_check_pressed(ord("0")) {
        area = 114
        subarea = 0
        with enemy
        my_health = 0
        with instance_create(x, y, Portal) type = 1
    }

    //TRAILER CHEAT

    if keyboard_check_pressed(ord("L")) {
        subarea = 3
        hard += 1
        repeat(12)
        instance_create(x, y, BigRad)
        instance_create(x, y, BigWeaponChest)
        with enemy
        my_health = 0
        with instance_create(x, y, Portal) type = 1
    }

    if keyboard_check(ord("B")) {
        instance_create(x, y, BigRad);
        instance_create(x, y, BigRad);
        instance_create(x, y, BigRad);

    }

    if keyboard_check_pressed(vk_add) {
        hard += 1
    }
    if (keyboard_check_pressed(ord("H"))) {
        var dangle = random(1) * 360;
        loops++;
        thing = instance_create(x + dcos(dangle) * 24, y + dsin(dangle) * 24, PopupText);
        thing.mytext = "INCREASE LOOP! " + string(loops);
    }
	if keyboard_check_pressed(vk_numpad1) {
		var dangle = random(1)*360;
		var f = instance_nearest(x + dcos(dangle)*128,y + dsin(dangle)*128,Floor);
		instance_create(f.x + 16,f.y + 16,CursedCrystal);
		thing = instance_create(f.x + 16,f.y + 16,PopupText);
		thing.mytext = "PURPLE POP ROCK";
	}
	if keyboard_check_pressed(vk_numpad2) {
		var dangle = random(1)*360;
	    instance_create(x + dcos(dangle)*128,y + dsin(dangle)*128,InvertedAssassinBoss);
		thing = instance_create(x + dcos(dangle)*128,y + dsin(dangle)*128,PopupText);
		thing.mytext = "INVERTED BIG ASS";
	}
	if keyboard_check_pressed(vk_numpad3) {
		var dangle = random(1)*360;
	    instance_create(x + dcos(dangle)*128,y + dsin(dangle)*128,BigFish);
		thing = instance_create(x + dcos(dangle)*128,y + dsin(dangle)*128,PopupText);
		thing.mytext = "BIG FISH";
	}
	if keyboard_check_pressed(vk_numpad4) {
		repeat(2) {
			var dangle = random(1)*360;
			var f = instance_nearest(x + dcos(dangle)*64,y + dsin(dangle)*64,Floor);
			instance_create(f.x + 16,f.y + 16,JungleFly);
			thing = instance_create(f.x + 16,f.y + 16,PopupText);
			thing.mytext = "WELCOME TO THE JUNGLE";
		}
		repeat(6) {
			var dangle = random(1)*360;
			var f = instance_nearest(x + dcos(dangle)*64,y + dsin(dangle)*64,Floor);
			instance_create(f.x + 16,f.y + 16,JungleBandit);
		}
		var dangle = random(1)*360;
		var f = instance_nearest(x + dcos(dangle)*64,y + dsin(dangle)*64,Floor);
		instance_create(f.x + 16,f.y + 16,JungleAssassin);
		var dangle = random(1)*360;
		var f = instance_nearest(x + dcos(dangle)*256,y + dsin(dangle)*256,Floor);
		instance_create(f.x + 16,f.y + 16,JungleAssassinFake);
	}
	if keyboard_check_pressed(vk_numpad5) {
		var dangle = random(1)*360;
		var f = instance_nearest(x + dcos(dangle)*64,y + dsin(dangle)*64,Floor);
		instance_create(f.x + 16,f.y + 16,GuardianDog);
		thing = instance_create(f.x + 16,f.y + 16,PopupText);
		thing.mytext = "PUPPY";
	}
	if keyboard_check_pressed(vk_numpad6) {
		var dangle = random(1)*360;
		var f = instance_nearest(x + dcos(dangle)*64,y + dsin(dangle)*64,Floor);
		instance_create(f.x + 16,f.y + 16,GhostGuardian);
		thing = instance_create(f.x + 16,f.y + 16,PopupText);
		thing.mytext = "OOOOOOOOO!#SPOOKY GHOST!";
	}
	if keyboard_check_pressed(vk_numpad7) {
		repeat(120) {
			var bandit = choose(Bandit,SavannaBandit,EraserBandit,LaserBandit,JungleBandit,BanditSquare)
			var dist = random(500) + 96
			var dangle = random(1)*360;
			var f = instance_nearest(x + dcos(dangle)*dist,y + dsin(dangle)*dist,Floor);
			if (abs(f.x - x - dcos(dangle)*dist) > 32 || abs(f.y - y - dsin(dangle)*dist) > 32) {
				continue
			}
			instance_create(f.x + random(32),f.y + random(32),bandit);
		}
		audio_stop_all()
		snd_loop(musThemeP)
		
		with Wall {
			sprite_index = sprWall0Bot;
			topspr = sprWall0Top
			outspr = sprWall0Out
		}
		
		with Top {
			sprite_index = sprWall0Trans
		}
		
		with TopSmall {
			sprite_index = sprWall0Top;
		}
		
		with Floor {
			sprite_index = sprFloor0;
		}
		
		with FloorExplo {
			sprite_index = sprFloor0Explo;
		}
		
		__background_set_colour( make_color_rgb(106,122,175) )

		thing = instance_create(x,y,PopupText);
		thing.mytext = "BANDITLAND FOR SURE";
	}
	if keyboard_check_pressed(vk_numpad8) {
		instance_create(x+256,y,IDPDVan);
		thing = instance_create(x,y,PopupText)
		thing.mytext = "VAN?";
	}
	if keyboard_check_pressed(ord("C")) {
		if curse {
			thing = instance_create(x,y,PopupText);
			thing.mytext = "UNCURSED!";
			curse = 0;
			snd_play(sndSwapCursed)
		} else {
			thing = instance_create(x,y,PopupText);
			thing.mytext = "CURSED!";
			curse = 1;
			snd_play(sndStrongSpiritLost)
		}
	}
	if keyboard_check_pressed(vk_delete) {
		my_health = 0;
		thing = instance_create(x,y,PopupText);
		thing.mytext = "deleted";
	}
}
