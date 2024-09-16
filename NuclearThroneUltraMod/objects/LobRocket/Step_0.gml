/// @description Lerpy

if UberCont.normalGameSpeed == 60
{
	time += timeIncrease * 0.5;
}
else
{
	time += timeIncrease;
}
var tl = clamp(time,0,1);
var toppy = tl;
if tl > 0.5
{
	toppy = 2 - tl*2;
	image_angle = targetAngle;
}
else
{
	image_angle = baseAngle;
	toppy = tl * 2;
}
targetX = lerp(originalTargetX,UberCont.mouse__x,tl * accuracy);
targetY = lerp(originalTargetY,UberCont.mouse__y - 8,tl * accuracy);
x = lerp(xstart,targetX,tl);
y = lerp(ystart,targetY,tl);
if isSin
	x = x + sin(toppy * waveyStrength) * wavey;
else
	x = x + cos(toppy * waveyStrength) * wavey;
yOffset = lerp(0,apex,toppy);
if time >= 1 || (time >= 0.9 && !place_meeting(x,y + yOffset,Wall)) && (!instance_exists(Wall) || collision_point(x,y + yOffset,Floor,false,false))
{
	instance_destroy();
	snd_play(sndMissileLand,0.1);
	instance_create(x,y,Smoke);
	BackCont.shake += 2
	with instance_create(x,y + yOffset - 8,Missile)
	{
		maxSpeed += 6;
		speed = 12;
		direction = other.targetAngle;
		image_angle = direction;
		image_index = 1;
		image_speed = 0;
		sprite_index = sprMissile;
	}
	y += yOffset;
	//scrBoltTrailTop(trailColour,0.1,trailScale);
	with instance_create(x,y,JumpDust)
	{
		sprite_index = sprSmoke;	
	}
	y -= yOffset;
}
else if time >= 1
{
	instance_destroy();
	//snd_play(sndExplosionS);
}