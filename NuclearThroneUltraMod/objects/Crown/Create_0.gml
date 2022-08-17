spr_idle = sprCrown0Idle
spr_walk = sprCrown0Walk
newThing = 1
targetx = Player.x
targety = Player.y
with Crown
{
	if other.id != id
		instance_destroy();
}
image_speed = 0.4


alarm[1] = 30+random(90)
alarm[0] = 10+random(10)
maxSpeed = 2;
walk = 0

debug("CREATE A CROWN");