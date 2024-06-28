maxhealth = 1000000


spr_idle = sprCampfire
if random(100) < 1
	spr_idle = sprCampfireBear
else if random(100) < 1
	spr_idle = sprCampfireErdeppol;
spr_hurt = sprBarrelHurt
spr_dead = sprBarrelDead
mySize = 1

event_inherited()
image_speed = 0.4


