loops = GetPlayerLoops();
maxhealth = 100 * clamp(loops*5,1,10)
mySize = 1
spr_idle = sprGraveyardEntrance;
spr_hurt = sprGraveyardEntranceHurt

spr_dead = sprGraveyardEntranceDead
name = "DEPOSIT WEAPON?"

event_inherited();
snd_hurt = sndHitMetal;
canMoveOver = true;
shadowSprite = shd24;
shadowYoffset = - 8;
instance_create(x,y,BigWallBreak);