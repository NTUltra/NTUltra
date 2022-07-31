if instance_number(Floor) > goal && (UberCont.opt_gamemode != 25 || instance_exists(Vlambeer))
{
	if point_distance(x,y,10016,10016) > 48 
	{
		if instance_exists(Player){
		if (Player.area == 3 and Player.subarea == 3){//#safe spawns 4 big dog
			Player.x=x+16;
			Player.y=y+16;
		}
		instance_create(x,y,Floor)
		if (Player.area == 9 && Player.subarea == 3)
		{
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
	
	instance_destroy()
}
else
{
if UberCont.firstFloorMaker
{
	SetSeed();
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
				wep = scrDecideWep(0, 8)

				name = wep_name[wep]
				ammo = 50
				type = wep_type[wep]
				curse = 0
				sprite_index = wep_sprt[wep]
			}
		}
	}
}
scrMakeFloor()

with GenCont
alarm[0] = 3
with GenCont
alarm[2] = 2

with MenuGen
alarm[1] = 3;
}

