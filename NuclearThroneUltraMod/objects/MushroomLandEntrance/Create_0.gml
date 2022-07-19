loops = GetPlayerLoops();
maxhealth = 90 * clamp(loops*2,1,4)
size = 1
spr_idle = sprMushroomStatue;
spr_hurt = sprMushroomStatueHurt;
spr_dead = sprMushroomStatueDead;

name = "SACRIFICE WEAPON MODS"

event_inherited()
canMoveOver = true;
snd_hurt = sndHitRock;
instance_create(x,y,WallBreak);
instance_create(x,y+16,WallBreak);
instance_create(x+16,y,WallBreak);
instance_create(x+16,y+16,WallBreak);
instance_create(x-16,y,WallBreak);
instance_create(x-16,y+16,WallBreak);

