raddrop = 75
maxhealth = 250;
loops = GetPlayerLoops()
if loops > 0
	maxhealth = 350;
meleedamage = 4;
mySize = 3
scrBossHealthBuff();
event_inherited()

spr_idle = sprGraveyardFishIdle
spr_walk = sprGraveyardFishWalk
spr_chrg = spr_walk;
spr_hurt = sprGraveyardFishHurt
spr_dead = sprGraveyardFishDead
spr_fire = sprGraveyardFishFire

snd_dead = sndOasisBossDead;
snd_hurt = sndOasisBossHurt;
snd_fire = sndOasisBossFire;
snd_melee = sndOasisBossMelee;
snd_tackle = sndOasisBossTackle;

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30;
//insomnia start slower
if instance_exists(Player)
{
	if Player.skill_got[29]//insomnia
	{
		alarm[1] += 90;
		scrGiveSnooze();
	}
}
wkick = 0
actTime = 15;
alarm[3] = 4 + irandom(8);
dashDuration = 18;
dashStart = 5;
acc = 6;
maxSpeed = 7.5;
firstTime = true;
tellTime = 14;
fireRate = 3;
maxAmmo = 2;
ammo = maxAmmo;
reachedHalfHealth = false;
tpTimes = 2 +irandom(2);
originalProjectileSpeed = 4;
projectileSpeedIncrease = 1;
projectileSpeed = originalProjectileSpeed;
isInverted = false;
if loops > 0
{
	tellTime = 7;
	actTime -= 2;
	fireRate = 4;
	maxAmmo ++;
	acc += 1;
	dashDuration -= 1;
	maxSpeed += 2;
}
if loops > 2
{
	maxSpeed += 3;
	dashDuration -= 1;
	tellTime -= 1;
	actTime -= 2;
	originalProjectileSpeed -= 1;
	projectileSpeedIncrease = 1;	
}