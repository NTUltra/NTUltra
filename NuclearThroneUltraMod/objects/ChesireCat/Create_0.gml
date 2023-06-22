raddrop = 60
maxhealth = 670
meleedamage = 3
mySize = 4
scrBossHealthBuff();

event_inherited()
alarm[10] = 0;

spr_idle = sprChesireCatIdle
spr_walk = sprChesireCatIdle
spr_hurt = sprChesireCatHurt
spr_dead = sprChesireCatDead
spr_fire = sprChesireCatPrepLaser


snd_dead = sndBigBanditMeleeHit;
snd_hurt = sndBigDogHit;
snd_melee = sndRhinoFreakMelee;
walk=0;
//behavior
alarm[2] = 60+random(120);
visible=false;
//if instance_exists(Player)
//motion_add(point_direction(Player.x,Player.y,x,y),1)

mask_index=mskPickupThroughWall;

drama=false;

instance_create(x,y,ChesireCatTail);

ammo=7;

dodge=0;
friction = 0.8;
myWazer = -1;
wazerDuration = 102;
wazerRotation = 0;
wazerDirection = 0;
wazerOffset = 120;
tellTime = 16;

loops = GetPlayerLoops();
startLoop = 3;
ca = 6 + min(6+(loops-startLoop)*2,12);
cang = random(360);
caspd = min(5,3+((loops-startLoop)*0.5));
if loops >= startLoop
{
	alarm[6] = 200;
	if instance_exists(Player)
	{
		if Player.skill_got[29]	//Insomnia
			alarm[6] += 100;
	}
}
gunangle = 0;
scrAddDrops(2);