loops = GetPlayerLoops();
maxhealth = 90 * clamp(loops*2,1,4)
mySize = 1
spr_idle = sprMushroomStatue;
spr_hurt = sprMushroomStatueHurt;
spr_dead = sprMushroomStatueDead;

name = "SACRIFICE FIRST WEAPON MOD"

event_inherited()
used = false;
snd_hurt = sndHitRock;
scrCreateSpace(102);