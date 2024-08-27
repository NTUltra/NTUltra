/// @description Init
alarm[1] = 1;
target = noone;
originalTarget = noone;
creator = -1;
lerpTime = 0;
lerpSpeed = 22;//16 Range of instant speed of hand
lerpCalc = 0.16;
lerpCalcBack = 0.16;
lerpDistance = 1;
dmg = 1;
loseTarget = false;
xprev = x;
yprev = y;
image_speed = 0.4;
snd_play_2d(sndHandThrow,0.2);
snd_loop(sndHandThrowLoop);
team = 2;
touchpointX = x;
touchpointY = y;
push = false;
pushDirection = 0;
pushX = 0;
pushY = 0;
pushStartX = 0;
pushStartY = 0;
pushStrength = 108;
pushSpeed = 20;
grabbingPickup = false;
grabAnItem = false;
spr_closing = sprHandClosing;
spr_close = sprHandClose;
spr_block = sprHandBlock
spr_hurt = false;
my_health = 0;
mySize = 1;
alarm[5] = 2;
previousSprite = sprite_index;