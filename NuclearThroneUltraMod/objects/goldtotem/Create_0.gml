maxhealth = 80
meleedamage = 0
size = 2
prevhealth = 100;
event_inherited()

spr_idle = sprGoldTotem
spr_walk = sprGoldTotem
spr_hurt = sprGoldTotemHurt
spr_dead = sprGoldTotemDead

snd_hurt = sndHitMetal
snd_dead = sndBreakIce

friction = 3;

//behavior
walk = 0
alarm[1] = 30+random(90)
actTime = 90;

alarm[0] = 2;