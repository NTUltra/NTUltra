viewx = 0
viewy = 0
viewx2 = 0
viewy2 = 0
prevViewX = 0;
prevViewY = 0;
prevviewx2 = 0
prevviewy2 = 0
smoothing = 0.2;
depth = 5;
shake = 0
kills = 0
enemiesInStartLevel=0;
//maxEnemyHealthInLevel=0;
totalEnemyHealth = 0;
maxEnemyHealth = 0;
hard = 0
area = 0
subarea = 0
nightwind = false;
wind = false;
drip = false;
cheese = false;
heavyrain = false;
rain = false;
snow = false;
cave = false;
viewdist = 8;
viewdistTarget = viewdist;

shad = -1;//surface_create(view_wview,view_hview)


alarm[0] = 1
alarm[1] = 160
loops = GetPlayerLoops();
bulletHellLoops = loops;
if scrIsHardMode()//HARD MODE
	loops ++;
canSpawnPopoThisManyTimes = 2 + loops;
canSpawnPopoThisManyTimes = min(canSpawnPopoThisManyTimes,7);
if instance_exists(Player)
{
	canSpawnPopoThisManyTimes += array_length(Player.crown);	
}
spawnedThisManyPopo = 0;

wantVanAmount = 0;
vanDelay = 200;
vanDelayRandom = 60;
verticalVans = false;
spawnedFriendlyPopo = false;
playerOutOfPlace = false;
///@description deside how manny vans
if instance_exists(Player)
{
	wantVanAmount = 0
	var i = 0;
	repeat(loops)
	{
		if i < 3
		{
			wantVanAmount++;
		}
		else if i % 3 == 2//After loop 3 its every other loop another van
		{
			//Starting with no extra van on loop 4
			wantVanAmount++;
		}
		i ++;
	}
	if (!scrIsGamemode(9) &&  (loops > 9 || (scrIsHardMode() && loops > 3)))
	{
		if scrIsHardMode()
			bulletHellLoops = loops + 6;
		alarm[8] = 120;
		bulletHell = irandom_range(0,4);
	}
	if Player.skill_got[29]//Insomnia
	{
		vanDelay *= 1.25;
		alarm[1] += 180;
	}
	if ( (Player.area == 6 || Player.area == 112) && Player.subarea ==  2 )
		wantVanAmount = clamp((GetPlayerLoops()*0.5)-2,0,2);
	if wantVanAmount > 2
		verticalVans = true;
	//wantVanAmount = min(wantVanAmount,6);
	if scrIsCrown(16) //CROWN OF POPO
	{
		wantVanAmount ++;
		canSpawnPopoThisManyTimes ++;
		vanDelay *= 0.8;
	}
	wantVanAmount += UberCont.extraVan;
	vanDelay = max(140,vanDelay - ((wantVanAmount-1)*40));
	if scrIsCrown(10)//crown of difficulty
	{
		vanDelay*=0.7;
	}
	if Player.ultra_got[82]//Anomaly
	{
		alarm[3]=60;
		//maxEnemyHealthInLevel=0;
	}
	
	if (
		((Player.area == 9 || Player.area == 118 || Player.area == 135 || Player.area == 148)
		&& Player.subarea == 3)
		|| Player.area == 104 
		|| Player.area == 128
		|| Player.area == 137
		|| Player.area == 100
		|| ((Player.area == 135 || Player.area == 148) && Player.subarea == 3) || 
		(Player.loops < 1 && (scrIsCrown(16) || !((Player.area == 9 || Player.area == 118) && Player.subarea == 2)))
	)
	{
		//No popo no
		alarm[1] = 0;
	}
}
if instance_exists(SurvivalArenaStarter)
{
	alarm[7] = 1;
}
alarm[4] = 120;
alarm[9] = 1;
alarm[10] = 120;