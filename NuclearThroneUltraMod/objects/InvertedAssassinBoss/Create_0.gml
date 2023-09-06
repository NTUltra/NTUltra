raddrop = 60
maxhealth = 165;;
scrBossHealthBuff();
meleedamage = 0
mySize = 1
dropItem = true;
//bloodempty=0
aggression = 0

event_inherited()


spr_idle = sprInvertedAssassinBossSit
spr_walk = sprInvertedAssassinBossDash
spr_hurt = sprInvertedAssassinBossHurt
spr_dead = sprInvertedAssassinBossDead
spr_stunned = sprInvertedAssassinBossStunned
spr_fake = sprInvertedAssassinBossDeadFake;
spr_respawn = sprInvertedAssassinBossRespawn;
fakeded = -1;
var loops = GetPlayerLoops();
lifes = min(2,loops-1);
if instance_number(InvertedAssassinBoss) > 1
	lifes = max(lifes-1,0);
playedWinSound = false;

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