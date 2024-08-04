raddrop = 4
maxhealth = 12
mySize = 1

event_inherited()
meleedamage = 3

spr_idle = sprDiscGuyIdle
spr_walk = sprDiscGuyWalk
spr_hurt = sprDiscGuyHurt
spr_dead = sprDiscGuyDead
spr_fire = sprDiscGuyFire

snd_dead = sndWolfDead;
snd_hurt = sndSnowTankHurt;

walk=0;
range = 230;
acc = 0.8;
maxSpeed = 3;
//behavior
alarm[1] = 30+random(30)
actTime = 15
loops = GetPlayerLoops();
discSpeed = 3.2;
if scrIsHardMode() && object_index != UltraDiscGuy && (!instance_exists(UltraDiscGuy) || random(3) < 1) && 
instance_exists(Player) && Player.area != 106 && Player.area != 125//HARD MODE
{
	//Not Inv scrap Inv Mansion
	instance_destroy(id,false);
	instance_create(x,y,UltraDiscGuy);
}

if (instance_exists(Player) && !Player.justAsheep) sleeping = false;;
if instance_exists(Player) && Player.skill_got[29]
	sleeping = true;