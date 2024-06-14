raddrop = 35
maxhealth = 35
mySize = 2

event_inherited()
meleedamage = 5

spr_idle = sprInvertedGoldScorpionIdle
spr_walk = sprInvertedGoldScorpionWalk
spr_hurt = sprInvertedGoldScorpionHurt
spr_dead = sprInvertedGoldScorpionDead
spr_fire = sprInvertedGoldScorpionFire

snd_hurt = sndGoldScorpionHurt;
snd_dead = sndGoldScorpionDead;
snd_melee = sndGoldScorpionMelee

//behavior
ammo = 20
walk = 0
range = 220;
if instance_exists(Player)
{
	if Player.loops > 0
		range += 70;
	gunangle = point_direction(x,y,Player.x,Player.y);
}
else
	gunangle = random(360);
alarm[1] = 30+random(90)


sleeping = false;
if instance_exists(Player) && Player.skill_got[29]
	sleeping = true;
