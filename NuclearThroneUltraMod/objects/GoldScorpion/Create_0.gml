raddrop = 30
maxhealth = 37
mySize = 2

event_inherited()
meleedamage = 5;

spr_idle = sprGoldScorpionIdle
spr_walk = sprGoldScorpionWalk
spr_hurt = sprGoldScorpionHurt
spr_dead = sprGoldScorpionDead
spr_fire = sprGoldScorpionFire

snd_hurt = sndGoldScorpionHurt;
snd_dead = sndGoldScorpionDead;
snd_melee = sndGoldScorpionMelee

//behavior
range = 200;
ammo = 10
walk = 0
if instance_exists(Player)
{
	if Player.loops > 0
		range += 70;
	gunangle = point_direction(x,y,Player.x,Player.y);
}
else
	gunangle = random(360)
alarm[1] = 30+random(90)

sleeping = false;
if instance_exists(Player) && Player.skill_got[29]
	sleeping = true;