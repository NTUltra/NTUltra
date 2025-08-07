/// @description Spawn guardianBullet dead
snd_play(sndBigBallExplo);
instance_create(x,y,WallBreakWallOnly);
with instance_create(x,y,ScorpionBulletHit)
{
	sprite_index = other.hitSprite;
}
var canSpawn = true;
if instance_exists(ThroneExplo)
	canSpawn = false;
else
	with Portal
	{
		if (type == 1 || type == 4) && !inverted
			canSpawn = false;
	}
if canSpawn
{
	var loops = min(GetPlayerLoops(),3);
	var amount = min(7 + loops,12);
	var angle = image_angle;
	var angleStep = 360/amount;
	repeat(amount)
	{
		var offset = 0;
		var pspd = 2;
		repeat(4 + loops)
		{
			if owner > -1 && instance_exists(owner)
				with instance_create(x+lengthdir_x(offset,angle),y+lengthdir_y(offset,angle),projectileToSpawn)
				{
					sprite_index = other.projectileToSpawnSprite;
					motion_add(angle,pspd);
					image_angle = direction
					image_speed *= 2;
					team = other.team
					owner = other.owner;
				}
		offset += 0.5;
		pspd+=0.5;
		}
		angle += angleStep;
	}
}
var drop = scrDrop(90,0);
if shootOutPickup && drop != noone
{
	with drop
	{
		vspeed = 4.5;	
	}
}
scrRaddrop(2);