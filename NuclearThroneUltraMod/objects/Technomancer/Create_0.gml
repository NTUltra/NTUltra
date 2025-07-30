raddrop = 50
maxhealth = 500//450
scrBossHealthBuff();
meleedamage = 0
mySize = 3

event_inherited()
isBoss = true;
spr_idle = sprTechnomancerActivate
spr_walk = sprTechnomancerActivate
spr_hurt = sprTechnoMancerHurt
spr_dead = sprTechnoMancerDead

spr_normal = sprTechnoMancer;
spr_fire1 = sprTechnoMancerFire1;
spr_fire2 = sprTechnoMancerFire2;
spr_disappear = sprTechnoMancerDisappear;
spr_appear = sprTechnoMancerAppear;

snd_hurt = sndTechnomancerHurt;
snd_dead = sndTechnomancerDestroy;


//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(60)
wkick = 0
imageIndex = 0;
turretToSpawn = Turret;
reviveToSpawn = TechnomancerRevive;

scrBossFloor();
active = false;
hasHadIntro = false;
imageIndex = sprite_get_number(spr_disappear);
myKind = Technomancer;
inverted = false;
scrAddDrops(1);
actTime = 20;
loops = GetPlayerLoops();
if loops > 2
	image_speed = 0.5;
actTime -= clamp((loops-1)*3,0,10);