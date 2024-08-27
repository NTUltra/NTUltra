/// @description Adjust

// Inherit the parent event
event_inherited();
hitShrink += 0.5;
if instance_exists(Player) && Player.ultra_got[74] && Player.altUltra
{
	hasWallCollision = false;
	hitShrink -= 0.5;
}
nomscale -= 0.2;
wallScale += 0.2;
acc += 5;
maxSpeed += 4;
ptime = 3;
dmg -= 2;