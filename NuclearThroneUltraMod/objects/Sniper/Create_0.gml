raddrop = 8
maxhealth = 6
meleedamage = 0
mySize = 1

event_inherited()

if scrIsHardMode() && object_index != UltraSniper && (!instance_exists(UltraSniper) || random(5) < 1) && 
instance_exists(Player) && Player.area != 1//HARD MODE
{
	//Not oasis desert and/or savanna
	instance_destroy(id,false);
	instance_create(x,y,UltraSniper);
}

spr_idle = sprSniperIdle
spr_walk = sprSniperWalk
spr_hurt = sprSniperHurt
spr_dead = sprSniperDead

snd_hurt = sndSniperHit

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 60+random(90)
gonnafire = 0
wkick = 0
proj = EnemyBullet4;
loops = GetPlayerLoops();
if loops > 11
proj = EnemyBullet1Square;
tellTime = 30
actTime = 25;
if loops > 0
{
	tellTime = 25;
	actTime = 15;
}
alarm[0] = 1;