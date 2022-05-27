raddrop = 40
maxhealth = 100
meleedamage = 0
size = 2

event_inherited()

spr_idle = sprGoldTotemIdle
spr_walk = sprGoldTotemIdle
spr_hurt = sprGoldTotemHurt
spr_dead = sprGoldTotemDead

snd_hurt = sndHitMetal
snd_dead = sndBreakIce

friction = 3;

//behavior
walk = 0
alarm[1] = 30+random(90)
actTime = 90;

