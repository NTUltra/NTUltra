maxhealth = 9999;
mySize = 1

spr_idle = sprVoidFiendBenchIntro;
spr_hurt = sprVoidFiendBenchIntro;
spr_dead = sprVoidFiendBenchIntro;

event_inherited()
shadowSprite = mskPickupThroughWall;
image_speed = 0;
canMoveOver = true;
snd_hurt = sndSilence