raddrop = 8
maxhealth = 36//35
mySize = 3
droprate = 25;
if instance_exists(Player) && Player.skill_got[4]
	droprate += 3;
event_inherited()
meleedamage = 3;
actTime = 12;
spr_idle = sprNewGuardianIdle;
spr_walk = sprNewGuardianIdle;
spr_normal = sprNewGuardianIdle;
spr_hurt = sprNewGuardianHurt;
spr_dead = sprNewGuardianDead;
spr_appear = sprNewGuardianAppear;
spr_disappear = sprNewGuardianDisappear;
spr_fire = sprNewGuardianFire;

snd_hurt = sndGuardianHurt;
snd_dead = sndGuardianDead;
snd_disappear = sndGuardianDisappear;
snd_appear = sndGuardianAppear;
//behavior
walk = 0
fire = false;
gunangle = 0;
alarm[1] = 30+random(90)
wkick = 0
friction = 6;
instance_create(x,y,WallBreakWallOnly);
depth = -2;
projectileSpeed = 2;
loops = GetPlayerLoops();
projectileSpeed += min(0.5,projectileSpeed * 0.1);