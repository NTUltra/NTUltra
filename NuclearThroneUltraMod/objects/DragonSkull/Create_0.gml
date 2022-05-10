var loops = GetPlayerLoops();
maxhealth = 150 * clamp(loops*2,1,4)
maxhealth *= max(1,instance_number(BecomeScrapBoss));
size = 1
spr_idle = sprHotDrakeSkullIdleClosed;
spr_hurt = sprHotDrakeSkullHurtClosed;
spr_dead = sprHotDrakeSkullDead;

name = "ENTER?"

event_inherited()
shadowSprite = shd48;
snd_hurt = sndHitRock
instance_create(x,y,WallBreak);
instance_create(x,y+16,WallBreak);
instance_create(x+16,y,WallBreak);
instance_create(x+16,y+16,WallBreak);
instance_create(x-16,y,WallBreak);
instance_create(x-16,y+16,WallBreak);
alarm[1] = 120

alarm[2]=2000 * clamp(loops*2,1,10)//90 seconds
alarm[2] *= max(1,1+instance_number(BecomeScrapBoss)*0.5);
closed = false;
