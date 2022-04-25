/// @description Start Ballboss waves
debug("Good start!");
if instance_exists(BecomeBallBoss)
{
	centerX = BushBoxStatue.x;
	centerY = BecomeBallBoss.y;
	x = centerX;
	y = centerY;
}
if instance_exists(TopCont)
	TopCont.darkness = 0;
song = musReflection;
with BossReward
{
	var xx = x - 8;
	repeat(9)
	{
		instance_create(xx,y,Wall);
		xx += 16;
	}
}
with MusCont
{
	audio_stop_sound(song);
	song = other.song;
	snd_loop(song);
	audio_sound_gain(song, max(0, sqrt(UberCont.opt_musvol)), 0);
}
var i = 0;
wave[i] = {
	obj: BigVulture,
	time: 60,
	xx: BigVultureStatue.x,
	yy: BigVultureStatue.y
};
i++;
repeat(4)
{
	wave[i] = {
		obj: Vulture,
		time: 10,
	};
	i++;
}
wave[i] = {
	obj: BigFish,
	time: 120,
	xx: BigFishStatue.x,
	yy: BigFishStatue.y
};
i++;
repeat(4)
{
	wave[i] = {
		obj: BoneFish,
		time: 10,
	};
	i++;
}
repeat(4)
{
	wave[i] = {
		obj: JellyFish,
		time: 10,
	};
	i++;
}
wave[i] = {
		obj: BoneFish,
		time: 100,
		xx: centerX,
		yy: centerY
	};
	i++;
repeat(4)
{
	wave[i] = {
		obj: Vulture,
		time: 30,
	};
	i++;
}
repeat(4)
{
	wave[i] = {
		obj: Crab,
		time: 30,
	};
	i++;
}
repeat(8)
{
	wave[i] = {
		obj: Hyena,
		time: 20,
	};
	i++;
}
wave[i] = {
	obj: AmmoChest,
	time: 10,
	xx: centerX+64,
	yy: centerY
};
wave[i] = {
	obj: Vulture,
	time: 120,
	xx: centerX,
	yy: centerY
};
i++;

wave[i] = {
	obj: ChesireCat,
	time: 90,
	xx: ChesireCatStatue.x,
	yy: ChesireCatStatue.y
};
i++;
wave[i] = {
	obj: BigVulture,
	time: 90,
	xx: BigVultureStatue.x,
	yy: BigVultureStatue.y
};
i++;
wave[i] = {
	obj: BigFish,
	time: 180,
	xx: BigFishStatue.x,
	yy: BigFishStatue.y
};
i++;
repeat(8)
{
	wave[i] = {
		obj: Hyena,
		time: 10,
	};
	i++;
}
repeat(16)
{
	wave[i] = {
		obj: BoneFish,
		time: 10,
	};
	i++;
}
wave[i] = {
	obj: Vulture,
	time: 100,
	xx: BigVultureStatue.x,
	yy: BigVultureStatue.y
};
i++;
wave[i] = {
	obj: HealthChest,
	time: 100,
	xx: centerX,
	yy: centerY
};
i++
wave[i] = {
	obj: AssassinBoss,
	time: 140,
	xx: BigAssassinStatue.x,
	yy: BigAssassinStatue.y
};
i++;
repeat(8)
{
	wave[i] = {
		obj: Raven,
		time: 10,
	};
	i++;
}
wave[i] = {
	obj: Sniper,
	time: 10,
	xx: centerX + 128,
	yy: centerY
};
i++;
wave[i] = {
	obj: Sniper,
	time: 200,
	xx: centerX - 128,
	yy: centerY
};
i++;
wave[i] = {
	obj: JungleBoss,
	time: 140,
	xx: BushBoxStatue.x,
	yy: BushBoxStatue.y
};
i++;
wave[i] = {
	obj: AmmoChest,
	time: 30,
	xx: centerX-64,
	yy: centerY
};
repeat(6)
{
	wave[i] = {
		obj: JungleBandit,
		time: 10,
		xx: centerX,
		yy: centerY
	};
	i++;
}
wave[i] = {
	obj: JungleBandit,
	time: 60,
	xx: centerX,
	yy: centerY
};
i++;
repeat(6)
{
	wave[i] = {
		obj: JungleAssassin,
		time: 10,
		xx: centerX,
		yy: centerY
	};
	i++;
}
wave[i] = {
	obj: JungleBoss,
	time: 180,
	xx: BushBoxStatue.x,
	yy: BushBoxStatue.y
};
i++;
wave[i] = {
	obj: Sniper,
	time: 10,
	xx: centerX + 128,
	yy: centerY
};
i++;
wave[i] = {
	obj: Sniper,
	time: 140,
	xx: centerX - 128,
	yy: centerY
};
i++;
wave[i] = {
	obj: HealthChest,
	time: 100,
	xx: centerX,
	yy: centerY + 32
};
i++
repeat(4)
{
	wave[i] = {
		obj: Spider,
		time: 20,
	};
	i++;
}
repeat(4)
{
	wave[i] = {
		obj: LaserCrystal,
		time: 20,
	};
	i++;
}
wave[i] = {
	obj: HyperCrystal,
	time: 200,
	xx: HyperCrystalStatue.x,
	yy: HyperCrystalStatue.y
};
i++;
wave[i] = {
	obj: AmmoChest,
	time: 100,
	xx: centerX+64,
	yy: centerY
};
i++
repeat(4)
{
	wave[i] = {
		obj: CursedSpider,
		time: 20,
	};
	i++;
}
repeat(4)
{
	wave[i] = {
		obj: CursedCrystal,
		time: 20,
	};
	i++;
}
wave[i] = {
	obj: CursedHyperCrystal,
	time: 200,
	xx: HyperCrystalStatue.x,
	yy: HyperCrystalStatue.y
};
i++;
wave[i] = {
	obj: AssassinBoss,
	time: 30,
	xx: BigAssassinStatue.x,
	yy: BigAssassinStatue.y
};
i++;
wave[i] = {
	obj: Sniper,
	time: 10,
	xx: centerX + 128,
	yy: centerY
};
i++;
wave[i] = {
	obj: Sniper,
	time: 10,
	xx: centerX - 128,
	yy: centerY
};
i++;
wave[i] = {
	obj: HealthChest,
	time: 100,
	xx: centerX,
	yy: centerY - 32
};
i++
wave[i] = {
	obj: AmmoChest,
	time: 100,
	xx: centerX-64,
	yy: centerY
};
i++
//Start it
waveLength = array_length(wave);
alarm[3] = 5;//Tell time is the difference between these two numbers
alarm[0] = 20;
