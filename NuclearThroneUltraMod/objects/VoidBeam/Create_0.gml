/// @description Init
alarm[0] = 1;
alarm[1] = 120//4 seconds
image_speed = 0.3;
dmg = 5;
team = 2;
wepFire = -1;
isVenomized = 0;
depth = -1;
alarm[2] = 2;
targetX = UberCont.mouse__x;
targetY = UberCont.mouse__y;
curveUpdate = 0.125;
minScale = 0.5;
minStartScale = 0.25;
waveScale = minScale;
waveGrow = 0.025;
waveGrowIncrease = 0.025;
maxScaleOffset = 0.5;
maxScale = image_yscale + maxScaleOffset;
myOrigin = instance_create(x,y,VoidBeamOrigin)
image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
delayAngle = image_angle;
alarm[3] = 1;
alarm[5] = 5;
alarm[6] = 5;
alarm[8] = 2;
alarm[9] = 4;
removeVoid = 1;
if instance_exists(Player)
{
	removeVoid = Player.voidBeamMax/alarm[1];
}