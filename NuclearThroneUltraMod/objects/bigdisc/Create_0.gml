raddrop = 50
maxhealth = 350;
meleedamage = 6
mySize = 6

event_inherited()

spr_idle = sprBigDisc
spr_walk = sprBigDisc
spr_hurt = sprBigDiscHurt
spr_dead = sprBigScorchMark

snd_melee = sndDiscDie;
snd_hurt = sndDiscHit;
snd_dead = sndExplosionCar;

//behavior
alarm[1] = 30;
direction = random(360);
targetDirection = direction;
maxSpeed = 5;
acc = 2;
actTime = 30;
rotation = 10;
image_angle = random(360);
projectileSpeed = 3;
scrBossFloor();
active = false;
lowHealth = false;
acc = 2;
discAmount = 6*clamp(GetPlayerLoops()-1,1,3);
scrAddDrops(1);