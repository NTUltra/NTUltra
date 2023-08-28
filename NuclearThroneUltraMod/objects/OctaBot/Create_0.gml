raddrop = 8
maxhealth = 25
meleedamage = 0
mySize = 1

event_inherited();

spr_idle = sprOctaBotIdle;
spr_walk = sprOctaBotWalk;
spr_hurt = sprOctaBotHurt;
spr_dead = sprOctaBotDead;
spr_fire = sprOctaBotFire;

snd_hurt = sndSniperHit
snd_dead = sndExplosion

//behavior
walk = 0
alarm[1] = 90;
actTime = 90;
originalAngle = 45;
dir = choose(originalAngle,originalAngle + 90, originalAngle + 180, originalAngle + 270);
acc = 1.2;
maxSpeed = 3.5;
projectileSpeed = 4.5;
type = 0;