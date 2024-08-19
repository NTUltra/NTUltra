raddrop = 40
maxhealth = 210;
scrBossHealthBuff();
meleedamage = 0
mySize = 1
//bloodempty=0
dropItem = true;

event_inherited()

spr_sit = sprAssassinBossSit;
spr_idle_actual = sprAssassinBossIdle;
spr_idle = spr_sit
spr_walk_actual = sprAssassinBossDash;
spr_walk = spr_sit
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

snd_play_2d(sndAssassinPretend)

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 20+random(40)
wepangle = choose(-140,140)
wepflip = 1
aggression = 0;

dodge=0;
dodgethis=-1;

morphMe=0;
frozen = noone
prevhealth=my_health;

instance_create(x,y,BigWallBreak);

    repeat(8){
    with instance_create(x,y,Smoke)
    motion_add(random(360),1+random(2))}
sprite_index = spr_sit;
alarm[3] = image_number/image_speed;
instance_create(x,y,DramaCamera);


afterImage = ds_list_create();
afterImageMax = 10;
afterImageDelay = 4;
run = false;
afterImageDuration = afterImageDelay;
alarm[7] = afterImageDelay;
smackdelayReduction = clamp(2 + ((GetPlayerLoops()-1)*2),0,6);
scrAddDrops(1);
canDodge = false;
deflectRate = 0;
deflectTell = 0;
maxSpeed = 5.4;
acc = 3;
smackMoveSpeed = 0.5;
shifty = 3;
smackRange = 8;
smackSpeed = 3
actTime = 6;
spamDeflect = 0;
dodgeDuration = 3;
dodgeDelay = 15;