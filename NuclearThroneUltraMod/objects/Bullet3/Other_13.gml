/// @description Hit Wall
snd_play(sndBouncerHitWall,0.1,true,true,1,false,true,0.75);
if team == 2
{
	dmg = min(dmg + 1, 6);
	if dmg == 5
	{
		sprite_index = sprBouncerBulletScaled1;	
	}
	else if dmg >= 6
	{
		sprite_index = sprBouncerBulletScaled2;
	}
}
speed = max(speed,10 + (hitWall*1.5));
hitWall+=1;
if hitWall > maxWallHits
{
	instance_destroy();
	instance_create(x,y,Dust);
}