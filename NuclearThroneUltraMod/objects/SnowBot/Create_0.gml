raddrop = 4
maxhealth = 16//15
meleedamage = 0
mySize = 2

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
actTime = 17;
hurt_pitch_variation = 0.1
loops = GetPlayerLoops();
acc = 1.1 + clamp(loops*0.15,0,0.3);
maxChargeSpeed = 6.8 + clamp(loops*0.2,0,3);
if loops > 0
	actTime = 10;

sleeping = false;
if instance_exists(Player) && Player.skill_got[29]
	sleeping = true;