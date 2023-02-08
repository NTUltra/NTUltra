viewx = 0
viewy = 0
viewx2 = 0
viewy2 = 0
prevviewx2 = 0
prevviewy2 = 0
smoothing = 0.2;

shake = 0
kills = 0
enemiesInStartLevel=0;
//maxEnemyHealthInLevel=0;
totalEnemyHealth=0;
hard = 0
area = 0
subarea = 0

shad = noone;//surface_create(view_wview,view_hview)


alarm[0] = 1
alarm[1] = 160
loops = GetPlayerLoops();
bulletHellLoops = loops;
if scrIsHardMode()//HARD MODE
	loops ++;
canSpawnPopoThisManyTimes = 2 + loops;
canSpawnPopoThisManyTimes = min(canSpawnPopoThisManyTimes,8);
spawnedThisManyPopo = 0;

wantVanAmount = 0;
vanDelay = 280;
vanDelayRandom = 60;
verticalVans = false;
spawnedFriendlyPopo = false;
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
	if (UberCont.opt_gamemode != 9 &&  (loops > 9 || (scrIsHardMode() && loops > 3)))
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
	wantVanAmount = min(wantVanAmount,6);
	if Player.crown == 16 //CROWN OF POPO
	{
		wantVanAmount ++;
		canSpawnPopoThisManyTimes ++;
	}
	wantVanAmount += UberCont.extraVan;
	vanDelay = max(100,vanDelay - ((wantVanAmount-1)*40));
	if Player.crown==10//crown of difficulty
	{
		vanDelay*=0.7;
	}
	if Player.ultra_got[82]
	{
		alarm[3]=60;
	//maxEnemyHealthInLevel=0;
	}
	//progression
	alarm[4]=600;//10 seconds
	
	if ((Player.area == 9 || Player.area == 118) && Player.subarea == 3 || Player.area == 104)
	{
		//No popo no
		alarm[1] = 0;
	}
}
alarm[6] = 1000;
if instance_exists(SurvivalArenaStarter)
{
	alarm[7] = 1;
}
alarm[9] = 1;