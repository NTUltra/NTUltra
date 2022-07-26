raddrop = 6
maxhealth = 7
meleedamage = 0
size = 1

event_inherited()
if UberCont.opt_gamemode == 34//HARD MODE
{
	instance_destroy(id,false);
	instance_create(x,y,UltraBandit);
}
spr_idle = sprSavannaBanditIdle
spr_walk = sprSavannaBanditWalk
spr_hurt = sprSavannaBanditHurt
spr_dead = sprSavannaBanditDead
spr_gun = sprSavannaBanditGun;

snd_hurt = sndBanditHit
snd_dead = sndBanditDie

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0

oooimgonnashoot = false;
ammo = 5;
maxammo = 5;

alarm[2] = 1;

loops = GetPlayerLoops();
