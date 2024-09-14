loops = GetPlayerLoops();
maxhealth = 100 * clamp(loops*3,1,5)
mySize = 1
spr_idle = sprMushroomStatue;
spr_hurt = sprMushroomStatueHurt;
spr_dead = sprMushroomStatueDead;

name = "SACRIFICE FIRST WEAPON MOD"

event_inherited()
used = false;
snd_hurt = sndHitRock;
scrCreateSpace(102);