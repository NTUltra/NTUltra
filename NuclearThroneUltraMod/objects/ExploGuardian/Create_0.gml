raddrop = 14
maxhealth = 50
meleedamage = 3
mySize = 3

event_inherited()
actTime = 10;
spr_normal = sprExploGuardianWalk;
spr_idle = spr_normal;
spr_walk = sprExploGuardianWalk;
spr_normal_hurt = sprExploGuardianHurt;
spr_hurt = spr_normal_hurt;
spr_dead = sprExploGuardianDead;
spr_charge = sprExploGuardianCharge;
spr_charge_hurt = sprExploGuardianChargeHurt;
spr_fire = sprExploGuardianFire;

snd_hurt = sndExploGuardianHurt;
snd_dead = sndExploGuardianDead;
snd_dead_charge = sndExploGuardianDeadCharge;

charge = false;
fire = false;
//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0
friction = 2;
instance_create(x,y,BigWallBreak);
projectileSpeed = 10;
projectileSpeed += min(GetPlayerLoops(),3);
tellTime = 30;
var loops = min(GetPlayerLoops(),3)
tellTime -= 5*loops;
direction = random(360);
speed = 1;
if hspeed > 0
	right = 1
else if hspeed < 0
	right = -1
depth = -2;

exploAmount = 14;
exploBullet = ExploGuardianBullet;
