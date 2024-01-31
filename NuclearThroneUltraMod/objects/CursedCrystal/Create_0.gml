raddrop = 22
maxhealth = 65//45
meleedamage = 20
mySize = 2


event_inherited()
firstTime = true;
spr_idle = sprInvLaserCrystalIdle;
spr_walk = sprInvLaserCrystalIdle;
spr_hurt = sprInvLaserCrystalHurt;
spr_dead = sprInvLaserCrystalDead;
spr_fire = sprInvLaserCrystalFire;


snd_hurt = sndLaserCrystalHit
snd_dead = choose(sndBanditDie, sndRatDie, sndRavenDie, sndScorpionDie, sndBigMaggotDie, sndGatorDie, sndSalamanderDead)


//behavior
ammo = 4
gunangle = random(360)
alarm[1] = 30+random(90)

alarm[3] = 5;
alarm[4] = 30;

loops = GetPlayerLoops();
droprate = 12;