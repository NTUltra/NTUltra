raddrop = 7
maxhealth = 10//15
meleedamage = 0
size = 2

if UberCont.loops>1
maxhealth=14;

event_inherited()

spr_idle = sprInvertedSnowBotIdle
spr_walk = sprInvertedSnowBotWalk
spr_hurt = sprInvertedSnowBotHurt
spr_dead = sprInvertedSnowBotDead
spr_fire = sprInvertedSnowBotFire

snd_hurt = sndSnowBotHurt
snd_dead = sndSnowBotDead

//behavior
ammo = 10
walk = 0
gunangle = random(360)
alarm[1] = 80

actTime = 14;
hurt_pitch_variation = 0.1
loops = GetPlayerLoops();
acc = 1.6 + clamp(loops*0.15,0,0.3);
maxChargeSpeed = 6.8 + clamp(loops*0.2,0,3);
if loops > 0
	actTime = 8;


