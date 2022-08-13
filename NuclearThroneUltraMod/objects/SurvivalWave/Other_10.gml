/// @description Start wave
#region intro
if instance_exists(SurvivalArenaStarter)
{
	centerX = SurvivalArenaStarter.x;
	centerY = SurvivalArenaStarter.y;
	x = centerX;
	y = centerY;
}
if instance_exists(Player)
{
	waveNumber = Player.subarea - waveNumberOffset
}
with WepPickup
{
	instance_destroy();
	instance_create(x,y,SurvivalPortal);
}
with chestprop
{
	instance_destroy(id,false);
	instance_create(x,y,SurvivalPortal);
}
with RadChest
{
	instance_destroy(id,false);
	instance_create(x,y,SurvivalPortal);
}
with ChestOpen
{
	instance_destroy(id,false);
	instance_create(x,y,SurvivalPortal);
}
with Corpse
{
	instance_destroy(id,false);
	instance_create(x,y,SurvivalPortal);
}
with WeaponMod
{
	instance_destroy();
	instance_create(x,y,SurvivalPortal);
}
snd_play(sndCrownBlood);//LETS GO GET EM!
wave = [];
alarm[3] = 5;//Tell time is the difference between these two numbers
alarm[0] = 20;
spawnI = 0;
spawnItell = 0;
#endregion
#region area manip
switch (waveNumber)
{
	case 1:
		song = mus1;
		with Floor
		{
			if styleb
				sprite_index = sprFloor1B;
			else
				sprite_index = sprFloor1;
		}
	break;
	case 2:
		song = mus2;
		with Floor
		{
			if styleb
				sprite_index = sprFloor2B;
			else
				sprite_index = sprFloor2;
		}
	break;
	case 3:
		song = mus3;
		with Floor
		{
			if styleb
				sprite_index = sprFloor3B;
			else
				sprite_index = sprFloor3;
		}
	break;
	case 6:
		song = mus4;
		Player.area = 4;
		with Floor
		{
			if styleb
				sprite_index = sprFloor4B;
			else
				sprite_index = sprFloor4;
		}
	break;
	case 5:
		song = mus5;
		Player.area = 5;
		with Floor
		{
			if styleb
				sprite_index = sprFloor5B;
			else
				sprite_index = sprFloor5;
		}
	break;
	case 4:
		song = mus6;
		with Floor
		{
			if styleb
				sprite_index = sprFloor6B;
			else
				sprite_index = sprFloor6;
		}
	break;
	case 7:
		song = musVulcano;
		Player.area = 7;
		with Floor
		{
			if styleb
				sprite_index = sprFloor7B;
			else
				sprite_index = sprFloor7;
		}
	break;
	case 8:
		song = mus102;
		with Floor
		{
			if styleb
				sprite_index = sprFloor8B;
			else
				sprite_index = sprFloor8;
		}
	break;
	case 9:
		song = mus7;
		with Floor
		{
			if styleb
				sprite_index = sprFloor9B;
			else
				sprite_index = sprFloor9;
		}
	break;
	case 10:
		//Clean up throne 2
		with BigScorchMark
		{
			instance_destroy();
		}
		with ThroneIISpiral {
			instance_destroy();	
		}
		with WallHitMe
		{
			instance_destroy();
			instance_create(x,y,Wall);	
		}
		with BackFloor {
			instance_destroy();	
		}
		with BackFloorSmall {
			instance_destroy();	
		}
		audio_stop_sound(amb0c);
		song = mus1b;
		with Floor
		{
			if styleb
				sprite_index = sprFloor105B;
			else
				sprite_index = sprFloor105;
		}
	break;
	case 11:
		song = mus105;
		with Floor
		{
			if styleb
				sprite_index = sprFloor10B;
			else
				sprite_index = sprFloor10;
		}
	break;
	case 12://inv sewers
		song = musInvertedSewers;
		with Floor
		{
			if styleb
				sprite_index = sprFloor110B;
			else
				sprite_index = sprFloor110;
		}
	break;
	case 13://inv scrap
		song = mus3b;
		with Floor
		{
			if styleb
				sprite_index = sprFloor106B;
			else
				sprite_index = sprFloor106;
		}
	break;
	case 14://mansion
		song = mus103;
		with Floor
		{
			if styleb
				sprite_index = sprFloor103B;
			else
				sprite_index = sprFloor103;
		}
	break;
	case 15://inv lab
		song = mus106b
		with Floor
		{
			if styleb
				sprite_index = sprFloor106B;
			else
				sprite_index = sprFloor106;
		}
	break;
	case 16://inv frozen
		song = mus101;
		Player.area = 101;
		with Floor
		{
			if styleb
				sprite_index = sprFloor101B;
			else
				sprite_index = sprFloor101;
		}
	break;
	case 17://jungle
		song = mus105;
		with Floor
		{
			if styleb
				sprite_index = sprFloor114B;
			else
				sprite_index = sprFloor114;
		}
	break;
	case 18://inv cave
		song = mus104;
		Player.area = 111;
		with Floor
		{
			if styleb
				sprite_index = sprFloor111B;
			else
				sprite_index = sprFloor111;
		}
	break;
	case 19://inv oasis
		song = mus101;
		with Floor
		{
			if styleb
				sprite_index = sprFloor101B;
			else
				sprite_index = sprFloor101;
		}
	break;
	case 20://pizza sewers
		song = mus102;
		with Floor
		{
			if styleb
				sprite_index = sprFloor102B;
			else
				sprite_index = sprFloor102;
		}
	break;
	case 21://cursed caves
		song = mus104;
		Player.area = 115;
		with Floor
		{
			if styleb
				sprite_index = sprFloor115B;
			else
				sprite_index = sprFloor115;
		}
	break;
	case 22://inv vulcano
		song = mus5b;
		Player.area = 108;
		with Floor
		{
			if styleb
				sprite_index = sprFloor108B;
			else
				sprite_index = sprFloor108;
		}
	break;
	case 23://inv banditland
		song = musThemeP;
		with Floor
		{
			if styleb
				sprite_index = sprFloor0B;
			else
				sprite_index = sprFloor0;
		}
	break;
	case 24://inv wonderland
		song = mus5b;
		with Floor
		{
			if styleb
				sprite_index = sprFloor109B;
			else
				sprite_index = sprFloor109;
		}
	break;
}
#endregion
#region waves
var i = 0;
repeat(1+loops)
{
	switch (waveNumber)
	{
		#region wave 1 desert
		case 1:
		var cx = centerX - 128
			wave[i] = {
				obj: Bandit,
				time: 1,
				xx: cx-16,
				yy: centerY-16
			};
			i++;
			wave[i] = {
				obj: Bandit,
				time: 1,
				xx: cx+16,
				yy: centerY-16
			};
			i++;
			wave[i] = {
				obj: Bandit,
				time: 1,
				xx: cx+16,
				yy: centerY+16
			};
			i++;
			wave[i] = {
				obj: Bandit,
				time: 1,
				xx: cx-16,
				yy: centerY+16
			};
			i++;
			wave[i] = {
					obj: Barrel,
					time: 120,
					xx: cx,
					yy: centerY
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: Bandit,
					time: 10,
				};
				i++;
			}
			wave[i] = {
				obj: Scorpion,
				time: 140,
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: BanditSquare,
					time: 10,
				};
				i++;
			}
			wave[i] = {
					obj: BigMaggot,
					time: 60,
					xx: centerX,
					yy: centerY,
				};
			i++;
			repeat(12)
			{
				wave[i] = {
					obj: Maggot,
					time: 2,
				};
				i++;
			}
			wave[i] = {
					obj: BigMaggot,
					time: 60,
				};
			i++;
			wave[i] = {
				obj: AmmoChest,
				time: 200,
				xx: centerX,
				yy: centerY-32
			};
			i++;
			wave[i] = {
				obj: GoldScorpion,
				xx: centerX,
				yy: centerY,
				time: 120
			};
			i++
			wave[i] = {
				obj: RadMaggotChest,
				time: 120,
				xx: centerX,
				yy: centerY+32
			};
			i++;
			wave[i] = {
					obj: BigMaggot,
					time: 50,
				};
			i++;
			wave[i] = {
					obj: Scorpion,
					time: 20,
				};
			i++;
			wave[i] = {
					obj: Scorpion,
					time: 20,
				};
			i++;
			wave[i] = {
					obj: Bandit,
					time: 80,
				};
			i++;
			wave[i] = {
				obj: BanditBoss,
				time: 30,
				xx: centerX,
				yy: centerY
			};
		break;
		#endregion
		#region wave 2 sewers
		case 2:
			repeat(5)
			{
				wave[i] = {
					obj: Rat,
					time: 10
				};
				i++;
			}
			wave[i] = {
					obj: FastRat,
					time: 160
				};
				i++;
			wave[i] = {
				obj: Ratking,
				time: 100
			};
			i++;
			wave[i] = {
					obj: Exploder,
					time: 10,
				};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: Gator,
					time: 10
				};
				i++;
			}
			wave[i] = {
				obj: Ratking,
				time: 130
			};
			i++;
			wave[i] = {
				obj: Gator,
				time: 10
			};
			i++;
			wave[i] = {
				obj: AmmoChest,
				time: 160,
				xx: centerX,
				yy: centerY+32
			};
			i++;
			wave[i] = {
				obj: BuffGator,
				time: 30
			};
			i++;
			wave[i] = {
				obj: Ratking,
				time: 60,
				xx: centerX,
				yy: centerY
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: Bandit,
					time: 10,
				};
				i++;
			}
			wave[i] = {
					obj: Exploder,
					time: 10,
				};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: BanditSquare,
					time: 15,
				};
				i++;
			}
			wave[i] = {
				obj: WeaponChest,
				time: 200,
				xx: centerX,
				yy: centerY-32
			};
			i++;
			wave[i] = {
					obj: Exploder,
					time: 1,
				};
			i++;
			repeat(14)
			{
				wave[i] = {
					obj: Rat,
					time: 2,
				};
				i++;
			}
			wave[i] = {
				obj: ToxicBarrel,
				time: 200,
				xx: centerX,
				yy: centerY
			};
			i++;
			wave[i] = {
					obj: SuperFrog,
					time: 200,
				};
			i++;
			repeat(4)
			{
				wave[i] = {
					obj: Exploder,
					time: 2,
				};
				i++;
			}
			repeat(3)
			{
				wave[i] = {
					obj: ToxicBarrel,
					time: 2,
				};
				i++;
			}
			wave[i] = {
				obj: ToxicBarrel,
				time: 90,
			};
			i++;
			wave[i] = {
					obj: BuffGator,
					time: 10,
				};
			i++;
		break;
		#endregion
		#region wave 3 scrapyard
		case 3:
			repeat(3)
			{
				wave[i] = {
					obj: Raven,
					time: 10
				};
				i++;
			}
			wave[i] = {
				obj: Raven,
				time: 120
			};
			i++;
			wave[i] = {
				obj: Salamander,
				time: 30
			};
			i++;
			wave[i] = {
				obj: Bandit,
				time: 4
			};
			i++;
			wave[i] = {
				obj: Salamander,
				time: 60
			};
			i++;
			repeat(6)
			{
				wave[i] = {
					obj: Raven,
					time: 6
				};
				i++;
			}
			wave[i] = {
				obj: Raven,
				time: 100
			};
			i++;
			wave[i] = {
				obj: Thief,
				time: 4
			};
			i++;
			wave[i] = {
				obj: Exploder,
				time: 110
			};
			i++;
			wave[i] = {
				obj: ToxicBarrel,
				time: 100,
				xx: centerX,
				yy: centerY+32
			};
			i++;
			wave[i] = {
				obj: Salamander,
				time: 10
			};
			i++;
			wave[i] = {
				obj: Exploder,
				time: 10
			};
			i++;
			wave[i] = {
				obj: Salamander,
				time: 10
			};
			i++;
			wave[i] = {
				obj: Sniper,
				time: 10
			};
			i++;
			wave[i] = {
				obj: Bandit,
				time: 4
			};
			i++;
			wave[i] = {
				obj: EliteWeaponChest,
				time: 5,
				xx: centerX-32,
				yy: centerY
			};
			i++;
			wave[i] = {
				obj: BanditSquare,
				time: 4
			};
			i++;
			wave[i] = {
				obj: Thief,
				time: 4
			};
			i++;
			wave[i] = {
				obj: Bandit,
				time: 120
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: Sniper,
					time: 10
				};
				i++;
			}
			wave[i] = {
				obj: Sniper,
				time: 120
			};
			i++;
			wave[i] = {
				obj: Salamander,
				time: 6
			};
			i++;
			wave[i] = {
				obj: Thief,
				time: 6
			};
			i++;
			wave[i] = {
				obj: BanditSquare,
				time: 10
			};
			i++;
			wave[i] = {
				obj: Raven,
				time: 5
			};
			i++;
			wave[i] = {
				obj: Raven,
				time: 5
			};
			i++;
			wave[i] = {
				obj: Sniper,
				time: 150
			};
			i++;
			wave[i] = {
				obj: Bandit,
				time: 5
			};
			i++;
			wave[i] = {
				obj: ScrapBoss,
				time: 10,
				xx: centerX,
				yy: centerY
			};
			i++;
			wave[i] = {
				obj: Sniper,
				time: 60
			};
			i++;
			wave[i] = {
				obj: Sniper,
				time: 30
			};
			i++;
			wave[i] = {
				obj: Raven,
				time: 5
			};
			i++;
			wave[i] = {
				obj: Sniper,
				time: 1
			};
			i++;
			wave[i] = {
				obj: Raven,
				time: 5
			};
			wave[i] = {
				obj: Sniper,
				time: 1
			};
			i++;
			wave[i] = {
				obj: Raven,
				time: 5
			};
			wave[i] = {
				obj: Sniper,
				time: 10
			};
			i++;
			wave[i] = {
				obj: Raven,
				time: 10
			};
		break;
		#endregion
		#region wave 6 caves
		case 6:
			repeat(5)
			{
				wave[i] = {
					obj: Spider,
					time: 6
				};
				i++;
			}
			wave[i] = {
				obj: Cocoon,
				time: 5
			};
			i++;
			wave[i] = {
					obj: LaserCrystal,
					time: 120
				};
			i++;
			wave[i] = {
				obj: SquareBat,
				time: 10
			};
			i++;
			wave[i] = {
				obj: SquareBat,
				time: 10
			};
			i++;
			wave[i] = {
				obj: FireBat,
				time: 20
			};
			i++;
			wave[i] = {
				obj: SquareBat,
				time: 50
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: Spider,
					time: 6
				};
				i++;
			}
			wave[i] = {
				obj: LaserCrystal,
				time: 20,
				xx: centerX,
				yy: centerY
			};
			i++;
			wave[i] = {
				obj: Cocoon,
				time: 5
			};
			i++;
			wave[i] = {
				obj: LightningCrystal,
				time: 40,
				xx: centerX,
				yy: centerY
			};
			i++;
			wave[i] = {
				obj: LaserCrystal,
				time: 100
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: Spider,
					time: 10
				};
				i++;
			}
			wave[i] = {
				obj: LaserCrystal,
				time: 180
			};
			i++;
			wave[i] = {
				obj: Cocoon,
				time: 5,
				xx: centerX,
				yy: centerY
			};
			i++;
			repeat(4)
			{
				wave[i] = {
					obj: Spider,
					time: 10
				};
				i++;
			}
			wave[i] = {
				obj: FireBat,
				time: 60
			};
			i++;
			repeat(4)
			{
				wave[i] = {
					obj: SquareBat,
					time: 10
				};
				i++;
			}
			repeat(3)
			{
				wave[i] = {
					obj: LaserCrystal,
					time: 15
				};
				i++;
			}
			wave[i] = {
				obj: LightningCrystal,
				time: 200,
				xx: centerX,
				yy: centerY
			};
			i++;
			wave[i] = {
				obj: AmmoChest,
				time: 10,
				xx: centerX,
				yy: centerY+32
			};
			i++;
			repeat(4)
			{
				wave[i] = {
					obj: Spider,
					time: 5
				};
				i++;
			}
			wave[i] = {
				obj: GoldCrystal,
				time: 120
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: LaserCrystal,
					time: 11
				};
				i++;
			}
			wave[i] = {
				obj: GoldCrystal,
				time: 60
			};
			i++;
			repeat(6)
			{
				wave[i] = {
					obj: Spider,
					time: 3
				};
				i++;
			}
			wave[i] = {
				obj: FireBat,
				time: 90
			};
			i++;
			wave[i] = {
				obj: AmmoChest,
				time: 60,
				xx: centerX-32,
				yy: centerY
			};
			i++;
			repeat(4)
			{
				wave[i] = {
					obj: GoldCrystal,
					time: 8
				};
				i++;
			}
			wave[i] = {
				obj: HealthChest,
				time: 60,
				xx: centerX,
				yy: centerY-32
			};
			i++;
			wave[i] = {
				obj: LightningCrystal,
				time: 260,
				xx: centerX,
				yy: centerY
			};
			i++;
			wave[i] = {
				obj: BigBadBat,
				time: 90
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: LaserCrystal,
					time: 30
				};
				i++;
			}
		break;
		#endregion
		#region wave 5 frozen city
		case 5:
			repeat(3)
			{
				wave[i] = {
					obj: SnowBot,
					time: 10
				};
				i++;
			}
			wave[i] = {
				obj: SnowBot,
				time: 40
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: Wolf,
					time: 10
				};
				i++;
			}
			wave[i] = {
				obj: Wolf,
				time: 40
			};
			i++;
			wave[i] = {
				obj: Bandit,
				time: 5
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: DiscGuy,
					time: 10
				};
				i++;
			}
			wave[i] = {
				obj: DiscGuy,
				time: 50
			};
			i++;
			wave[i] = {
				obj: BanditSquare,
				time: 5
			};
			i++;
			wave[i] = {
				obj: SnowTank,
				time: 60,
				xx: centerX,
				yy: centerY
			};
			i++;
			wave[i] = {
				obj: SnowBot,
				time: 5
			};
			i++;
			wave[i] = {
				obj: Wolf,
				time: 5
			};
			i++;
			wave[i] = {
				obj: DiscGuy,
				time: 5
			};
			i++;
			wave[i] = {
				obj: Bandit,
				time: 5
			};
			i++;
			wave[i] = {
				obj: BanditSquare,
				time: 40
			};
			i++;
			wave[i] = {
				obj: EliteWeaponChest,
				time: 5,
				xx: centerX-32,
				yy: centerY
			};
			i++;
			wave[i] = {
				obj: SnowTank,
				time: 70,
				xx: centerX+32,
				yy: centerY
			};
			i++;
			wave[i] = {
				obj: SnowBot,
				time: 5
			};
			i++;
			wave[i] = {
				obj: Wolf,
				time: 5
			};
			i++;
			wave[i] = {
				obj: DiscGuy,
				time: 120
			};
			i++;
			wave[i] = {
				obj: GoldSnowTank,
				time: 140,
				xx: centerX+32,
				yy: centerY
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: SnowTank,
					time: 10
				};
				i++;
			}
			wave[i] = {
				obj: SnowTank,
				time: 60
			};
			i++;
			wave[i] = {
				obj: SnowBot,
				time: 5
			};
			i++;
			wave[i] = {
				obj: BanditSquare,
				time: 5
			};
			i++;
			wave[i] = {
				obj: Wolf,
				time: 5
			};
			i++;
			wave[i] = {
				obj: Bandit,
				time: 5
			};
			i++;
			wave[i] = {
				obj: SnowBot,
				time: 200
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: GoldSnowTank,
					time: 20
				};
				i++;
			}
			wave[i] = {
				obj: GoldSnowTank,
				time: 300
			};
			i++;
			wave[i] = {
				obj: SnowBot,
				time: 5
			};
			i++;
			wave[i] = {
				obj: Bandit,
				time: 5
			};
			i++;
			wave[i] = {
				obj: Wolf,
				time: 5
			};
			i++;
			wave[i] = {
				obj: Bandit,
				time: 5
			};
			i++;
			wave[i] = {
				obj: BanditSquare,
				time: 5
			};
			i++;
			wave[i] = {
				obj: Bandit,
				time: 5
			};
			i++;
			wave[i] = {
				obj: DiscGuy,
				time: 200
			};
			i++;
			wave[i] = {
				obj: HealthChest,
				time: 10,
				xx: centerX - 32,
				yy: centerY
			};
			i++;
			wave[i] = {
				obj: LilHunter,
				time: 60,
				xx: centerX,
				yy: centerY
			};
			i++;
			wave[i] = {
				obj: IDPDSpawn,
				time: 60,
				xx: centerX,
				yy: centerY
			};
			wave[i] = {
				obj: VanSpawn,
				time: 140,
				xx: centerX-128,
				yy: centerY
			};
			i++;
		break;
		#endregion
		#region wave 4 labs
		case 4:
			repeat(6)
			{
				wave[i] = {
					obj: Freak,
					time: 4
				};
				i++;
			}
			wave[i] = {
				obj: RhinoFreak,
				time: 4,
				xx: centerX,
				yy: centerY
			};
			i++;
			wave[i] = {
				obj: Necromancer,
				time: 120,
				xx: centerX,
				yy: centerY
			};
			i++;
			repeat(6)
			{
				wave[i] = {
					obj: Freak,
					time: 4
				};
				i++;
			}
			wave[i] = {
				obj: RhinoFreak,
				time: 50
			};
			i++;
			wave[i] = {
				obj: RhinoFreak,
				time: 70
			};
			i++;
			wave[i] = {
				obj: GoldNecromancer,
				time: 120,
				xx: centerX,
				yy: centerY
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: Turret,
					time: 4
				};
				i++;
			}
			wave[i] = {
				obj: Turret,
				time: 10
			};
			i++;
			wave[i] = {
				obj: Necromancer,
				time: 60,
				xx: centerX,
				yy: centerY
			};
			i++;
			wave[i] = {
				obj: GoldNecromancer,
				time: 30,
				xx: centerX,
				yy: centerY
			};
			i++;
			wave[i] = {
				obj: HealthChest,
				time: 60,
				xx: centerX,
				yy: centerY-24
			};
			i++;
			wave[i] = {
				obj: ExploFreak,
				time: 80,
				xx: centerX,
				yy: centerY
			};
			i++;
			repeat(15)
			{
				wave[i] = {
					obj: Freak,
					time: 4
				};
				i++;
			}
			repeat(3)
			{
				wave[i] = {
					obj: Necromancer,
					time: 10
				};
				i++;
			}
			wave[i] = {
				obj: GoldNecromancer,
				time: 200,
				xx: centerX,
				yy: centerY
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: ExploFreak,
					time: 1
				};
				i++;
			}
			wave[i] = {
				obj: ExploFreak,
				time: 5
			};
			i++;
			wave[i] = {
				obj: EliteWeaponChest,
				time: 5,
				xx: centerX,
				yy: centerY+24
			};
			i++;
			wave[i] = {
				obj: RhinoFreak,
				time: 180,
				xx: centerX,
				yy: centerY
			};
			//Big machine
			i++;
			wave[i] = {
				obj: WallBreak,
				time: 1,
				xx: centerX-64,
				yy: centerY-160
			};
			i++;
			wave[i] = {
				obj: WallBreak,
				time: 1,
				xx: centerX-32,
				yy: centerY-160
			};
			i++;
			wave[i] = {
				obj: WallBreak,
				time: 1,
				xx: centerX+32,
				yy: centerY-160
			};
			i++;
			wave[i] = {
				obj: WallBreak,
				time: 1,
				xx: centerX+64,
				yy: centerY-160
			};
			i++;
			wave[i] = {
				obj: WallBreak,
				time: 1,
				xx: centerX,
				yy: centerY-192
			};
			i++;
			wave[i] = {
				obj: WallBreak,
				time: 1,
				xx: centerX-64,
				yy: centerY-192
			};
			i++;
			wave[i] = {
				obj: WallBreak,
				time: 1,
				xx: centerX-32,
				yy: centerY-192
			};
			i++;
			wave[i] = {
				obj: WallBreak,
				time: 1,
				xx: centerX+64,
				yy: centerY-160
			};
			i++;
			wave[i] = {
				obj: WallBreak,
				time: 1,
				xx: centerX+32,
				yy: centerY-160
			};
			i++;
			wave[i] = {
				obj: BigMachine,
				time: 10,
				xx: centerX,
				yy: centerY-160
			};
			i++;
			wave[i] = {
				obj: BigMachineLaser,
				time: 2,
				xx: centerX-128,
				yy: centerY-96
			};
			i++;
			wave[i] = {
				obj: BigMachineLaser,
				time: 2,
				xx: centerX+128,
				yy: centerY-96
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: RhinoFreak,
					time: 10
				};
				i++;
			}
			wave[i] = {
				obj: RhinoFreak,
				time: 1
			};
			i++;
		break;
		#endregion
		#region wave 7 vulcano
		case 7:
			repeat(7)
			{
				wave[i] = {
					obj: LavaBallEnemy,
					time: 4,
					xx: centerX+random_range(16,-16),
					yy: centerY+random_range(16,-16)
				};
				i++;
			}
			wave[i] = {
				obj: LavaBallEnemy,
				time: 140,
				xx: centerX+random_range(16,-16),
				yy: centerY+random_range(16,-16)
			};
			i++;
			wave[i] = {
				obj: Thief,
				time: 4,
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: FireBat,
					time: 4,
					xx: centerX+random_range(16,-16),
					yy: centerY+random_range(16,-16)
				};
				i++;
			}
			wave[i] = {
				obj: Bandit,
				time: 20,
			};
			i++;
			wave[i] = {
				obj: FireWorm,
				time: 4,
			};
			i++;
			wave[i] = {
				obj: FireBat,
				time: 120,
				xx: centerX+random_range(16,-16),
				yy: centerY+random_range(16,-16)
			};
			i++;
			repeat(4)
			{
				wave[i] = {
					obj: FireBaller,
					time: 5,
				};
				i++;
			}
			repeat(4)
			{
				wave[i] = {
					obj: SuperFireBaller,
					time: 10,
				};
				i++;
			}
			wave[i] = {
				obj: BanditSquare,
				time: 40,
			};
			i++;
			wave[i] = {
				obj: Bandit,
				time: 40,
			};
			i++;
			wave[i] = {
				obj: FireWorm,
				time: 40,
			};
			i++;
			wave[i] = {
				obj: AmmoChest,
				time: 40,
				xx: centerX,
				yy: centerY + 32
			};
			i++;
			repeat(4)
			{
				wave[i] = {
					obj: FireWorm,
					time: 10,
				};
				i++;
			}
			wave[i] = {
				obj: Thief,
				time: 30,
			};
			i++;
			wave[i] = {
				obj: LavaBallEnemy,
				time: 160,
				xx: centerX,
				yy: centerY,
			};
			i++;
			wave[i] = {
				obj: SuperFireBaller,
				time: 20,
				xx: centerX,
				yy: centerY,
			};
			repeat(7)
			{
				wave[i] = {
					obj: Salamander,
					time: 10,
				};
				i++;
			}
			wave[i] = {
				obj: GoldWorm,
				time: 160,
			};
			i++;
			repeat(7)
			{
				wave[i] = {
					obj: LavaBallEnemy,
					time: 4
				};
				i++;
			}
			wave[i] = {
				obj: WeaponChest,
				time: 40,
				xx: centerX,
				yy: centerY - 32
			};
			i++
			wave[i] = {
				obj: LavaBallEnemy,
				time: 160,
			};
			wave[i] = {
				obj: FireBat,
				time: 70,
				xx: centerX,
				yy: centerY,
			};
			var xxx = centerX+96;
			for (var ix = 0; ix < 8; ix++) {
				var yyy = centerY - 128;
				for (var iy = 0; iy < 8; iy++) {
					wave[i] = {
						obj: WallBreak,
						time: 2,
						xx: xxx,
						yy: yyy,
					};
					i++
					yyy += 32;
				}
				xxx += 32;
			}
			wave[i] = {
				obj: HotDrake,
				time: 120,
				xx: centerX+256,
				yy: centerY-32,
			};
			i++
			wave[i] = {
				obj: FireWorm,
				time: 40
			};
			i++
			wave[i] = {
				obj: BanditSquare,
				time: 40
			};
			i++;
			wave[i] = {
				obj: LavaBallEnemy,
				time: 40
			};
			i++
			wave[i] = {
				obj: Salamander,
				time: 40
			};
			i++
			wave[i] = {
				obj: FireBaller,
				time: 50
			};
			i++
			wave[i] = {
				obj: SuperFireBaller,
				time: 60
			};
			i++
			wave[i] = {
				obj: GoldWorm,
				time: 30
			};
			i++
			wave[i] = {
				obj: Bandit,
				time: 20
			};
			i++;
			wave[i] = {
				obj: Salamander,
				time: 40
			};
			i++
			wave[i] = {
				obj: FireBat,
				time: 40
			};
			i++
		break;
		
		#endregion
		#region wave 8 wonderland
		case 8:
			wave[i] = {
				obj: Sheep,
				time: 80,
				xx: centerX,
				yy: centerY-16
			};
			i++;
			wave[i] = {
				obj: ExplosiveSheep,
				time: 50,
				xx: centerX,
				yy: centerY+16
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: CardGuy,
					time: 2
				};
				i++;
			}
			wave[i] = {
				obj: CardGuy,
				time: 10
			};
			i++;
			wave[i] = {
				obj: TeaPot,
				time: 70,
				xx: centerX,
				yy: centerY
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: CardGuy2,
					time: 2
				};
				i++;
			}
			wave[i] = {
				obj: CardGuy2,
				time: 10
			};
			i++;
			wave[i] = {
				obj: AmmoChest,
				time: 70,
				xx: centerX,
				yy: centerY - 32
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: Sheep,
					time: 1
				};
				i++;
			}
			wave[i] = {
				obj: Sheep,
				time: 1
			};
			i++;
			wave[i] = {
				obj: SuperMimic,
				time: 60,
				xx: centerX,
				yy: centerY+32
			};
			i++;
			repeat(8)
			{
				wave[i] = {
					obj: CardGuy2,
					time: 20
				};
				i++;
				wave[i] = {
					obj: CardGuy,
					time: 20
				};
				i++;
				wave[i] = {
					obj: TeaPot,
					time: 40,
					xx: centerX,
					yy: centerY
				};
				i++;
			}
			wave[i] = {
				obj: GoldTeapot,
				time: 180,
				xx: centerX,
				yy: centerY
			};
			i++;
			wave[i] = {
				obj: VanSpawn,
				time: 30,
				xx: centerX-140,
				yy: centerY+32
			};
			i++;
			wave[i] = {
				obj: VanSpawn,
				time: 90,
				xx: centerX+140,
				yy: centerY-32
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: TeaPot,
					time: 14
				};
				i++;
			}
			wave[i] = {
				obj: CardGuy,
				time: 90
			};
			i++;
			wave[i] = {
					obj: GoldTeapot,
					time: 40
				};
				i++;
			repeat(4)
			{
				wave[i] = {
					obj: CardGuy2,
					time: 15
				};
				i++;
				wave[i] = {
					obj: CardGuy,
					time: 15
				};
				i++;
				wave[i] = {
					obj: TeaPot,
					time: 20
				};
				i++;
			}
			wave[i] = {
				obj: EliteWeaponChest,
				time: 80,
				xx: centerX,
				yy: centerY - 32
			};
			i++;
			wave[i] = {
				obj: IDPDSpawn,
				time: 10
			};
			i++;
			wave[i] = {
				obj: CardGuy,
				time: 80
			};
			i++;
			wave[i] = {
				obj: ChesireCat,
				time: 190
			};
			i++;
			wave[i] = {
				obj: GoldTeapot,
				time: 10
			};
			i++;
			wave[i] = {
				obj: IDPDSpawn,
				time: 10
			};
			i++;
			repeat(2)
			{
				wave[i] = {
					obj: CardGuy2,
					time: 25
				};
				i++;
				wave[i] = {
					obj: CardGuy,
					time: 30
				};
				i++;
				wave[i] = {
					obj: TeaPot,
					time: 20
				};
			}
		break;
		#endregion
		#region wave 9 palace
		case 9:
			repeat(8)
			{
				wave[i] = {
					obj: PalaceGuardian,
					time: 15
				};
				i++;
			}
			wave[i] = {
				obj: ExploGuardian,
				time: 130,
				xx: centerX,
				yy: centerY
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: PalaceGuardian,
					time: 14
				};
				i++;
			}
			wave[i] = {
				obj: ExploGuardian,
				time: 40
			};
			i++;
			wave[i] = {
				obj: GuardianDog,
				time: 140,
				xx: centerX,
				yy: centerY
			};
			i++;
			repeat(4)
			{
				wave[i] = {
					obj: PalaceGuardian,
					time: 20
				};
				i++;
			}
			repeat(4)
			{
				wave[i] = {
					obj: ExploGuardian,
					time: 20
				};
				i++;
			}
			wave[i] = {
				obj: GhostGuardian,
				time: 2,
				xx: centerX+256,
				yy: centerY
			};
			i++;
			wave[i] = {
				obj: GhostGuardian,
				time: 190,
				xx: centerX-256,
				yy: centerY
			};
			i++;
			repeat(4)
			{
				wave[i] = {
					obj: GhostGuardian,
					time: 10
				};
				i++;
			}
			wave[i] = {
				obj: CubeGuardian,
				time: 10,
				xx: centerX,
				yy: centerY
			};
			i++;
			repeat(4)
			{
				wave[i] = {
					obj: PalaceGuardian,
					time: 10
				};
				i++;
			}
			wave[i] = {
				obj: CubeGuardian,
				time: 120,
				xx: centerX,
				yy: centerY
			};
			i++;
			wave[i] = {
				obj: HealthChest,
				time: 70,
				xx: centerX,
				yy: centerY+32
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: GuardianDog,
					time: 30
				};
				i++;
			}
			wave[i] = {
				obj: GuardianDog,
				time: 160
			};
			i++;
			var xxx = centerX - 128;
			for (var ix = 0; ix < 8; ix++) {
				var yyy = centerY - 128;
				for (var iy = 0; iy < 24; iy++) {
					wave[i] = {
						obj: WallBreak,
						time: 1,
						xx: xxx,
						yy: yyy,
					};
					i++
					if (iy == 22 && ix == 3)
					{
						wave[i] = {
							obj: Carpet,
							time: 2,
							xx: xxx+16,
							yy: yyy+16,
						};
						i++
						wave[i] = {
							obj: NuclearThrone1,
							time: 1,
							xx: xxx,
							yy: yyy,
						};
						i++
					}
					yyy -= 32;
				}
				xxx += 32;
			}
			wave[i] = {
				obj: GhostGuardian,
				time: 60
			};
			i++;
			wave[i] = {
				obj: ExploGuardian,
				time: 60,
				xx: centerX,
				yy: centerY
			};
			i++;
			wave[i] = {
				obj: CubeGuardian,
				time: 20
			};
			i++;
			wave[i] = {
				obj: PalaceGuardian,
				time: 60
			};
			i++;
			wave[i] = {
				obj: GuardianDog,
				time: 80
			};
			i++;
			wave[i] = {
				obj: PalaceGuardian,
				time: 60
			};
			i++;
		break;
		#endregion
		#region wave 10 inverted desert
		case 10:
		var cx = centerX + 128
			wave[i] = {
				obj: BanditInverted,
				time: 1,
				xx: cx-16,
				yy: centerY-16
			};
			i++;
			wave[i] = {
				obj: BanditInverted,
				time: 1,
				xx: cx+16,
				yy: centerY-16
			};
			i++;
			wave[i] = {
				obj: BanditInverted,
				time: 1,
				xx: cx+16,
				yy: centerY+16
			};
			i++;
			wave[i] = {
				obj: BanditInverted,
				time: 1,
				xx: cx-16,
				yy: centerY+16
			};
			i++;
			wave[i] = {
					obj: Barrel,
					time: 50,
					xx: cx,
					yy: centerY
			};
			i++;
			
			cx = centerX - 128
			wave[i] = {
				obj: BanditInverted,
				time: 1,
				xx: cx-16,
				yy: centerY-16
			};
			i++;
			wave[i] = {
				obj: BanditInverted,
				time: 1,
				xx: cx+16,
				yy: centerY-16
			};
			i++;
			wave[i] = {
				obj: BanditInverted,
				time: 1,
				xx: cx+16,
				yy: centerY+16
			};
			i++;
			wave[i] = {
				obj: BanditInverted,
				time: 1,
				xx: cx-16,
				yy: centerY+16
			};
			i++;
			wave[i] = {
					obj: Barrel,
					time: 5,
					xx: cx,
					yy: centerY
			};
			i++;
			var cy = centerY - 128
			wave[i] = {
				obj: BanditInverted,
				time: 1,
				xx: centerX-16,
				yy: cy-16
			};
			i++;
			wave[i] = {
				obj: BanditInverted,
				time: 1,
				xx: centerX+16,
				yy: cy-16
			};
			i++;
			wave[i] = {
				obj: BanditInverted,
				time: 1,
				xx: centerX+16,
				yy: cy+16
			};
			i++;
			wave[i] = {
				obj: BanditInverted,
				time: 1,
				xx: centerX-16,
				yy: cy+16
			};
			i++;
			wave[i] = {
					obj: Barrel,
					time: 5,
					xx: centerX,
					yy: cy
			};
			i++;
			cy = centerY + 128
			wave[i] = {
				obj: BanditInverted,
				time: 1,
				xx: centerX-16,
				yy: cy-16
			};
			i++;
			wave[i] = {
				obj: BanditInverted,
				time: 1,
				xx: centerX+16,
				yy: cy-16
			};
			i++;
			wave[i] = {
				obj: BanditInverted,
				time: 1,
				xx: centerX+16,
				yy: cy+16
			};
			i++;
			wave[i] = {
				obj: BanditInverted,
				time: 1,
				xx: centerX-16,
				yy: cy+16
			};
			i++;
			wave[i] = {
					obj: Barrel,
					time: 50,
					xx: centerX,
					yy: cy
			};
			i++;
			
			repeat(6)
			{
				wave[i] = {
					obj: BanditInverted,
					time: 5,
				};
				i++;
			}
			wave[i] = {
				obj: InvertedGoldScorpion,
				time: 140,
			};
			i++;
			repeat(6)
			{
				wave[i] = {
					obj: BanditSquare,
					time: 4,
				};
				i++;
			}
			wave[i] = {
					obj: BigMaggotInverted,
					time: 50,
					xx: centerX,
					yy: centerY,
				};
			i++;
			repeat(24)
			{
				wave[i] = {
					obj: MaggotInverted,
					time: 1,
				};
				i++;
			}
			wave[i] = {
					obj: BigMaggotInverted,
					time: 40,
				};
			i++;
			wave[i] = {
					obj: InvertedScorpion,
					time: 40,
				};
			i++;
			wave[i] = {
				obj: InvertedGoldScorpion,
				xx: centerX,
				yy: centerY,
				time: 60
			};
			i++
			wave[i] = {
					obj: BigMaggotInverted,
					time: 40,
				};
			i++;
			repeat(4)
			{
				wave[i] = {
						obj: InvertedScorpion,
						time: 10,
					};
				i++;
			}
			wave[i] = {
					obj: InvertedGoldScorpion,
					xx: centerX,
					yy: centerY,
					time: 90,
				};
			i++;
			wave[i] = {
					obj: BanditInverted,
					time: 60,
				};
			i++;
			wave[i] = {
				obj: InvertedBanditBoss,
				time: 70,
				xx: centerX,
				yy: centerY
			};
			i++;
			repeat(4)
			{
				wave[i] = {
						obj: InvertedGoldScorpion,
						time: 10,
					};
				i++;
			}
		break;
		#endregion
		#region wave 11 Savanna
		case 11:
			wave[i] = {
				obj: Hyena,
				time: 2,
			};
			i++;
			wave[i] = {
				obj: Vulture,
				time: 2,
			};
			i++;
			wave[i] = {
				obj: GoldHyena,
				time: 10,
			};
			i++;
			wave[i] = {
				obj: Vulture,
				time: 60,
			};
			i++;
			repeat(8)
			{
				wave[i] = {
				obj: Hyena,
				time: 2,
				};
				i++;
			}
			wave[i] = {
				obj: Vulture,
				time: 60,
				xx: centerX,
				yy: centerY
			};
			i++;
			wave[i] = {
				obj: BanditSquare,
				time: 10,
				xx: centerX,
				yy: centerY
			};
			i++;
			repeat(4)
			{
				wave[i] = {
				obj: SavannaBandit,
				time: 2,
				};
				i++;
			}
			wave[i] = {
				obj: Vulture,
				time: 5,
				xx: centerX-16,
				yy: centerY
			};
			i++;
			wave[i] = {
				obj: Vulture,
				time: 5,
				xx: centerX+16,
				yy: centerY
			};
			i++;
			repeat(4)
			{
				wave[i] = {
				obj: Hyena,
				time: 2,
				};
				i++;
			}
			wave[i] = {
				obj: Vulture,
				time: 5,
				xx: centerX,
				yy: centerY+16
			};
			i++;
			wave[i] = {
				obj: Vulture,
				time: 90,
				xx: centerX,
				yy: centerY-16
			};
			i++;
			wave[i] = {
				obj: GoldHyena,
				time: 20,
			};
			i++;
			repeat(4)
			{
				wave[i] = {
				obj: SavannaBandit,
				time: 1,
				};
				i++;
			}
			wave[i] = {
				obj: BanditSquare,
				time: 10,
				xx: centerX-16,
				yy: centerY
			};
			i++;
			repeat(4)
			{
				wave[i] = {
				obj: Hyena,
				time: 3,
				};
				i++;
			}
			wave[i] = {
				obj: BanditSquare,
				time: 10,
				xx: centerX+16,
				yy: centerY
			};
			i++;
			wave[i] = {
				obj: GoldHyena,
				time: 30,
			};
			i++;
			repeat(4)
			{
				wave[i] = {
				obj: Vulture,
				time: 5,
				};
				i++;
			}
			wave[i] = {
				obj: BanditSquare,
				time: 10,
				xx: centerX,
				yy: centerY+16
			};
			i++;
			wave[i] = {
				obj: BanditSquare,
				time: 10,
				xx: centerX,
				yy: centerY-16
			};
			i++;
			wave[i] = {
				obj: BigVulture,
				time: 90,
				xx: centerX,
				yy: centerY-16
			};
			i++;
			repeat(8)
			{
				wave[i] = {
				obj: Hyena,
				time: 4,
				};
				i++;
			}
			wave[i] = {
				obj: SavannaBandit,
				time: 50,
				xx: centerX,
				yy: centerY-16
			};
			i++;
			wave[i] = {
				obj: GoldHyena,
				time: 20,
			};
			i++;
			
		break;
		#endregion
		#region wave 12 Inverted sewers
		case 12:
			wave[i] = {
				obj: SurvivalArenaToxicTrapRight,
				time: 20,
				xx: centerX+160,
				yy: centerY
			};
			i++
			wave[i] = {
				obj: SurvivalArenaToxicTrapLeft,
				time: 30,
				xx: centerX-176,
				yy: centerY
			};
			i++
			repeat(20)
			{
				wave[i] = {
					obj: InvertedRat,
					time: 6
				};
				i++;
			}
			wave[i] = {
				obj: InvertedFastRat,
				time: 30
			};
			i++;
			wave[i] = {
				obj: InvertedRatking,
				time: 70
			};
			i++;
			wave[i] = {
					obj: InvertedExploder,
					time: 10,
				};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: InvertedGator,
					time: 10
				};
				i++;
			}
			wave[i] = {
				obj: InvertedRatking,
				time: 90
			};
			i++;
			wave[i] = {
				obj: InvertedBuffGator,
				time: 30
			};
			i++;
			wave[i] = {
				obj: AmmoChest,
				time: 90,
				xx: centerX,
				yy: centerY+32
			};
			i++;
			wave[i] = {
				obj: InvertedGator,
				time: 10
			};
			i++;
			repeat(4)
			{
				wave[i] = {
					obj: InvertedRatking,
					time: 10,
					xx: centerX,
					yy: centerY
				};
				i++;
			}
			wave[i] = {
				obj: SuperFrog,
				time: 120,
				xx: centerX,
				yy: centerY
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: BanditInverted,
					time: 15,
				};
				i++;
			}
			repeat(3)
			{
				wave[i] = {
					obj: Exploder,
					time: 15,
				};
				i++;
			}
			wave[i] = {
				obj: HealthChest,
				time: 180,
				xx: centerX,
				yy: centerY-32
			};
			i++;
			wave[i] = {
				obj: BallMom,
				time: 90,
				xx: centerX,
				yy: centerY
			};
			i++
			repeat(4)
			{
				wave[i] = {
					obj: ToxicBarrel,
					time: 2,
				};
				i++;
			}
			wave[i] = {
				obj: Wall,
				time: 1,
				xx: centerX+96,
				yy: centerY
			};
			i++
			wave[i] = {
				obj: Wall,
				time: 1,
				xx: centerX-96,
				yy: centerY
			};
			i++
			wave[i] = {
				obj: Wall,
				time: 1,
				xx: centerX+96,
				yy: centerY+64
			};
			i++
			wave[i] = {
				obj: Wall,
				time: 1,
				xx: centerX-96,
				yy: centerY+64
			};
			i++
			wave[i] = {
				obj: Wall,
				time: 1,
				xx: centerX+96,
				yy: centerY-64
			};
			i++
			wave[i] = {
				obj: Wall,
				time: 1,
				xx: centerX-96,
				yy: centerY-64
			};
			i++
			wave[i] = {
				obj: Wall,
				time: 1,
				xx: centerX,
				yy: centerY-96
			};
			i++
			wave[i] = {
				obj: Wall,
				time: 60,
				xx: centerX,
				yy: centerY+96
			};
			i++
			repeat(14)
			{
				wave[i] = {
					obj: InvertedRat,
					time: 2,
				};
				i++;
			}
			wave[i] = {
				obj: ToxicBarrel,
				time: 160,
				xx: centerX,
				yy: centerY
			};
			i++;
			wave[i] = {
					obj: InvertedSuperFrog,
					time: 200,
				};
			i++;
			repeat(4)
			{
				wave[i] = {
					obj: InvertedExploder,
					time: 2,
				};
				i++;
			}
			repeat(4)
			{
				wave[i] = {
					obj: ToxicBarrel,
					time: 2,
				};
				i++;
			}
			wave[i] = {
				obj: InvertedBuffGator,
				time: 60,
			};
			i++;
			wave[i] = {
				obj: InvertedGator,
				time: 200,
			};
			i++;
			wave[i] = {
				obj: InvertedBallMom,
				time: 120,
				xx: centerX,
				yy: centerY
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: ToxicBarrel,
					time: 2,
				};
				i++;
			}
			wave[i] = {
				obj: ToxicBarrel,
				time: 30,
			};
			i++;
			wave[i] = {
				obj: Wall,
				time: 1,
				xx: centerX+96,
				yy: centerY
			};
			i++
			wave[i] = {
				obj: Wall,
				time: 1,
				xx: centerX-96,
				yy: centerY
			};
			i++
			wave[i] = {
				obj: Wall,
				time: 1,
				xx: centerX,
				yy: centerY-96
			};
			i++
			wave[i] = {
				obj: Wall,
				time: 60,
				xx: centerX,
				yy: centerY+96
			};
			i++
			wave[i] = {
				obj: InvertedSuperFrog,
				time: 60,
				xx: centerX,
				yy: centerY
			};
			i++;
		break;
		#endregion
		#region next
		/*
		#region wave 13 Inverted scrapyard
		case 13:
		break;
		#endregion
				
		#region wave 14 YV mansion
		case 14:
		break;
		#endregion
				
		#region wave 15 Inverted labs
		case 15:
		break;
		#endregion
				
		#region wave 16 Inverted Frozen city
		case 16:
		break;
		#endregion
				
		#region wave 17 Jungle
		case 17:
		break;
		#endregion
				
		#region wave 18 Inverted caves
		case 18:
		break;
		#endregion
		
		#region wave 19 Oasis
		case 19:
		break;
		#endregion
				
		#region wave 20 Pizza sewers
		case 20:
		break;
		#endregion
				
		#region wave 21 Cursed caves
		case 21:
		break;
		#endregion
				
		#region wave 22 Inverted Vulcano
		case 22:
		break;
		#endregion
				
		#region wave 23 Banditland
		case 23:
		break;
		#endregion
		
		#region wave 24 Inverted wonderland
		case 24:
		break;
		#endregion
		*/
		#endregion
		#region loop
		default:
			//loops
			waveNumberOffset += waveNumber-1
			loops ++;
			Player.loops++;
			event_user(0);
			exit;
		break;
		#endregion
	}
}
#endregion
#region loop and song
with MusCont
{
	audio_stop_sound(song);
	song = other.song;
	snd_loop(song);
	audio_sound_gain(song, max(0, sqrt(UberCont.opt_musvol)), 0);
}
waveLength = array_length(wave);
for (var w = 0; w < waveLength; w++) {
	//Decrease duration between spawns each loops
	wave[w].time = clamp(wave[w].time/(1+(loops*0.4)),
	1,wave[w].time);
}
#endregion