/// @description Start wave not survival gamemode
if instance_exists(SurvivalArenaStarter)
{
	centerX = SurvivalArenaStarter.x;
	centerY = SurvivalArenaStarter.y;
	x = centerX;
	y = centerY;
}
with prop
{
	if point_distance(x,y,other.x,other.y) < 400
	{
		instance_destroy(id,false);
		instance_create(x,y,SurvivalPortal);
	}
}
if UberCont.crownVaultChallenge > 2
{
	snd_play(sndUltraGrenadeSuck);
	alarm[1] = 1;
	exit;
}
snd_play_2d(sndCrownCurses);
song = musReflection;
with MusCont
{
	audio_stop_sound(song);
	song = other.song;
	snd_loop(song);
	audio_sound_gain(song, max(0, sqrt(UberCont.opt_musvol)), 0);
}
with Player
{
	area = 5;	
}
with Floor
{
	if styleb
	{
		sprite_index = sprFloor5B	
	}
	else
	{
		sprite_index = sprFloor5;	
	}
}
if instance_exists(TopCont)
	TopCont.darkness = 0;

var i = 0;
switch (UberCont.crownVaultChallenge)
{
	#region challenge 1
	case 0:
		repeat(4)
		{
			wave[i] = {
				obj: Bandit,
				time: 1,
			};
			i++;
		};
		repeat(4)
		{
			wave[i] = {
				obj: BanditSquare,
				time: 2,
			};
			i++;
		};
		repeat(4)
		{
			wave[i] = {
				obj: Bandit,
				time: 4,
			};
			i++;
		};
		repeat(4)
		{
			wave[i] = {
				obj: LaserBandit,
				time: 8,
			};
			i++;
		};
		repeat(4)
		{
			wave[i] = {
				obj: EraserBandit,
				time: 7,
			};
			i++;
		};
		wave[i] = {
			obj: BanditBoss,
			time: 200,
			xx: centerX,
			yy: centerY
		};
		i++;
		repeat(4)
		{
			wave[i] = {
				obj: Scorpion,
				time: 10,
			};
			i++;
		}
		wave[i] = {
			obj: GoldScorpion,
			time: 110,
			xx: centerX,
			yy: centerY
		};
		i++;
		repeat(4)
		{
			wave[i] = {
				obj: GoldScorpion,
				time: 15,
			};
			i++;
		};
		wave[i] = {
			obj: GoldSnowTank,
			time: 180,
			xx: centerX,
			yy: centerY
		};
		i++;
		repeat(4)
		{
			wave[i] = {
				obj: Turtle,
				time: 4,
			};
			i++;
		};
		wave[i] = {
			obj: Rat,
			time: 180,
			xx: centerX,
			yy: centerY
		};
		i++;
		
		repeat(4)
		{
			wave[i] = {
				obj: MeleeBandit,
				time: 2,
			};
			i++;
		};
		wave[i] = {
			obj: Raven,
			time: 60,
		};
		i++;
		repeat(4)
		{
			wave[i] = {
				obj: Sniper,
				time: 6,
			};
			i++;
		};
		wave[i] = {
			obj: AmmoChest,
			time: 20,
			xx: centerX,
			yy: centerY-32
		};
		i++;
		wave[i] = {
			obj: ScrapBoss,
			time: 70,
			xx: centerX,
			yy: centerY
		};
		i++;
		repeat(4)
		{
			wave[i] = {
				obj: Raven,
				time: 7,
			};
			i++;
		};
		repeat(4)
		{
			wave[i] = {
				obj: Sniper,
				time: 8,
			};
			i++;
		};
		wave[i] = {
				obj: Raven,
				time: 160,
			};
			i++;
		wave[i] = {
			obj: HealthChest,
			time: 40,
			xx: centerX,
			yy: centerY+32
		};
		i++;
		repeat(8)
		{
			wave[i] = {
				obj: Freak,
				time: 2,
			};
			i++;
		};
		repeat(4)
		{
			wave[i] = {
				obj: RhinoFreak,
				time: 2,
			};
			i++;
		};
		repeat(2)
		{
			wave[i] = {
				obj: ExploFreak,
				time: 2,
			};
			i++;
		};
		repeat(2)
		{
			wave[i] = {
				obj: Necromancer,
				time: 2,
			};
			i++;
		};
		wave[i] = {
			obj: Technomancer,
			time: 90,
			xx: centerX,
			yy: centerY
		};
		i++;
		repeat(3)
		{
			wave[i] = {
				obj: Freak,
				time: 8,
			};
			i++;
		};
		wave[i] = {
			obj: Freak,
			time: 180,
		};
		i++;
		wave[i] = {
			obj: VanSpawn,
			time: 30,
			xx: centerX-128,
			yy: centerY-64
		};
		i++;
		wave[i] = {
			obj: VanSpawn,
			time: 30,
			xx: centerX+128,
			yy: centerY+64
		};
		i++;
		wave[i] = {
			obj: LilHunter,
			time: 300,
			xx: centerX,
			yy: centerY
		};
		
	break;
	#endregion
	#region challenge 2
	case 1:
		
		repeat(4)
		{
			wave[i] = {
				obj: Bandit,
				time: 2,
			};
			i++;
		};
		repeat(4)
		{
			wave[i] = {
				obj: SquareBat,
				time: 2,
			};
			i++;
		};
		wave[i] = {
			obj: SquareBat,
			time: 30,
		};
		i++;
		wave[i] = {
			obj: BigBadBat,
			time: 390,
		};
		i++;
		repeat(4)
		{
			wave[i] = {
				obj: Bandit,
				time: 24,
			};
			i++;
		};
		repeat(4)
		{
			wave[i] = {
				obj: Freak,
				time: 22,
			};
			i++;
		};
		repeat(4)
		{
			wave[i] = {
				obj: RhinoFreak,
				time: 40,
			};
			i++;
		};
		
		repeat(3)
		{
			wave[i] = {
				obj: Freak,
				time: 2,
			};
			i++;
		};
		wave[i] = {
			obj: SnowTank,
			time: 140,
		};
		i++;
		
		wave[i] = {
			obj: HealthChest,
			time: 40,
			xx: centerX,
			yy: centerY+32
		};
		i++
		wave[i] = {
			obj: BigMachine,
			time: 60,
			xx: centerX-64,
			yy: centerY-128
		};
		i++;
		wave[i] = {
			obj: BigMachine,
			time: 300,
			xx: centerX+64,
			yy: centerY-128
		};
		i++;
		repeat(4)
		{
			wave[i] = {
				obj: Freak,
				time: 10,
			};
			i++;
		}
		repeat(4)
		{
			wave[i] = {
				obj: Turret,
				time: 15,
			};
			i++;
		}
		wave[i] = {
			obj: GoldSnowTank,
			time: 110,
			xx: centerX,
			yy: centerY
		};
		i++;
		wave[i] = {
			obj: Wolf,
			time: 60,
		};
		i++;
		repeat(4)
		{
			wave[i] = {
				obj: Sniper,
				time: 6,
			};
			i++;
		};
		wave[i] = {
			obj: VanSpawn,
			time: 30,
			xx: centerX-128,
			yy: centerY-64
		};
		i++;
		wave[i] = {
			obj: VanSpawn,
			time: 30,
			xx: centerX+128,
			yy: centerY+64
		};
		i++;
		repeat(4)
		{
			wave[i] = {
				obj: Sniper,
				time: 8,
			};
			i++;
		};
	break;
	#endregion
	#region challenge 3
	case 2:
		
		repeat(16)
		{
			wave[i] = {
				obj: Exploder,
				time: 2,
			};
			i++;
		};
		wave[i] = {
			obj: Rat,
			time: 200,
		};
		i++;
		repeat(4)
		{
			wave[i] = {
				obj: Rat,
				time: 14,
			};
			i++;
		};
		repeat(4)
		{
			wave[i] = {
				obj: Wolf,
				time: 22,
			};
			i++;
		};
		repeat(4)
		{
			wave[i] = {
				obj: Ratking,
				time: 40,
			};
			i++;
		};
		wave[i] = {
			obj: SnowTank,
			time: 140,
		};
		wave[i] = {
			obj: BallMom,
			time: 270,
		};
		repeat(4)
		{
			wave[i] = {
				obj: Exploder,
				time: 2,
			};
			i++;
		};
		wave[i] = {
			obj: Rat,
			time: 140,
		};
		i++;
		repeat(4)
		{
			wave[i] = {
				obj: DiscGuy,
				time: 10,
			};
			i++;
		}
		repeat(4)
		{
			wave[i] = {
				obj: SnowTank,
				time: 15,
			};
			i++;
		}
		wave[i] = {
			obj: GoldSnowTank,
			time: 110,
			xx: centerX,
			yy: centerY
		};
		i++;
		wave[i] = {
			obj: HealthChest,
			time: 40,
			xx: centerX,
			yy: centerY+32
		};
		wave[i] = {
			obj: Wolf,
			time: 180,
			xx: centerX,
			yy: centerY
		};
		
		repeat(4)
		{
			wave[i] = {
				obj: SnowBot,
				time: 2,
			};
			i++;
		};
		wave[i] = {
			obj: Wolf,
			time: 60,
		};
		i++;
		repeat(4)
		{
			wave[i] = {
				obj: DiscGuy,
				time: 6,
			};
			i++;
		};
		wave[i] = {
			obj: VanSpawn,
			time: 30,
			xx: centerX-128,
			yy: centerY-64
		};
		i++;
		wave[i] = {
			obj: VanSpawn,
			time: 30,
			xx: centerX+128,
			yy: centerY+64
		};
		i++;
		repeat(4)
		{
			wave[i] = {
				obj: DiscGuy,
				time: 8,
			};
			i++;
		};
	break;
	#endregion
}
waveLength = array_length(wave);
UberCont.crownVaultChallenge ++;
//Start it
alarm[3] = 5;//Tell time is the difference between these two numbers
alarm[0] = 20;
alarm[4] = 5;//U a quiter?
