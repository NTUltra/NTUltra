raddrop = 40
maxhealth = 190;
scrBossHealthBuff();
meleedamage = 0
mySize = 1
//bloodempty=0
dropItem = true;

event_inherited()


spr_idle = sprAssassinBossSit
spr_walk = sprAssassinBossDash
spr_hurt = sprAssassinBossHurt
spr_dead = sprAssassinBossDead
spr_stunned = sprAssassinBossStunned
spr_fake = sprAssassinBossDeadFake;
spr_respawn = sprAssassinBossRespawn;
fakeded = -1;
var loops = GetPlayerLoops();
lifes = min(2,loops-1);
if instance_exists(SurvivalWave)
	lifes = max(0,lifes-1);
if instance_number(AssassinBoss) > 1
	lifes = max(lifes-1,0);


snd_hurt = sndAssassinHit
snd_dead = sndAssassinDie

snd_play_2d(sndAssassinGetUp)

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 20+random(40)
alarm[3] = alarm[1];//change sprite to normal idle
wepangle = choose(-140,140)
wepflip = 1
aggression = 0;

dodge=0;
dodgethis=-1;

morphMe=0;
frozen=false;
prevhealth=my_health;

instance_create(x,y,WallBreak);
instance_create(x+16,y+16,WallBreak);
instance_create(x+16,y-16,WallBreak);
instance_create(x-16,y+16,WallBreak);
instance_create(x-16,y-16,WallBreak);

    repeat(8){
    with instance_create(x,y,Smoke)
    motion_add(random(360),1+random(2))}

instance_create(x,y,DramaCamera);


afterImage = ds_list_create();
afterImageMax = 10;
afterImageDelay = 4;
afterImageDuration = afterImageDelay;
alarm[7] = afterImageDelay;
smackdelayReduction = clamp(2 + ((GetPlayerLoops()-1)*3),0,10);
deflectExhaustion = 0;
scrAddDrops(1);
canDodge = false;