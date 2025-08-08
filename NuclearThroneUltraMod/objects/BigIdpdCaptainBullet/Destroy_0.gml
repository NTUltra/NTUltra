/// @description Spawn guardianBullet dead
snd_play(sndBigBallExplo);
instance_create(x,y,WallBreakWallOnly);
var canSpawn = true;
/*
if instance_exists(ThroneExplo)//Last death
	canSpawn = false;
else
	with Portal
	{
		if (type == 1 || type == 4) && !inverted
			canSpawn = false;
	}
*/
if canSpawn
{
	var amount = 9;
	var angle = image_angle;
	var angleStep = 360/amount;
	repeat(amount)
	{
		var offset = 0;
		var pspd = 4;
		repeat(8)
		{
			with instance_create(x+lengthdir_x(offset,angle),y+lengthdir_y(offset,angle),projectileToSpawn)
			{
				sprite_index = other.projectileToSpawnSprite;
				typ = other.typ;
				motion_add(angle,pspd);
				image_angle = direction
				image_speed *= 2;
				team = other.team;
				if team == 2
					event_user(15);
				owner = other.owner;
			}
			offset += 0.5;
			pspd+=0.4;
		}
		angle += angleStep;
	}
}
scrDrop(80,0);
scrRaddrop(2);