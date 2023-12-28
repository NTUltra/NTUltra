/// @description Start wave
scrActivateAllOutOfRange();
event_user(3);
if scrIsGamemode(42)
{
	event_user(4);
	exit;
}
#region area manip
switch (waveNumber)
{
	case 1:
		if instance_exists(TopCont)
			TopCont.darkness = 0;
		if instance_exists(BackCont)
			BackCont.wind = true;
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
		if instance_exists(TopCont)
			TopCont.darkness = 0;
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
		if instance_exists(TopCont)
			TopCont.darkness = 0;
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
		if instance_exists(TopCont)
			TopCont.darkness = 0;
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
		if instance_exists(TopCont)
			TopCont.darkness = 0;
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
		if instance_exists(TopCont)
			TopCont.darkness = 0;
		song = mus7;
		with Floor
		{
			if styleb
				sprite_index = sprFloor9B;
			else
				sprite_index = sprFloor9;
		}
	break;
	case 10://inv desert
		scrApplyHandsInversion();
		if instance_exists(TopCont)
			TopCont.darkness = 0;
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
		if instance_exists(TopCont)
			TopCont.darkness = 0;
		song = mus105;
		with Floor
		{
			if styleb
				sprite_index = sprFloor10B;
			else
				sprite_index = sprFloor10;
		}
	break;
	case 12://Graveyard
		song = mus126;
		with Floor
		{
			if styleb
				sprite_index = sprFloor126B;
			else
				sprite_index = sprFloor126;
		}
	break;
	case 13://inv sewers
		song = musInvertedSewers;
		scrApplyHandsInversion();
		with Floor
		{
			if styleb
				sprite_index = sprFloor110B;
			else
				sprite_index = sprFloor110;
		}
	break;
	case 14://inv scrap
		scrApplyHandsInversion();
		if instance_exists(TopCont)
			TopCont.darkness = 0;
		song = mus3b;
		with Floor
		{
			if styleb
				sprite_index = sprFloor106B;
			else
				sprite_index = sprFloor106;
		}
	break;
	case 15://mansion
		snd_play_2d(sndVenuz);
		if instance_exists(TopCont)
			TopCont.darkness = 0;
		song = mus103;
		with Floor
		{
			if styleb
				sprite_index = sprFloor103B;
			else
				sprite_index = sprFloor103;
		}
	break;
	case 16://inv lab
		scrApplyHandsInversion();
		song = mus106b
		with Floor
		{
			if styleb
				sprite_index = sprFloor110B;
			else
				sprite_index = sprFloor110;
		}
	break;
	case 17://inv frozen
		scrApplyHandsInversion();
		if instance_exists(TopCont)
			TopCont.darkness = 0;
		song = mus101;
		Player.area = 107;
		with Floor
		{
			if styleb
				sprite_index = sprFloor107B;
			else
				sprite_index = sprFloor107;
		}
	break;
	case 18://jungle
		if instance_exists(TopCont)
			TopCont.darkness = 0;
		song = mus105;
		with Floor
		{
			if styleb
				sprite_index = sprFloor114B;
			else
				sprite_index = sprFloor114;
		}
	break;
	case 19://inv cave
		scrApplyHandsInversion();
		if instance_exists(TopCont)
			TopCont.darkness = 0;
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
	case 20://inv oasis
		scrApplyHandsInversion();
		song = mus101;
		with Floor
		{
			if styleb
				sprite_index = sprFloor101B;
			else
				sprite_index = sprFloor101;
		}
	break;
	case 21://pizza sewers
		song = mus102;
		with Floor
		{
			if styleb
				sprite_index = sprFloor102B;
			else
				sprite_index = sprFloor102;
		}
	break;
	case 22://cursed caves
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
	case 23://inv vulcano
		if instance_exists(TopCont)
			TopCont.darkness = 0;
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
	case 24://inv banditland
		if instance_exists(TopCont)
			TopCont.darkness = 0;
		song = musThemeP;
		with Floor
		{
			if styleb
				sprite_index = sprFloor0B;
			else
				sprite_index = sprFloor0;
		}
	break;
	case 25://inv wonderland
		if instance_exists(TopCont)
			TopCont.darkness = 0;
		song = mus5b;
		with Floor
		{
			if styleb
				sprite_index = sprFloor109B;
			else
				sprite_index = sprFloor109;
		}
	break;
	case 26://inv graveyard
		if instance_exists(TopCont)
			TopCont.darkness = 0;
		song = mus5b;
		with Floor
		{
			if styleb
				sprite_index = sprFloor127B;
			else
				sprite_index = sprFloor127;
		}
	break;
	case 27://Ìnverted Mansion
	snd_play_2d(sndVenuz);
		if instance_exists(TopCont)
			TopCont.darkness = 0;
		song = mus103;
		with Floor
		{
			if styleb
				sprite_index = sprFloor125B;
			else
				sprite_index = sprFloor125;
		}
	break;
	case 28://Courtyard
		if instance_exists(TopCont)
			TopCont.darkness = 0;
		song = mus128;
		with Floor
		{
			if styleb
				sprite_index = sprFloor128B;
			else
				sprite_index = sprFloor128;
		}
	break;
	case 29://Inv Palace
		if instance_exists(TopCont)
			TopCont.darkness = 0;
		song = mus7b;
		with Floor
		{
			if styleb
				sprite_index = sprFloor118B;
			else
				sprite_index = sprFloor118;
		}
	break;
	case 30://Inv Throne II
		if instance_exists(TopCont)
			TopCont.darkness = 0;
		song = musBoss4B;
		with Floor
		{
			if styleb
				sprite_index = sprFloor120;
			else
				sprite_index = sprFloor120;
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
				obj: GoldenSniper,
				time: 5
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
					time: 8
				};
				i++;
			}
			wave[i] = {
				obj: Cocoon,
				time: 10
			};
			i++;
			wave[i] = {
					obj: LaserCrystal,
					time: 120
				};
			i++;
			wave[i] = {
				obj: SquareBat,
				time: 15
			};
			i++;
			wave[i] = {
				obj: SquareBat,
				time: 15
			};
			i++;
			wave[i] = {
				obj: FireBat,
				time: 30
			};
			i++;
			wave[i] = {
				obj: SquareBat,
				time: 60
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: Spider,
					time: 8
				};
				i++;
			}
			wave[i] = {
				obj: LaserCrystal,
				time: 30,
				xx: centerX,
				yy: centerY
			};
			i++;
			wave[i] = {
				obj: Cocoon,
				time: 10
			};
			i++;
			wave[i] = {
				obj: LightningCrystal,
				time: 50,
				xx: centerX,
				yy: centerY
			};
			i++;
			wave[i] = {
				obj: LaserCrystal,
				time: 120
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: Spider,
					time: 15
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
				time: 20,
				xx: centerX,
				yy: centerY
			};
			i++;
			repeat(4)
			{
				wave[i] = {
					obj: Spider,
					time: 15
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
					time: 14
				};
				i++;
			}
			repeat(3)
			{
				wave[i] = {
					obj: LaserCrystal,
					time: 16
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
				time: 30,
				xx: centerX,
				yy: centerY+32
			};
			i++;
			repeat(4)
			{
				wave[i] = {
					obj: Spider,
					time: 6
				};
				i++;
			}
			wave[i] = {
				obj: GoldCrystal,
				time: 160
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: LaserCrystal,
					time: 22
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
					time: 7
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
				time: 140,
				xx: centerX-32,
				yy: centerY
			};
			i++;
			repeat(4)
			{
				wave[i] = {
					obj: GoldCrystal,
					time: 35
				};
				i++;
			}
			wave[i] = {
				obj: HealthChest,
				time: 140,
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
				time: 130,
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
				time: 40,
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
		#region wave 12 Graveyard
		case 12:
			var xxx = centerX - 128;
			for (var ix = 0; ix < 6; ix++) {
				var yyy = centerY - 128;
				for (var iy = 0; iy < 3; iy++) {
					wave[i] = {
						obj: WallBreak,
						time: 1,
						xx: xxx,
						yy: yyy,
					};
					wave[i] = {
						obj: GraveyardSkeleton,
						time: 1,
						xx: xxx,
						yy: yyy,
					};
					yyy += 32;
					i++
				}
				xxx -= 32;
			}
			wave[i] = {
				obj: GraveyardBreeder,
				time: 1,
				xx: xxx+32,
				yy: yyy-32,
			};
			i++;
			var xxx = centerX + 128;
			for (var ix = 0; ix < 6; ix++) {
				var yyy = centerY + 96;
				for (var iy = 0; iy < 3; iy++) {
					wave[i] = {
						obj: WallBreak,
						time: 1,
						xx: xxx,
						yy: yyy,
					};
					wave[i] = {
						obj: GraveyardSkeleton,
						time: 1,
						xx: xxx,
						yy: yyy,
					};
					yyy += 32;
					i++
				}
				xxx += 32;
			}
			wave[i] = {
				obj: GraveyardBreeder,
				time: 5,
				xx: xxx-32,
				yy: yyy-32,
			};
			i++;
			repeat(4)
			{
				wave[i] = {
					obj: GraveyardSniper,
					time: 5,
				};
				i++;
			}
			wave[i] = {
				obj: GraveyardBreeder,
				time: 90,
				xx: centerX,
				yy: centerY,
			};
			i++;
			var xxx = centerX + 128;
			for (var ix = 0; ix < 6; ix++) {
				var yyy = centerY + 96;
				for (var iy = 0; iy < 3; iy++) {
					wave[i] = {
						obj: GraveyardSkeleton,
						time: 2,
						xx: xxx,
						yy: yyy,
					};
					yyy += 32;
					i++
				}
				xxx += 32;
			}
			wave[i] = {
				obj: GraveyardBreeder,
				time: 30,
				xx: xxx-32,
				yy: yyy-32,
			};
			i++;
			var xxx = centerX - 128;
			for (var ix = 0; ix < 6; ix++) {
				var yyy = centerY - 128;
				for (var iy = 0; iy < 3; iy++) {
					wave[i] = {
						obj: GraveyardSkeleton,
						time: 2,
						xx: xxx,
						yy: yyy,
					};
					yyy += 32;
					i++
				}
				xxx -= 32;
			}
			wave[i] = {
				obj: GraveyardBreeder,
				time: 30,
				xx: xxx+32,
				yy: yyy-32,
			};
			i++;
			wave[i] = {
				obj: GraveyardBreeder,
				time: 90,
				xx: centerX,
				yy: centerY,
			};
			i++;
			var xxx = centerX + 128;
			for (var ix = 0; ix < 6; ix++) {
				var yyy = centerY + 96;
				for (var iy = 0; iy < 3; iy++) {
					wave[i] = {
						obj: GraveyardSniper,
						time: 2,
						xx: xxx,
						yy: yyy,
					};
					yyy += 32;
					i++
				}
				xxx += 32;
			}
			wave[i] = {
				obj: GraveyardBreeder,
				time: 30,
				xx: xxx-32,
				yy: yyy-32,
			};
			i++;
			var xxx = centerX - 128;
			for (var ix = 0; ix < 6; ix++) {
				var yyy = centerY - 128;
				for (var iy = 0; iy < 3; iy++) {
					wave[i] = {
						obj: GraveyardSniper,
						time: 2,
						xx: xxx,
						yy: yyy,
					};
					yyy += 32;
					i++
				}
				xxx -= 32;
			}
			wave[i] = {
				obj: GraveyardBreeder,
				time: 30,
				xx: xxx+32,
				yy: yyy-32,
			};
			i++;
			wave[i] = {
				obj: GraveyardBreeder,
				time: 90,
				xx: centerX,
				yy: centerY,
			};
			i++;
			var xxx = centerX + 128;
			for (var ix = 0; ix < 6; ix++) {
				var yyy = centerY + 96;
				for (var iy = 0; iy < 3; iy++) {
					wave[i] = {
						obj: GraveyardBreeder,
						time: 5,
						xx: xxx,
						yy: yyy,
					};
					yyy += 32;
					i++
				}
				xxx += 32;
			}
			var xxx = centerX - 128;
			for (var ix = 0; ix < 6; ix++) {
				var yyy = centerY - 128;
				for (var iy = 0; iy < 3; iy++) {
					wave[i] = {
						obj: GraveyardBreeder,
						time: 5,
						xx: xxx,
						yy: yyy,
					};
					yyy += 32;
					i++
				}
				xxx -= 32;
			}
			wave[i] = {
				obj: GraveyardSniper,
				time: 60,
				xx: centerX,
				yy: centerY,
			};
			i++;
			repeat(4)
			{
				wave[i] = {
					obj: GraveyardSniper,
					time: 5,
				};
				i++;
			}
			wave[i] = {
				obj: GraveyardBreeder,
				time: 90,
				xx: centerX,
				yy: centerY,
			};
			i++;
			repeat(4)
			{
				wave[i] = {
					obj: GraveyardBreeder,
					time: 5,
				};
				i++;
			}
			wave[i] = {
				obj: GraveyardBreeder,
				time: 90,
				xx: centerX,
				yy: centerY,
			};
			i++;
		break;
		#endregion
		#region wave 13 Inverted sewers
		case 13:
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
		#region wave 14 Inverted scrapyard
		case 14:
			var xxx = centerX - 128;
			for (var ix = 0; ix < 6; ix++) {
				var yyy = centerY + 96;
				for (var iy = 0; iy < 3; iy++) {
					wave[i] = {
						obj: WallBreak,
						time: 2,
						xx: xxx,
						yy: yyy,
					};
					wave[i] = {
						obj: InvertedRaven,
						time: 5,
						xx: xxx,
						yy: yyy,
					};
					yyy += 32;
					i++
				}
				xxx -= 32;
			}
			wave[i] = {
				obj: InvertedSniper,
				time: 10,
				xx: xxx+32,
				yy: yyy-32,
			};
			i++;
			var xxx = centerX + 128;
			for (var ix = 0; ix < 6; ix++) {
				var yyy = centerY - 128;
				for (var iy = 0; iy < 3; iy++) {
					wave[i] = {
						obj: WallBreak,
						time: 2,
						xx: xxx,
						yy: yyy,
					};
					wave[i] = {
						obj: InvertedRaven,
						time: 5,
						xx: xxx,
						yy: yyy,
					};
					yyy += 32;
					i++
				}
				xxx += 32;
			}
			wave[i] = {
				obj: InvertedSniper,
				time: 10,
				xx: xxx-32,
				yy: yyy-32,
			};
			i++;
			wave[i] = {
				obj: InvertedMeleeFake,
				time: 90,
				xx: centerX,
				yy: centerY,
			};
			i++;
			var xxx = centerX - 128;
			for (var ix = 0; ix < 6; ix++) {
				var yyy = centerY - 128;
				for (var iy = 0; iy < 3; iy++) {
					wave[i] = {
						obj: WallBreak,
						time: 2,
						xx: xxx,
						yy: yyy,
					};
					wave[i] = {
						obj: InvertedMeleeBandit,
						time: 5,
						xx: xxx,
						yy: yyy,
					};
					yyy += 32;
					i++
				}
				xxx -= 32;
			}
			wave[i] = {
				obj: InvertedSniper,
				time: 10,
				xx: xxx+32,
				yy: yyy-32,
			};
			i++;
			var xxx = centerX + 128;
			for (var ix = 0; ix < 6; ix++) {
				var yyy = centerY + 96;
				for (var iy = 0; iy < 3; iy++) {
					wave[i] = {
						obj: WallBreak,
						time: 2,
						xx: xxx,
						yy: yyy,
					};
					wave[i] = {
						obj: InvertedMeleeBandit,
						time: 5,
						xx: xxx,
						yy: yyy,
					};
					yyy += 32;
					i++
				}
				xxx += 32;
			}
			wave[i] = {
				obj: InvertedSniper,
				time: 10,
				xx: xxx-32,
				yy: yyy-32,
			};
			i++;
			wave[i] = {
				obj: InvertedSalamander,
				time: 90,
				xx: centerX,
				yy: centerY,
			};
			i++;
			repeat(4)
			{
				wave[i] = {
					obj: InvertedThief,
					time: 6,
				};
				i++;
			}
			wave[i] = {
				obj: InvertedScrapBoss,
				time: 90,
				xx: centerX,
				yy: centerY,
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: InvertedSalamander,
					time: 10,
				};
				i++;
			}
			wave[i] = {
				obj: InvertedSalamander,
				time: 60,
			};
			i++;
			
			repeat(4)
			{
				wave[i] = {
					obj: InvertedSniper,
					time: 10,
				};
				i++;
			}
			wave[i] = {
				obj: InvertedGoldenSniper,
				time: 50,
				xx: centerX + 256,
				yy: centerY + 192,
			};
			i++;
			wave[i] = {
				obj: InvertedSniper,
				time: 40,
				xx: centerX - 256,
				yy: centerY - 64,
			};
			i++;
			wave[i] = {
				obj: InvertedSniper,
				time: 40,
				xx: centerX + 256,
				yy: centerY - 64,
			};
			i++;
			wave[i] = {
				obj: InvertedGoldenSniper,
				time: 60,
				xx: centerX - 256,
				yy: centerY + 192,
			};
			i++;
			repeat(4)
			{
				wave[i] = {
					obj: InvertedMeleeFake,
					time: 10,
				};
				i++;
			}
			wave[i] = {
				obj: InvertedAssassinBoss,
				time: 90,
				xx: centerX,
				yy: centerY,
			};
			i++;
			var xxx = centerX - 128;
			for (var ix = 0; ix < 6; ix++) {
				var yyy = centerY + 96;
				for (var iy = 0; iy < 3; iy++) {
					wave[i] = {
						obj: WallBreak,
						time: 2,
						xx: xxx,
						yy: yyy,
					};
					wave[i] = {
						obj: InvertedRaven,
						time: 5,
						xx: xxx,
						yy: yyy,
					};
					yyy += 32;
					i++
				}
				xxx -= 32;
			}
			wave[i] = {
				obj: InvertedSniper,
				time: 10,
				xx: xxx+32,
				yy: yyy-32,
			};
			i++;
			var xxx = centerX + 128;
			for (var ix = 0; ix < 6; ix++) {
				var yyy = centerY - 128;
				for (var iy = 0; iy < 3; iy++) {
					wave[i] = {
						obj: WallBreak,
						time: 2,
						xx: xxx,
						yy: yyy,
					};
					wave[i] = {
						obj: InvertedRaven,
						time: 5,
						xx: xxx,
						yy: yyy,
					};
					yyy += 32;
					i++
				}
				xxx += 32;
			}
			wave[i] = {
				obj: InvertedSniper,
				time: 10,
				xx: xxx-32,
				yy: yyy-32,
			};
			i++;
			wave[i] = {
				obj: InvertedMeleeFake,
				time: 90,
				xx: centerX,
				yy: centerY,
			};
			i++;
			var xxx = centerX - 128;
			for (var ix = 0; ix < 6; ix++) {
				var yyy = centerY - 128;
				for (var iy = 0; iy < 3; iy++) {
					wave[i] = {
						obj: WallBreak,
						time: 2,
						xx: xxx,
						yy: yyy,
					};
					wave[i] = {
						obj: InvertedMeleeBandit,
						time: 5,
						xx: xxx,
						yy: yyy,
					};
					yyy += 32;
					i++
				}
				xxx -= 32;
			}
			wave[i] = {
				obj: InvertedSniper,
				time: 10,
				xx: xxx+32,
				yy: yyy-32,
			};
			i++;
			var xxx = centerX + 128;
			for (var ix = 0; ix < 6; ix++) {
				var yyy = centerY + 96;
				for (var iy = 0; iy < 3; iy++) {
					wave[i] = {
						obj: WallBreak,
						time: 2,
						xx: xxx,
						yy: yyy,
					};
					wave[i] = {
						obj: InvertedMeleeBandit,
						time: 5,
						xx: xxx,
						yy: yyy,
					};
					yyy += 32;
					i++
				}
				xxx += 32;
			}
			wave[i] = {
				obj: InvertedSniper,
				time: 10,
				xx: xxx-32,
				yy: yyy-32,
			};
			i++;
			wave[i] = {
				obj: InvertedSalamander,
				time: 90,
				xx: centerX,
				yy: centerY,
			};
			i++;
		break;
		#endregion
		
		#region wave 15 YV mansion
		case 15:
			wave[i] = {
				obj: YVStatue,
				time: 1,
				xx: centerX,
				yy: centerY-64
			};
			i++;
			repeat(4)
			{
				wave[i] = {
				obj: Molesarge,
				time: 2,
				};
				i++;
			}
			var width = 400;
			for(var xxx = 128; xxx < width; xxx += 16)
			{
				wave[i] = {
					obj: SmallWallBreak,
					time: 1,
					xx: centerX+xxx,
					yy: centerY,
				};
				i++;
				wave[i] = {
					obj: Molefish,
					time: 1,
					xx: centerX+xxx,
					yy: centerY,
				};
				i++;
			}
			wave[i] = {
				obj: BigWallBreak,
				time: 20,
				xx: centerX + width + 32,
				yy: centerY,
			};
			i++;
			for(var xxx = -128; xxx > -width; xxx -= 16)
			{
				wave[i] = {
					obj: SmallWallBreak,
					time: 1,
					xx: centerX+xxx,
					yy: centerY,
				};
				i++;
				wave[i] = {
					obj: Molefish,
					time: 1,
					xx: centerX+xxx,
					yy: centerY,
				};
				i++;
			}
			wave[i] = {
				obj: BigWallBreak,
				time: 10,
				xx: centerX - width - 32,
				yy: centerY,
			};
			i++;
			wave[i] = {
				obj: Jock,
				time: 2,
				xx: centerX - width - 32,
				yy: centerY,
			};
			i++;
			wave[i] = {
				obj: Jock,
				time: 2,
				xx: centerX + width + 32,
				yy: centerY,
			};
			i++;
			repeat(4)
			{
				wave[i] = {
				obj: Molesarge,
				time: 2,
				};
				i++;
			}
			repeat(8)
			{
				wave[i] = {
				obj: Molefish,
				time: 2,
				};
				i++;
			}
			repeat(3)
			{
				wave[i] = {
					obj: Molefish,
					time: 2,
					xx: centerX - width - 32,
					yy: centerY,
				};
				i++;
			}
			repeat(3)
			{
				wave[i] = {
					obj: Molefish,
					time: 2,
					xx: centerX + width + 32,
					yy: centerY,
				};
				i++;
			}
			wave[i] = {
				obj: Jock,
				time: 60,
				xx: centerX,
				yy: centerY,
			};
			i++;
			wave[i] = {
				obj: GiantGoldenWeaponChest,
				time: 120,
				xx: centerX,
				yy: centerY+64,
			};
			i++;
			wave[i] = {
				obj: BigDisc,
				time: 60,
				xx: centerX,
				yy: centerY,
			};
			i++;
			repeat(4)
			{
				wave[i] = {
				obj: Molesarge,
				time: 2,
				};
				i++;
			}
			repeat(8)
			{
				wave[i] = {
				obj: Molefish,
				time: 2,
				};
				i++;
			}
			wave[i] = {
				obj: Jock,
				time: 20,
				xx: centerX,
				yy: centerY,
			};
			i++;
			for(var xxx = 128; xxx < width; xxx += 16)
			{
				wave[i] = {
					obj: Molesarge,
					time: 1,
					xx: centerX+xxx,
					yy: centerY,
				};
				i++;
			}
			wave[i] = {
				obj: UltraSniper,
				time: 20,
				xx: centerX + width + 32,
				yy: centerY,
			};
			i++;
			for(var xxx = -128; xxx > -width; xxx -= 16)
			{
				wave[i] = {
					obj: Molesarge,
					time: 1,
					xx: centerX+xxx,
					yy: centerY,
				};
				i++;
			}
			wave[i] = {
				obj: UltraSniper,
				time: 20,
				xx: centerX - width - 32,
				yy: centerY,
			};
			i++;
		break;
		#endregion
		
		#region wave 16 Inverted labs
		case 16:
		repeat(4)
		{
		wave[i] = {
				obj: InvertedRhinoFreak,
				time: 2,
			};
		i++;
		}
		var width = 415;
		var wround = 416;
		for(var xxx = 128; xxx < width; xxx += 32)
		{
			wave[i] = {
				obj: WallReplaceFloorInvLabs,
				time: 1,
				xx: centerX+xxx,
				yy: centerY,
				canSpawnInWall: true,
			};
			i++;
		}
		var xxx = wround;
		for(var yyy = 0; yyy <= width+32; yyy += 32)
		{
			wave[i] = {
				obj: WallReplaceFloorInvLabs,
				time: 1,
				xx: centerX+xxx,
				yy: centerY+yyy,
				canSpawnInWall: true,
			};
			i++;
		}
		wave[i] = {
				obj: UltraSniper,
				time: 1,
				xx: centerX+width+8,
				yy: centerY+width+8,
				canSpawnInWall: true,
			};
			i++;
		wave[i] = {
				obj: InvertedGoldNecromancer,
				time: 1,
				xx: centerX+width+8,
				yy: centerY+width+8,
				canSpawnInWall: true,
			};
			i++;
		wave[i] = {
			obj: InvertedTurret,
			time: 10,
			xx: centerX+width*0.5+8,
			yy: centerY+width+8,
			canSpawnInWall: true,
		};
		i++;
		wave[i] = {
			obj: InvertedTurret,
			time: 10,
			xx: centerX+width*0.5+8,
			yy: centerY+8,
			canSpawnInWall: true,
		};
		i++;
		var yyy = wround;
		for(var xxx = 0; xxx <= width; xxx += 32)
		{
			wave[i] = {
				obj: WallReplaceFloorInvLabs,
				time: 1,
				xx: centerX+xxx,
				yy: centerY+yyy,
				canSpawnInWall: true,
			};
			i++;
		}
		for(var yyy = 128; yyy < width; yyy += 32)
		{
			wave[i] = {
				obj: WallReplaceFloorInvLabs,
				time: 1,
				xx: centerX,
				yy: centerY+yyy,
				canSpawnInWall: true,
			};
			i++;
		}
		for(var xxx = 128; xxx < width; xxx += 32)
		{
			wave[i] = {
				obj: InvertedFreak,
				time: 1,
				xx: centerX+xxx+16,
				yy: centerY+16,
				canSpawnInWall: true,
			};
			i++;
		}
		var xxx = wround;
		for(var yyy = 0; yyy <= width; yyy += 32)
		{
			wave[i] = {
				obj: InvertedFreak,
				time: 1,
				xx: centerX+xxx+16,
				yy: centerY+yyy+16,
				canSpawnInWall: true,
			};
			i++;
		}
		var yyy = wround;
		for(var xxx = 0; xxx <= width; xxx += 32)
		{
			wave[i] = {
				obj: InvertedFreak,
				time: 1,
				xx: centerX+xxx+16,
				yy: centerY+yyy+16,
				canSpawnInWall: true,
			};
			i++;
		}
		for(var yyy = 128; yyy <= width; yyy += 32)
		{
			wave[i] = {
				obj: InvertedFreak,
				time: 1,
				xx: centerX+16,
				yy: centerY+yyy+16,
				canSpawnInWall: true,
			};
			i++;
		}
		///////
		for(var xxx = 128; xxx < width; xxx += 32)
		{
			wave[i] = {
				obj: WallReplaceFloorInvLabs,
				time: 1,
				xx: centerX-xxx,
				yy: centerY,
				canSpawnInWall: true,
			};
			i++;
		}
		var xxx = wround;
		for(var yyy = 0; yyy <= width+32; yyy += 32)
		{
			wave[i] = {
				obj: WallReplaceFloorInvLabs,
				time: 1,
				xx: centerX-xxx,
				yy: centerY-yyy,
				canSpawnInWall: true,
			};
			i++;
		}
		wave[i] = {
				obj: UltraSniper,
				time: 1,
				xx: centerX-width+8,
				yy: centerY-width+8,
				canSpawnInWall: true,
			};
			i++;
		wave[i] = {
				obj: InvertedGoldNecromancer,
				time: 1,
				xx: centerX-width+8,
				yy: centerY-width+8,
				canSpawnInWall: true,
			};
			i++;
		wave[i] = {
			obj: InvertedTurret,
			time: 10,
			xx: centerX-width*0.5+8,
			yy: centerY-width+8,
			canSpawnInWall: true,
		};
		i++;
		wave[i] = {
			obj: InvertedTurret,
			time: 10,
			xx: centerX-width*0.5+8,
			yy: centerY+8,
			canSpawnInWall: true,
		};
		i++;
		var yyy = wround;
		for(var xxx = 0; xxx <= width; xxx += 32)
		{
			wave[i] = {
				obj: WallReplaceFloorInvLabs,
				time: 1,
				xx: centerX-xxx,
				yy: centerY-yyy,
				canSpawnInWall: true,
			};
			i++;
		}
		for(var yyy = 128; yyy < width; yyy += 32)
		{
			wave[i] = {
				obj: WallReplaceFloorInvLabs,
				time: 1,
				xx: centerX,
				yy: centerY-yyy,
				canSpawnInWall: true,
			};
			i++;
		}
		for(var xxx = 128; xxx < width; xxx += 32)
		{
			wave[i] = {
				obj: InvertedFreak,
				time: 1,
				xx: centerX-xxx+16,
				yy: centerY+16,
				canSpawnInWall: true,
			};
			i++;
		}
		var xxx = wround;
		for(var yyy = 0; yyy <= width; yyy += 32)
		{
			wave[i] = {
				obj: InvertedFreak,
				time: 1,
				xx: centerX-xxx+16,
				yy: centerY-yyy+16,
				canSpawnInWall: true,
			};
			i++;
		}
		var yyy = wround;
		for(var xxx = 0; xxx <= width; xxx += 32)
		{
			wave[i] = {
				obj: InvertedFreak,
				time: 1,
				xx: centerX-xxx+16,
				yy: centerY-yyy+16,
				canSpawnInWall: true,
			};
			i++;
		}
		for(var yyy = 128; yyy <= width; yyy += 32)
		{
			wave[i] = {
				obj: InvertedFreak,
				time: 1,
				xx: centerX+16,
				yy: centerY-yyy+16,
				canSpawnInWall: true,
			};
			i++;
		}
		repeat(4)
		{
			wave[i] = {
					obj: InvertedNecromancer,
					time: 30,
				};
			i++;
		}
		wave[i] = {
			obj: InvertedRhinoFreak,
			time: 120,
			xx: centerX,
			yy: centerY,
			canSpawnInWall: true,
		};
		i++;
		var technoroomwidth = 192;
		for(var xxx = 0; xxx < technoroomwidth; xxx += 32)
		{
			for(var yyy = 0; yyy < technoroomwidth; yyy += 32)
			{
				wave[i] = {
					obj: WallReplaceFloorInvLabs,
					time: 1,
					xx: centerX-width + xxx,
					yy: centerY-width + yyy,
					canSpawnInWall: true,
				};
				i++;
			}
		}
		wave[i] = {
			obj: InvertedTechnomancer,
			time: 90,
			xx: centerX-width + 80,
			yy: centerY-width + 80,
			canSpawnInWall: true,
		};
		i++;
		var technoroomwidth = 192;
		for(var xxx = 0; xxx < technoroomwidth; xxx += 32)
		{
			for(var yyy = 0; yyy < technoroomwidth; yyy += 32)
			{
				wave[i] = {
					obj: WallReplaceFloorInvLabs,
					time: 1,
					xx: centerX+width - xxx,
					yy: centerY+width - yyy,
					canSpawnInWall: true,
				};
				i++;
			}
		}
		wave[i] = {
			obj: InvertedTechnomancer,
			time: 90,
			xx: centerX+width - 80,
			yy: centerY+width - 80,
			canSpawnInWall: true,
		};
		i++;
		wave[i] = {
			obj: InvertedTechnomancer,
			time: 60,
			xx: centerX,
			yy: centerY,
			canSpawnInWall: true,
		};
		i++;
		repeat(8)
		{
			wave[i] = {
					obj: InvertedFreak,
					time: 30,
				};
			i++;
		}
		break;
		#endregion
				
		#region wave 17 Inverted Frozen city
		case 17:
		repeat(8)
		{
			wave[i] = {
				obj: InvertedDiscGuy,
				time: 2,
			};
			i++;
		}
		wave[i] = {
			obj: InvertedGoldSnowTank,
			time: 60,
			xx: centerX,
			yy: centerY,
		};
		i++;
		var width = 384;
		var height = 128
		for(var xxx = 128; xxx < width; xxx += 32)
		{
			wave[i] = {
				obj: WallReplaceFloorInvFrozenCity,
				time: 1,
				xx: centerX+xxx,
				yy: centerY-height,
				canSpawnInWall: true,
			};
			i++;
		}
		for(var xxx = 128; xxx < width; xxx += 32)
		{
			wave[i] = {
				obj: WallReplaceFloorInvFrozenCity,
				time: 1,
				xx: centerX+xxx,
				yy: centerY+height,
				canSpawnInWall: true,
			};
			i++;
		}
		for(var xxx = 128; xxx < width; xxx += 32)
		{
			wave[i] = {
				obj: WallReplaceFloorInvFrozenCity,
				time: 1,
				xx: centerX-xxx,
				yy: centerY-height,
				canSpawnInWall: true,
			};
			i++;
		}
		for(var xxx = 128; xxx < width; xxx += 32)
		{
			wave[i] = {
				obj: WallReplaceFloorInvFrozenCity,
				time: 1,
				xx: centerX-xxx,
				yy: centerY+height,
				canSpawnInWall: true,
			};
			i++;
		}
		for(var yyy = -height; yyy <= height; yyy += 32)
		{
			wave[i] = {
				obj: WallReplaceFloorInvFrozenCity,
				time: 1,
				xx: centerX+width,
				yy: centerY+yyy,
				canSpawnInWall: true,
			};
			i++;
			wave[i] = {
				obj: WallReplaceFloorInvFrozenCity,
				time: 1,
				xx: centerX+width+32,
				yy: centerY+yyy,
				canSpawnInWall: true,
			};
			i++;
			wave[i] = {
				obj: WallReplaceFloorInvFrozenCity,
				time: 1,
				xx: centerX+width+64,
				yy: centerY+yyy,
				canSpawnInWall: true,
			};
			i++;
			wave[i] = {
				obj: InvertedSnowBot,
				time: 1,
				xx: centerX+width+48,
				yy: centerY+yyy+16,
				canSpawnInWall: true,
			};
			i++;
		}
		for(var yyy = -height; yyy <= height; yyy += 32)
		{
			wave[i] = {
				obj: WallReplaceFloorInvFrozenCity,
				time: 1,
				xx: centerX-width,
				yy: centerY+yyy,
				canSpawnInWall: true,
			};
			i++;
			wave[i] = {
				obj: WallReplaceFloorInvFrozenCity,
				time: 1,
				xx: centerX-width-32,
				yy: centerY+yyy,
				canSpawnInWall: true,
			};
			i++;
			wave[i] = {
				obj: WallReplaceFloorInvFrozenCity,
				time: 1,
				xx: centerX-width-64,
				yy: centerY+yyy,
				canSpawnInWall: true,
			};
			i++;
			wave[i] = {
				obj: InvertedWolf,
				time: 1,
				xx: centerX-width-48,
				yy: centerY+yyy+16,
				canSpawnInWall: true,
			};
			i++;
		}
		repeat(4)
		{
			wave[i] = {
				obj: InvertedSnowTank,
				time: 10,
			};
			i++;
		}
		wave[i] = {
			obj: AmmoChest,
			time: 10,
			xx: centerX,
			yy: centerY,
		};
		i++;
		wave[i] = {
			obj: InvertedDiscGuy,
			time: 90,
			xx: centerX,
			yy: centerY,
		};
		i++;
		wave[i] = {
			obj: InvertedBigDisc,
			time: 60,
			xx: centerX + width + 48,
			yy: centerY,
		};
		i++;
		wave[i] = {
			obj: InvertedBigDisc,
			time: 60,
			xx: centerX - width - 48,
			yy: centerY,
		};
		i++;
		wave[i] = {
			obj: InvertedBigDisc,
			time: 120,
			xx: centerX,
			yy: centerY,
		};
		i++;
		repeat(4)
		{
			wave[i] = {
				obj: InvertedSnowBot,
				time: 10,
			};
			i++;
		}
		wave[i] = {
			obj: InvertedWolf,
			time: 60,
			xx: centerX,
			yy: centerY,
		};
		i++;
		var yyy = -height+16;
		repeat(8)
		{
			wave[i] = {
				obj: InvertedDiscGuy,
				time: 5,
				xx: centerX - width - 48,
				yy: centerY + yyy,
			};
			i++;
			yyy += 16;
		}
		var yyy = -height+16;
		repeat(8)
		{
			wave[i] = {
				obj: InvertedDiscGuy,
				time: 5,
				xx: centerX + width + 48,
				yy: centerY + yyy,
			};
			i++;
			yyy += 16;
		}
		repeat(4)
		{
			wave[i] = {
				obj: InvertedDiscGuy,
				time: 10,
			};
			i++;
		}
		wave[i] = {
			obj: InvertedGoldSnowTank,
			time: 60,
			xx: centerX,
			yy: centerY,
		};
		i++;
		break;
		#endregion
		
		#region wave 18 Jungle
		case 18:
			repeat(7)
			{
				wave[i] = {
					obj: JungleAssassinFake,
					time: 5,
				};
				i++;
			}
			wave[i] = {
				obj: JungleAssassinFake,
				time: 120,
			};
			i++;
			repeat(8)
			{
				wave[i] = {
					obj: JungleBandit,
					time: 5,
				};
				i++;
			}
			wave[i] = {
				obj: JungleGorilla,
				time: 120,
				xx: centerX,
				yy: centerY,
			};
			i++;
			repeat(4)
			{
				wave[i] = {
					obj: JungleFly,
					time: 15,
				};
				i++;
			}
			wave[i] = {
				obj: MaggotSpawn,
				time: 90,
				xx: centerX,
				yy: centerY,
			};
			i++;
			wave[i] = {
				obj: AmmoChest,
				time: 5,
				xx: centerX,
				yy: centerY,
			};
			i++;
			wave[i] = {
				obj: JungleBoss,
				time: 120,
				xx: centerX + 128,
				yy: centerY,
			};
			i++;
			repeat(4)
			{
				wave[i] = {
					obj: Bush,
					time: 1,
				};
				i++;
			}
			wave[i] = {
				obj: JungleFly,
				time: 120,
				xx: centerX - 64,
				yy: centerY,
			};
			i++;
			wave[i] = {
				obj: JungleGorilla,
				time: 240,
				xx: centerX + 64,
				yy: centerY,
			};
			i++;
			repeat(4)
			{
				wave[i] = {
					obj: JungleGorilla,
					time: 20,
				};
				i++;
			}
			wave[i] = {
				obj: Bush,
				time: 5,
				xx: centerX + 64,
				yy: centerY,
			};
			i++;
			wave[i] = {
				obj: Bush,
				time: 5,
				xx: centerX - 64,
				yy: centerY,
			};
			i++;
			wave[i] = {
				obj: Bush,
				time: 5,
				xx: centerX,
				yy: centerY + 64,
			};
			i++;
			wave[i] = {
				obj: Bush,
				time: 5,
				xx: centerX,
				yy: centerY - 64,
			};
			i++;
			repeat(4)
			{
				wave[i] = {
					obj: JungleFly,
					time: 20,
				};
				i++;
			}
		break;
		#endregion
		
		#region wave 19 Inverted caves
		case 19:
		repeat(4)
		{
			wave[i] = {
				obj: InvertedSpider,
				time: 5,
			};
			i++;
		}
		var xxx = 128;
		repeat(32)
		{
			wave[i] = {
				obj: WallReplaceFloorInvCave,
				time: 2,
				xx: centerX + xxx,
				yy: centerY,
				canSpawnInWall: true,
			};
			xxx += 32;
			i++;
		}
		repeat(4)
		{
			wave[i] = {
				obj: LaserCrystal,
				time: 10,
			};
			i++;
		}
		repeat(12)
		{
			wave[i] = {
				obj: InvertedSpider,
				time: 1,
				xx: centerX + xxx - 16,
				yy: centerY + 16,
				canSpawnInWall: true,
			};
			xxx -= 64;
			i++;
		}
		repeat(4)
		{
			wave[i] = {
				obj: InvertedFireBat,
				time: 10,
				xx: centerX + xxx - 16,
				yy: centerY + 16,
				canSpawnInWall: true,
			};
			xxx -= 64;
			i++;
		}
		xxx -= 32;
		repeat(8)
		{
			wave[i] = {
				obj: InvertedSquareBat,
				time: 20,
				xx: centerX + xxx - 16,
				yy: centerY + 16,
				canSpawnInWall: true,
			};
			xxx += 64;
			i++;
		}
		repeat(8)
		{
			wave[i] = {
				obj: LightningCrystal,
				time: 30,
				xx: centerX + xxx - 16,
				yy: centerY + 16,
				canSpawnInWall: true,
			};
			xxx += 64;
			i++;
		}
		wave[i] = {
			obj: InvertedHyperCrystal,
			time: 60,
			xx: centerX + xxx - 16,
			yy: centerY,
		};
		i++;
		wave[i] = {
			obj: InvertedBigBadBat,
			time: 240,
			xx: centerX,
			yy: centerY,
		};
		i++;
		repeat(4)
		{
			wave[i] = {
				obj: InvertedGoldCrystal,
				time: 10,
			};
			i++;
		}
		break;
		#endregion
		
		#region wave 20 Oasis & Inverted Oasis
		case 20:
			//Big fish and Ballmom
			wave[i] = {
				obj: BigFish,
				time: 10,
				xx: centerX,
				yy: centerY-64,
			};
			i++;
			repeat(15)
			{
				wave[i] = {
					obj: BoneFish,
					time: 4,
				};
				i++;
			}
			wave[i] = {
				obj: BoneFish,
				time: 90,
			};
			i++;
			repeat(8)
			{
				wave[i] = {
					obj: Crab,
					time: 4,
				};
				i++;
			}
			wave[i] = {
				obj: WallReplaceFloorMask,
				time: 10,
				xx: centerX,
				yy: centerY,
				canSpawnInWall: true,
			};
			i++;
			wave[i] = {
				obj: AmmoChest,
				time: 10,
				xx: centerX,
				yy: centerY,
			};
			i++;
			wave[i] = {
				obj: BoneFishAdder,
				time: 120,
				xx: centerX,
				yy: centerY,
				canSpawnInWall: true,
			};
			i++;
			repeat(15)
			{
				wave[i] = {
					obj: ScubaBandit,
					time: 4,
				};
				i++;
			}
			wave[i] = {
				obj: ScubaBandit,
				time: 120,
			};
			i++;
			wave[i] = {
				obj: BallMom,
				time: 60,
				xx: centerX,
				yy: centerY,
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: Exploder,
					time: 4,
				};
				i++;
			}
			wave[i] = {
				obj: Exploder,
				time: 220,
			};
			i++;
			wave[i] = {
				obj: BoneFishAdder,
				time: 240,
				xx: centerX - 16,
				yy: centerY - 16,
				canSpawnInWall: true,
			};
			i++;
			wave[i] = {
				obj: HealthChest,
				time: 60,
				xx: centerX,
				yy: centerY,
			};
			i++;
			wave[i] = {
				obj: ReplaceFloorWithInvOasis,
				time: 15,
				xx: centerX,
				yy: centerY,
			};
			i++;
			repeat(4)
			{
				wave[i] = {
					obj: InvertedCrab,
					time: 10,
				};
				i++;
			}
			wave[i] = {
				obj: InvertedBigFish,
				time: 120,
				xx: centerX,
				yy: centerY+64,
			};
			i++;
			wave[i] = {
				obj: InvertedScubaAdder,
				time: 120,
				xx: centerX,
				yy: centerY,
				canSpawnInWall: true,
			};
			i++;
			repeat(9)
			{
				wave[i] = {
					obj: InvertedBoneFish,
					time: 4,
				};
				i++;
			}
			wave[i] = {
				obj: InvertedBoneFish,
				time: 200,
			};
			i++;
			repeat(8)
			{
				wave[i] = {
					obj: InvertedCrab,
					time: 4,
				};
				i++;
			}
		break;
		#endregion
		/*
		#region wave 21 Pizza sewers
		//Probably add technomancer here maybe
		case 21:
		break;
		#endregion
				
		#region wave 22 Cursed caves
		case 22:
		break;
		#endregion
				
		#region wave 23 Inverted Vulcano
		case 23:
		break;
		#endregion
				
		#region wave 24 Banditland
		case 24:
		break;
		#endregion
		
		#region wave 25 Inverted wonderland
		case 25:
		break;
		#endregion
		
		#region wave 26 Inverted Graveyard
		case 26:
		break;
		
		#region wave 27 Inverted Mansion
		case 27:
		break;
		
		#region wave 28 Courtyard
		//Crown Glutton, Inverted Crown Glutton
		case 28:
		break;
		#endregion
		#region wave 29 Inverted Palace
		case 29:
		break;
		#endregion
		*/
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
	audio_sound_gain(song, max(0, UberCont.opt_musvol), 0);
}
waveLength = array_length(wave);
for (var w = 0; w < waveLength; w++) {
	//Decrease duration between spawns each loops
	wave[w].time = clamp(wave[w].time/(1+(loops*0.4)),
	1,wave[w].time);
}
#endregion