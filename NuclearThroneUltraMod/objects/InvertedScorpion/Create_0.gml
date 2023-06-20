raddrop = 13
maxhealth = 9
meleedamage = 5
mySize = 2

if UberCont.loops>1
maxhealth=12;

event_inherited()
spr_idle = sprInvertedScorpionIdle
spr_walk = sprInvertedScorpionWalk
spr_hurt = sprInvertedScorpionHurt
spr_dead = sprInvertedScorpionDead
spr_fire = sprInvertedScorpionFire

snd_hurt = sndScorpionHit
snd_dead = sndScorpionDie
snd_melee = sndScorpionMelee

//behavior
ammo = 10
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
replace=false;
if instance_exists(Player)
{
	if random(30) < 1 + min(26,Player.loops * 3) and (Player.subarea > 1 || Player.loops > 0)
	{
		replace=true;
		instance_destroy()
		instance_create(x,y,InvertedGoldScorpion)
	}
}

