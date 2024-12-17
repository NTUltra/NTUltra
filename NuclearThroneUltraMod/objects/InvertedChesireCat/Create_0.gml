raddrop = 150
maxhealth = 610
mySize = 4
scrBossHealthBuff();


event_inherited()
meleedamage = 3
canFly = true;
spr_idle = sprInvertedChesireCatIdle
spr_walk = sprInvertedChesireCatIdle
spr_hurt = sprInvertedChesireCatHurt
spr_dead = sprInvertedChesireCatDead
spr_fire = sprInvertedChesireCatLaser;
spr_fire_tell = sprInvertedChesireCatPrepLaser


snd_dead = sndBigBanditMeleeHit;
snd_hurt = sndBigDogHit;
snd_melee = sndRhinoFreakMelee;

walk=0;
//behavior
alarm[2] = 120+random(60);
if instance_exists(Player)
{
	if Player.skill_got[29]	//Insomnia
	{
		alarm[2] += 30;
	}
}
alarm[10] = 0;
visible=false;
//if instance_exists(Player)
//motion_add(point_direction(Player.x,Player.y,x,y),1)

mask_index=mskPickupThroughWall;

drama=false;

instance_create(x,y,InvertedChesireCatTail);

ammo=8;

friction = 0.8;

myWazers = [];
wazerDuration = 98;
wazerRotation = 0;
wazerDirection = 0;
wazerOffset = 90;
tellTime = 12;

loops = GetPlayerLoops();
startLoop = 1;
ca = 6 + min(7+(loops-startLoop)*2,14);
cang = random(360);
caspd = min(6,4+((loops-startLoop)*0.5));
actTime = 11;
if loops > 0
{
	actTime -= 2;
	wazerDuration -= 4;
}
if loops > 1
{
	wazerDuration -= 4;
	actTime = 7;	
}
if loops > startLoop
{
	alarm[6] = 160;
	if instance_exists(Player)
	{
		if Player.skill_got[29]	//Insomnia
			alarm[6] += 100;
	}
}
gunangle = 0;
scrAddDrops(2);
maxSpeed = 8;
firstTime = true;
forceAnimation = 0;
forceAnimationIndex = 0;
forceAnimationDuration = 0;