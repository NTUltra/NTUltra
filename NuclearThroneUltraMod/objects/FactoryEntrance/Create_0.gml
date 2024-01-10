loops = GetPlayerLoops();
maxhealth = 150 * clamp(loops*5,1,10)
mySize = 1
spr_idle = sprFactoryEntrance;
spr_hurt = sprFactoryEntranceHurt
spr_dead = sprFactoryEntranceDead
name = "DEPOSIT WEAPON?"

event_inherited();
snd_hurt = sndHitMetal;
canMoveOver = true;
shadowSprite = shd24;
shadowYoffset = - 8;
y -= 16;
x -= 16;
scrCreateSpace(1);
y += 16;
x += 16;
alarm[6] = 5;