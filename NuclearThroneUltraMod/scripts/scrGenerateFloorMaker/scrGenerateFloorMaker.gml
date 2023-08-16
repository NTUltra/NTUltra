///scrGenerateFloorMaker();
// /@description
///@param
function scrGenerateFloorMaker(limiter) {
	direction = choose(0,90,180,270)
	styleb = choose(0,0,0,0,0,0,1)

	goal = 100//110
	
	if instance_exists(Player){
		if scrIsCrown(27)
		{
			//Crown of opposite onto crown of disco
			styleb = choose(1,1,1,1,1,1,0)
		}
		var s = clamp(Player.loops*8,0,50);
		goal += s;
		if Player.area = 3 and Player.subarea = 3
		goal = 150+s//50
		else if Player.area = 4
		goal = 120+s
		else if Player.area = 5
		goal = 160+s
		else if Player.area = 7 || Player.area == 108
		{
			if Player.subarea == 3
				goal = 30+s
			else
				goal = 130+s
		}
		else if Player.area = 100
		goal = 40+s
		else if Player.area = 101 || Player.area == 122
		goal = 110+s
		else if Player.area = 103
		goal = 140+s
		else if Player.area = 102
		goal = 50+s
		else if Player.area = 104
		goal = 10
		else if Player.area = 105
		goal = 150+s
		else if Player.area = 106
		goal = 130+s
		else if Player.area = 114 || Player.area == 123
		goal = 130+s
		else if Player.area = 117 || Player.area == 124
		goal = 140+s
		else if (Player.area = 6||Player.area=112) && Player.subarea=2//LABS BOSS
		goal = 1;
		else if Player.area == 9 && Player.subarea < 3
		goal = 130+s
		else if Player.area == 118 && Player.subarea < 3
		goal = 130+s
		else if Player.area == 10 || Player.area == 121
		{
			styleb = choose(0,0,0,0,0,0,1,1)//Slightly higher chance for B tiles
			goal = 120+s
		}
		else if Player.area == 9 && Player.subarea == 3
		goal = 350;
		else if Player.area == 118 && Player.subarea == 3
		goal = 300;
		else if Player.area == 119 || Player.area == 120
		{
			goal = 60;
			s = -10;
		}
		else if Player.area == 126 || Player.area == 127
			goal = 130+s
		else if Player.area == 128 || Player.area == 129
			goal = 140 + s;
		else if Player.area == 130 || Player.area == 131
			goal = 110 + s;
		if scrIsGamemode(6)//small levels
		{
			goal=45+s;
			if Player.area == 9 && Player.subarea == 3
				goal = 290;
			if Player.area == 118 && Player.subarea == 3
				goal = 250;
		}
		else if scrIsGamemode(20)//big levels
		{
			goal *= 2;
		}
	}
	if scrIsGamemode(25) //Survival arena
	{
		goal = 1;
	}
	if instance_exists(MenuGen)
		goal = 80//60
	if instance_exists(InvertedBigMachine) || instance_exists(BigMachine)
		goal = 0
	endPieceSpawned = false;


	if (scrIsGamemode(25) && !instance_exists(Vlambeer))
	{
		limiter = scrMakeFloor(limiter);
		exit;
	}
	var fc = 0;
	with Floor{
		if canCount
			fc ++;
	}
	while ( fc <= goal && limiter < 800)//1000
	{
		fc = 0;
		with Floor{
			if canCount
				fc ++;
		}
		if UberCont.firstFloorMaker
		{
			//SetSeed();
			UberCont.firstFloorMaker = false;
			if instance_exists(Player) 
			{
				if (Player.area == 9 || Player.area == 118) && Player.subarea == 3
				{
					other.x = 10016;
					other.y = 10016;
					Player.x = other.x;
					Player.y = other.y;
					with WepPickup
					{
						x = Player.x;
						y = Player.y-200;
						speed = 0;
					}
					direction = 90;
				}
				if Player.ultra_got[66] && Player.altUltra
				{
					snd_play(sndWeaponChest);
					with instance_create(x,y,WepPickup)
					{
						scrWeapons()
						SetSeedWeapon();
						wep = scrDecideWep(0, 8)
						SetSeed();
						name = wep_name[wep]
						ammo = 50
						type = wep_type[wep]
						curse = 0
						sprite_index = wep_sprt[wep]
					}
				}
			}
		}
		limiter = scrMakeFloor(limiter);
		/*
		with GenCont
		{
			alarm[0] = 3
			alarm[2] = 2
		}
		*/

		with MenuGen
			alarm[1] = 3;
	}
	if point_distance(x,y,10016,10016) > 48 
	{
		if instance_exists(Player){
			/*
		if (Player.area == 3 and Player.subarea == 3){//#safe spawns 4 big dog
			Player.x=x+16;
			Player.y=y+16;
		}*/
		instance_create(x,y,Floor)
		if (Player.area == 9 && Player.subarea == 3)
		{
			instance_create(x,y,Floor)
			instance_create(x+32,y,Floor)
			instance_create(x-32,y,Floor)
			instance_create(x+64,y,Floor)
			instance_create(x-64,y,Floor)
			instance_create(x+96,y,Floor)
			instance_create(x-96,y,Floor)
			instance_create(x+128,y,Floor)
			instance_create(x-128,y,Floor)
			instance_create(x+16,y+16,Carpet);
			instance_create(x,y,NuclearThrone1);
		}
		else if (Player.area == 118 && Player.subarea == 3)
		{
			with instance_create(x+16,y+16,Carpet)
				sprite_index = sprInvertedCarpet;
			instance_create(x,y,InvertedNuclearThrone1);
		}
		else if Player.race=22
		{
			if Player.area!=104 && Player.area!=100 && !instance_exists(RogueAmmoChest)
				instance_create(x+16,y+16,RogueAmmoChest)
		}
		else if Player.area!=104 && Player.race != 25 && !(Player.area == 9 && Player.subarea ==3)&& !(Player.area == 118 && Player.subarea ==3)//Not mutation smith
		instance_create(x+16,y+16,RadChest)
		}
	}
	instance_destroy();
	return limiter;
}