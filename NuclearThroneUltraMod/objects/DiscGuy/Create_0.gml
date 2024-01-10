raddrop = 4
maxhealth = 12
meleedamage = 3
mySize = 1

event_inherited()

spr_idle = sprDiscGuyIdle
spr_walk = sprDiscGuyWalk
spr_hurt = sprDiscGuyHurt
spr_dead = sprDiscGuyDead
spr_fire = sprDiscGuyFire

snd_dead = sndWolfDead;
snd_hurt = sndSnowTankHurt;

walk=0;
range = 250;
acc = 0.8;
maxSpeed = 3;
//behavior
alarm[1] = 30+random(30)
actTime = 10;
loops = GetPlayerLoops();
discSpeed = 3.5;
if loops > 0
	actTime -= 4;
	
if scrIsHardMode() && object_index != UltraDiscGuy && (!instance_exists(UltraDiscGuy) || random(3) < 1) && 
instance_exists(Player) && Player.area != 106 && Player.area != 125//HARD MODE
{
	//Not Inv scrap Inv Mansion
	instance_destroy(id,false);
	instance_create(x,y,UltraDiscGuy);
}