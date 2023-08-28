/// @description Different angle

// Inherit the parent event
event_inherited();
originalAngle = 0;
spr_idle = sprSquareBotIdle;
spr_walk = sprSquareBotWalk;
spr_hurt = sprSquareBotHurt;
spr_dead = sprSquareBotDead;
spr_fire = sprSquareBotFire;

originalAngle = 0;
dir = choose(originalAngle,originalAngle + 90, originalAngle + 180, originalAngle + 270);