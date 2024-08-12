raddrop = 30
maxhealth = 600
mySize = 3

event_inherited()
meleedamage = 3
canFly = true;
venomous = true;
spr_idle = sprCloudBoss
spr_walk = sprCloudBoss
spr_hurt = sprCloudBossHurt;
spr_dead = sprCloudBossDead;
spr_fire = sprCloudBossFire;

snd_hurt = sndHitPlant
snd_dead = sndFrogExplode

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30;
if instance_exists(Player) && Player.skill_got[29] {
	alarm[1] += 90;
	scrGiveSnooze();
}
alarm[4] = 90;
wkick = 0
actTime = 12;

acc = 1.2;
maxSpeed = 2;
time = 0;
instance_create(x,y,DramaCamera);
scrAddDrops(1);