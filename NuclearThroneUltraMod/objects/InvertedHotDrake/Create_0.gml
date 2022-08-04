raddrop = 120
maxhealth = 900
meleedamage = 7
size = 4


event_inherited()
existTime = 30;
alarm[10] = 0;
/* THIS IN BEGIN STEP!
if instance_exists(Player){
my_health=round( (1+(Player.loops*0.2))*my_health )//bandit loop 1: 1.1*4= 5(rounded up)
max_health=my_health;
}
*/
spr_idle = sprInvertedHotDrakeIdle
spr_walk = sprInvertedHotDrakeIdle
spr_hurt = sprInvertedHotDrakeHurt
spr_dead = sprInvertedHotDrakeVanish
spr_fire = sprInvertedHotDrakeFire

spr_prep = sprInvertedHotDrakePrep
spr_vanish=sprInvertedHotDrakeVanish
spr_appear=sprInvertedHotDrakeAppear

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
