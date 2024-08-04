raddrop = 15
maxhealth = 75//80
mySize = 2

event_inherited()
meleedamage = 5
spr_idle = sprRhinoFreakIdle
spr_walk = sprRhinoFreakWalk
spr_hurt = sprRhinoFreakHurt
spr_dead = sprRhinoFreakDead



snd_hurt = sndRhinoFreakHurt
snd_dead = sndRhinoFreakDead
snd_melee = sndRhinoFreakMelee


//behavior
alarm[1] = 20+random(10)

walk = 0

with instance_create(x,y,WallBreak)
	canSpawnSwarm = false;
	
if (instance_exists(Player) && !Player.justAsheep) sleeping = false;;
if instance_exists(Player) && Player.skill_got[29]
	sleeping = true;