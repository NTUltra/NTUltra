raddrop = 30
maxhealth = 37
meleedamage = 5
mySize = 2

event_inherited()

spr_idle = sprGoldScorpionIdle
spr_walk = sprGoldScorpionWalk
spr_hurt = sprGoldScorpionHurt
spr_dead = sprGoldScorpionDead
spr_fire = sprGoldScorpionFire

snd_hurt = sndGoldScorpionHurt;
snd_dead = sndGoldScorpionDead;
snd_melee = sndGoldScorpionMelee

//behavior
ammo = 10
walk = 0
if instance_exists(Player)
	gunangle = point_direction(x,y,Player.x,Player.y);
else
	gunangle = random(360)
alarm[1] = 30+random(90)



