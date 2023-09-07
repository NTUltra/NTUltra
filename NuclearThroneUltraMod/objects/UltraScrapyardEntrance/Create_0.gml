loops = GetPlayerLoops();
maxhealth = 180 * clamp(loops*5,1,10)
mySize = 1
spr_idle = sprUltraScrapyardEntrance;
spr_hurt = sprUltraScrapyardEntranceHurt
spr_active = sprUltraScrapyardEntranceActivate;
spr_dead = sprUltraScrapyardEntranceDead
actionName = "% RADS TO ENTER"
name = actionName;
explainTimer = 0;
event_inherited();
canMoveOver = true;
shadowSprite = shd24;
shadowYoffset = - 8;
snd_hurt = sndHitRock
instance_create(x,y,BigWallBreak);
alarm[2] = 30;