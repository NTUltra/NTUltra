/// @description Lerpy
y += yOffset;
scrBoltTrailTop(trailColour,0.1,trailScale);
y -= yOffset;
if UberCont.normalGameSpeed == 60
{
	time += timeIncrease * 0.5;
}
else
{
	time += timeIncrease;
}
var tl = clamp(time,0,1);
x = lerp(xstart,targetX,tl);
y = lerp(ystart,targetY,tl);
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
yOffset = lerp(0,apex,toppy);
if time >= 1 || (time >= 0.9 && !place_meeting(x,y + yOffset,Wall)) && (!instance_exists(Wall) || collision_point(x,y + yOffset,Floor,false,false))
{
	instance_destroy();
	snd_play(sndArrowRainLand);//TEMP
	instance_create(x,y,Dust);
	BackCont.shake += 2
	with instance_create(x,y + yOffset,Bolt)
	{
		speed = 12;
		direction = other.targetAngle;
		image_angle = direction;
		image_index = 1;
		image_speed = 0;
		sprite_index = sprRainBolt;
		dmg = 7;
	}
	y += yOffset;
	scrBoltTrailTop(trailColour,0.1,trailScale);
	y -= yOffset;
}
else if time >= 1
{
	instance_destroy();
	snd_play(sndBoltHitWall);
}