/// @description Init
depth = 8;
image_xscale = choose(1,-1);
alarm[0] = 90;
jumpScared = false;
if scrIsGamemode(40)
	jumpScared = true;
ghostLocations = [];
loops = GetPlayerLoops();
enoughEnemies = 20;
enoughEnemies += min(loops*4,60);
alarm[4] = 90;
alarm[5] = 30;