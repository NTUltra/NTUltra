/// @description Death
Sleep(100)
repeat(42)
instance_create(x+random(200-rr)-100-(rr*0.5),y+random(300-rr)-150-(rr*0.5),explo)

repeat(30)
instance_create(x+random(300-rr)-150-(rr*0.5),y+random(400-rr)-200-(rr*0.5),explo)


snd_play_2d(snd_death);

alarm[2] = 0;
alarm[1] = 0;
if sprite_index == sprNothing2Death || sprite_index == sprInvertedNothing2Death
{
	with instance_create(x,y,ScrapBossCorpse)
	{
		size = 2;
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
		size = 2;
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
	instance_destroy();
}
else
{
	sprite_index = spr_death;
	image_index = 0;
}

scrDrop(100,0);
scrDrop(100,0);
scrDrop(80,0);
scrDrop(80,0);