event_inherited();
friction = 0.42
image_speed = 0.4
depth = 7;
dmg = 1;
impactWristed = false;
team = 0;
corpseHome = 0.3;
if instance_exists(Player){
	if Player.ultra_got[52] {
		friction=0.32;
		dmg = 1.5;
	}
	if Player.skill_got[20] {
		dmg = 2;
		alarm[1] = 1;
		alarm[3] = 1;
		impactWristed = true;
		xprev = x;
		yprev = y;
		if Player.race == 25
		{
			corpseHome += 0.375;
		}
	}
	if scrIsCrown(28) || scrIsGamemode(39) || (Player.ultra_got[19] && Player.altUltra)//Gore galore
	{
		bxprev = x;
		byprev = y;
		alarm[2] = 1;
		alarm[3] = 0;
	}
}
with CorpseCollector {
	px = other.x;
	py = other.y;
	alarm[0] = max(alarm[0],60);
}
alarm[0] = 30;
alarm[4] = 40;
alarm[5] = 1;
alarm[6] = 4;
skidScale = 1;