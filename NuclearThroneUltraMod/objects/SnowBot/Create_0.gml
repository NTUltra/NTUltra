raddrop = 5
maxhealth = 14//15
meleedamage = 0
size = 2

event_inherited()

spr_idle = sprSnowBotIdle
spr_walk = sprSnowBotWalk
spr_hurt = sprSnowBotHurt
spr_dead = sprSnowBotDead
spr_fire = sprSnowBotFire

snd_hurt = sndSnowBotHurt
snd_dead = sndSnowBotDead

//behavior
ammo = 10
walk = 0
gunangle = random(360)
alarm[1] = 80

hurt_pitch_variation = 0.1
loops = GetPlayerLoops();
acc = 1.05 + clamp(loops*0.1,0,0.3);
maxChargeSpeed = 6.8 + clamp(loops*0.2,0,3);