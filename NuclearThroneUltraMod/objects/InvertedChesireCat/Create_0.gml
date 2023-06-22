raddrop = 150
maxhealth = 610
meleedamage = 3
mySize = 4
scrBossHealthBuff();


event_inherited()

spr_idle = sprInvertedChesireCatIdle
spr_walk = sprInvertedChesireCatIdle
spr_hurt = sprInvertedChesireCatHurt
spr_dead = sprInvertedChesireCatDead
spr_fire = sprInvertedChesireCatPrepLaser


snd_dead = sndBigBanditMeleeHit;
snd_hurt = sndBigDogHit;
snd_melee = sndRhinoFreakMelee;

walk=0;
//behavior
alarm[2] = 60+random(120);
alarm[10] = 0;
visible=false;
//if instance_exists(Player)
//motion_add(point_direction(Player.x,Player.y,x,y),1)

mask_index=mskPickupThroughWall;

drama=false;

instance_create(x,y,InvertedChesireCatTail);

ammo=8;

dodge=0;
friction = 0.8;

myWazers = [];
wazerDuration = 98;
wazerRotation = 0;
wazerDirection = 0;
wazerOffset = 90;
tellTime = 12;

loops = GetPlayerLoops();
startLoop = 3;
ca = 7 + min(7+(loops-startLoop)*2,12);
cang = random(360);
caspd = min(6,4+((loops-startLoop)*0.5));
if loops > startLoop
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