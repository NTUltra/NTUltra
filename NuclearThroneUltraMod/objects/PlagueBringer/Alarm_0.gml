/// @description End the plague
instance_destroy();
var d = dmg;
var da = dmgAdd;
with Player
{
	BackCont.shake += min(50,other.totalRadsCollected);
	BackCont.shake += 10;
	var healAmount = 0;
	healAmount = round(min(4,round(other.totalRadsCollected*0.1)));
	if other.totalRadsCollected > 0
	{
		snd_play(sndMeatExplo);
		snd_play(sndExplosionS);
	}
	if other.totalRadsCollected > 10
	{
		snd_play(sndBlobExploS);
		snd_play(sndTermite);
		var dir = random(360);
		repeat(3)
		{
			with instance_create(x + lengthdir_x(16,dir),y + lengthdir_y(16,dir),BloodStreak)
			{
				direction = dir;
				image_angle = direction + random_range(15,-15);
				motion_add(image_angle,3);
				sprite_index = sprInkBlobSplat;
				image_xscale += random_range(-0.1,0.1);
				image_yscale += random_range(-0.1,0.1);
			}
			with instance_create(x + lengthdir_x(16,dir),y + lengthdir_y(16,dir),InkBlob)
			{
				dmg += d;
				dmgAdd += da;
				team = 2;
				direction = dir;
				speed = 0;
			}
			dir += 120;
		}
		with instance_create(x,y,Termite)
		{
			dmg += d;
			motion_add(random(360),3)
			team = 2;
		}
	}
	if other.totalRadsCollected > 30
	{
		snd_play(sndBlobExploL);
		var dir = random(360);
		instance_create(x,y,BigWallBreakCircle);
		repeat(8)
		{
			with instance_create(x + lengthdir_x(64,dir),y + lengthdir_y(64,dir),BloodStreak)
			{
				direction = dir;
				image_angle = direction + random_range(15,-15);
				motion_add(image_angle,3);
				sprite_index = sprInkBlobSplat;
				image_xscale += random_range(-0.1,0.1);
				image_yscale += random_range(-0.1,0.1);
			}
			with instance_create(x + lengthdir_x(64,dir),y + lengthdir_y(64,dir),InkBlob)
			{
				dmg += d;
				dmgAdd += da;
				team = 2;
				direction = dir;
				speed = 0;
			}
			dir += 45;
		}
		with instance_create(x,y,Termite)
		{
			dmg += other.dmg;
			motion_add(random(360),3)
			team = 2;
		}
	}
					
	scrHeal(healAmount);
	if healAmount > 2
		snd_play_2d(sndDoctorPlagueBigHeal);
	else if healAmount > 0
		snd_play_2d(sndDoctorPlagueSmallHeal);
	else
		snd_play_2d(sndMeatExplo);
	Sleep(20);
}