raddrop = 80
maxhealth = 820
scrBossHealthBuff();
var loops = GetPlayerLoops();
if loops > 0
{
	with instance_create(x,y,DragonShield)
		myDragon = other.id;
	}
if loops > 2
{
	with instance_create(x,y,DragonShield)
	{
		xOffset -= 30;
		myDragon = other.id;
		waveSpeed *= -1;
	}
}
with chestprop {
	var f = instance_nearest(Player.x + random_range(32,200), Player.y + random_range(128,500), Floor);
	x = f.x+16;
	y = f.y+16;
}
with RadChest {
	var f = instance_nearest(Player.x + random_range(32,200), Player.y + random_range(128,500), Floor);
	x = f.x+16;
	y = f.y+16;
}
meleedamage = 7
size = 4
event_inherited();
existTime = 30;
alarm[10] = 0;
/* THIS IN BEGIN STEP!
if instance_exists(Player){
my_health=round( (1+(Player.loops*0.2))*my_health )//bandit loop 1: 1.1*4= 5(rounded up)
max_health=my_health;
}
*/
spr_idle = sprHotDrakeIdle
spr_walk = sprHotDrakeIdle
spr_hurt = sprHotDrakeHurt
spr_dead = sprHotDrakeVanish
spr_fire = sprHotDrakeFire

spr_prep = sprHotDrakePrep
spr_vanish=sprHotDrakeVanish
spr_appear=sprHotDrakeAppear

snd_dead = sndDragonStop
snd_melee = sndDragonFire;
right=-1;
awake=false;
atk=0;
vanishing=-1;
appearing=-1;
mask_index=mskPickupThroughWall;
//behavior
//alarm[1] = 10+random(10)

/* */
/*  */
scrAddDrops(1);