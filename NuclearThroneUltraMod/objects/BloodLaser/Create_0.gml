/// @description Init

// Inherit the parent event
event_inherited();

startImg = sprBloodLaserStart;
endImg = sprBloodLaserEnd;

if instance_exists(Player) && Player.ultra_got[74] && Player.altUltra
	hasWallCollision = false;