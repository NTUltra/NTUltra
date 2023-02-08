loops = GetPlayerLoops();
maxhealth = 90 * clamp(loops*5,1,10)
size = 1
spr_idle = sprGraveyardEntrance;
spr_hurt = sprGraveyardEntranceHurt

spr_dead = sprGraveyardEntranceDead
name = "?"

event_inherited()
canMoveOver = true;
shadowSprite = shd24;
shadowYoffset = - 8;
snd_hurt = sndHitRock
alarm[1] = 900;
if scrIsHardMode()
alarm[1] += 90;
alarm[1] *= clamp(loops*1.3,1,4)//335//10 seconds 300
instance_create(x,y,BigWallBreak);
