/// @description Death
Sleep(100)
var spd = 0;
var dir = 0;
var xx = x;
var yy = y;
if instance_exists(Player)
{
	spd = 0.1;
	dir = point_direction(x,y,Player.x,Player.y) + 180;
	if sprite_index == sprNothing2Death || sprite_index == sprInvertedNothing2Death
	{
		spd += 0.2;
		motion_add(dir,0.1);
	}
	xx = x + lengthdir_x(128,dir);
	yy = y + lengthdir_y(128,dir);
}

repeat(24)
	with instance_create(xx+random(160-rr)-80-(rr*0.5),yy+random(160-rr)-80-(rr*0.5),explo)
		motion_add(dir,spd);

repeat(14)
	with instance_create(xx+random(200-rr)-100-(rr*0.5),yy+random(200-rr)-100-(rr*0.5),explo)
		motion_add(dir,spd);


snd_play_2d(snd_death);

alarm[2] = 0;
alarm[1] = 0;
if sprite_index == sprNothing2Death || sprite_index == sprInvertedNothing2Death
{
	with instance_create(x,y,ScrapBossCorpse)
	{
		mySize = 2;
		motion_add(random(360),5)
		motion_add(other.direction,other.speed)
		speed += 4 + random(6)
		sprite_index = sprNothing2Part
		image_index = 0;
		image_xscale = other.image_xscale
		if speed > 16
		speed = 16
	}
	repeat(6)
	{
		with instance_create(x,y,ScrapBossCorpse)
		{
		mySize = 2;
		motion_add(random(360),5)
		motion_add(other.direction,other.speed)
		speed += 4 + random(6)
		sprite_index = sprNothing2Part
		image_index = irandom_range(1,4)
		image_xscale = other.image_xscale
		if speed > 16
		speed = 16
		}
	}
	if !instance_exists(SurvivalWave)
	{
		if ((!instance_exists(Friend) || instance_number(Friend) < UberCont.racemax-1 || UberCont.beatTheGame))
		{
			if !instance_exists(SurvivalWave)
				with instance_create(x,y,Portal)
				{
					type = 4
					depth = min(other.depth - 1,2);
					image_speed = 0.4;
					alarm[1] = 0;
					sprite_index = sprBigPortalSpawn;
					visible = true;
				}
			with WallHitMe
			{
				instance_destroy();	
			}
			with Player
			{
				flying = 0;
				mask_index=mskPlayer;
			}
		}
		else
		{
			instance_create(x,y,EndGameThrone);
		}
	}
	instance_destroy();
}
else
{
	sprite_index = spr_death;
	image_index = 0;
}

scrDrop(100,0);
scrDrop(80,0);