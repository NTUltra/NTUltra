raddrop = 20
maxhealth = 55//54
mySize = 2

event_inherited()
meleedamage = 5

spr_idle = sprInvertedRhinoFreakIdle
spr_walk = sprInvertedRhinoFreakWalk
spr_hurt = sprInvertedRhinoFreakHurt
spr_dead = sprInvertedRhinoFreakDead



snd_hurt = sndRhinoFreakHurt
snd_dead = sndRhinoFreakDead
snd_melee = sndRhinoFreakMelee


//behavior
alarm[1] = 80+random(10)

walk = 0

sleeping = false;
if instance_exists(Player) && Player.skill_got[29]
	sleeping = true;