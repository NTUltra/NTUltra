/// @description Stick to wall
raddrop = 8
maxhealth = 25
meleedamage = 0
mySize = 2

// Inherit the parent event
event_inherited();
alarm[1] = 90;
actTime = 95;
originalAngle = choose(0,90,180,270);
moveDir = originalAngle + choose(90,-90);
acc = 1.2;
maxSpeed = 3.5;
projectileSpeed = 5;
spr_idle = sprWallBotIdle;
spr_walk = sprWallBotWalk;
spr_hurt = sprWallBotHurt;
spr_dead = sprWallBotDead;
spr_fire = sprWallBotFire;
ignoreOverlap = true;
image_angle = originalAngle + 180;
doCos = false;
switch originalAngle {
	case 0:
		image_angle = originalAngle + 180;
	break;
	case 90:
		image_angle = originalAngle;
		image_xscale = -1;
		doCos = true;
	break;
	case 180:
		image_angle = 0;
	break;
	case 270:
		image_angle = originalAngle;
		mask_index = mskWallBotBottomStick;// Should be
		image_xscale = -1;
		doCos = true;
	break;
}
speed = 0;
alarm[0] = 20;
type = 0;

sleeping = false;
if instance_exists(Player) && Player.skill_got[29]
	sleeping = true;