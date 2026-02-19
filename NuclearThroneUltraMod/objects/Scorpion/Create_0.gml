raddrop = 11
maxhealth = 15
mySize = 2

loops = GetPlayerLoops();
if loops > 0
	maxhealth += 5;
event_inherited()

meleedamage = 5

spr_idle = sprScorpionIdle
spr_walk = sprScorpionWalk
spr_hurt = sprScorpionHurt
spr_dead = sprScorpionDead
spr_fire = sprScorpionFire

snd_hurt = sndScorpionHit
snd_dead = sndScorpionDie
snd_melee = sndScorpionMelee

//behavior
ammo = 10
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
replace=false;
range = 170;
if instance_exists(Player)
{
	if loops > 0
		range += 90;
	if random(30) < 1 + min(26,loops * 3) and (Player.subarea > 1 || loops > 0)
	{
		replace=true;
		instance_destroy()
		instance_create(x,y,GoldScorpion)
	}
}

