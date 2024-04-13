/// @description El chunko libre
if sprite_index == spr_activate && image_speed > 0
{
	imageIndex += 0.5;
	my_health = maxhealth;
}
if alarm[2] > 0
	y = yprevious;
if intro
		BackCont.shake = max(BackCont.shake, 8);
if immune
{
	my_health = maxhealth;
	sprite_index = spr_idle;
	speed = 0;
	if !active && !intro
	{
		if instance_exists(Player)
		if (Player.y < y + 128 && !instance_exists(becomenemy) && !instance_exists(IDPDTank))
		{
			immune = false;
			scrUnlockCharacter(22,"FOR REACHING THE THRONE#HAVE A SEAT");
		}
	}
	with enemy
	{
		if y < other.y + 32
		{
			if object_index != NuclearThrone1 && object_index != NuclearThrone1Side
			&& object_index != InvertedNuclearThrone1
			{
				vspeed += 6;
				walk += 5;
				y = max(other.y + 32,y);
			}
		}
	}
	exit;
}
if !active
{
	with enemy
	{
		if y < other.y + 32
		{
			if object_index != NuclearThrone1 && object_index != NuclearThrone1Side
			&& object_index != InvertedNuclearThrone1
			{
				vspeed += 6;
				walk += 5;
				y = max(other.y + 32,y);
			}
		}
	}
	speed = 0;
	if (my_health < maxhealth)
	{
		immune = true;
		intro = true;
		spr_idle = spr_off;
		spr_hurt = spr_off;
		snd_hurt = sndNothingHurtHigh;
		sprite_index = spr_off;
		image_index = 0;
		with MusCont
		{
			audio_stop_sound(song);	
		}
		if audio_is_playing(sndBecomeNothingIdle)
				audio_stop_sound(sndBecomeNothingIdle);
		with ThroneFlame
		{
			yOffset -= 10;
			image_index = 0;
			if isInverted
				sprite_index = sprInvertedThroneFlameEnd;
			else
				sprite_index = sprThroneFlameEnd;
		}
		alarm[0] = 30;//Become active time
	}
}
else
{
	if walk > 0
	{
		walk --;
		if UberCont.normalGameSpeed == 60
			vspeed += walkDir;
		else
			vspeed += walkDir*2;
		//if isInverted && vspeed > 0 && loops < 1
		//	vspeed *= 0.83;
	}
}
if my_health < maxhealth*0.6 && difficultyStep < 1
{
	difficultyStep ++;
	snd_play_2d(sndNothingMidHP);
	snd_hurt = sndNothingHurtMid;
	aTime = max(aTime-1,1);
	with NuclearThrone1Side
	{
		snd_hurt = sndNothingHurtMid;
		firerate = max(firerate - 1, 1);
		maxAmmo = max(maxAmmo - 2, 3);
	}
}
if my_health < maxhealth*0.3 && difficultyStep < 2
{
	difficultyStep ++;
	snd_play_2d(sndNothingLowHP);
	snd_hurt = sndNothingHurtLow;
	aTime = max(aTime-1,1);
	with NuclearThrone1Side
	{
		snd_hurt = sndNothingHurtLow;
		firerate = max(firerate - 1, 1);
		maxAmmo = max(maxAmmo - 2, 3);
	}
	if isInverted
	{
		foreverBeam = true;
		if !instance_exists(ThroneBeam)
			event_user(0);
	}
}
if (my_health <= 0)
{
	//This is the death event
	with NuclearThrone1Side
	{
		instance_destroy();	
	}
	audio_stop_sound(sndNothingBeamLoop);
	snd_play_2d(sndNothingBeamEnd);
	with ThroneBeam
	{
		event_user(0);
	}
	instance_destroy();
	
}
if !firstEntry && alarm[1] < 15
{
	firstEntry = true;
	snd_play_2d(sndBecomeNothingStartup);
}
if isInverted
{
	var s = 0.1;
	if UberCont.normalGameSpeed == 60
		s = 0.05;
	with BigGuardianBulletSpawn {
		vspeed += s;
		if x > other.x
		{
			x -= s;
		}
		else if x < other.x
		{
			x += s;	
		}
	}
	with BigGuardianBullet {
		vspeed += s;
		if x > other.x
		{
			x -= s;
		}
		else if x < other.x
		{
			x += s;	
		}
	}
	var msk = mask_index;
	mask_index = mskInvertedNothingFuckWall;
	var hitWalls = ds_list_create();
	var amountOfWalls = instance_place_list(x,y+140,Wall,hitWalls,false);
	if amountOfWalls > 0
	{
		var freeze = UberCont.opt_freeze;
		UberCont.opt_freeze *= 0.2;
		var shake = UberCont.opt_shake;
		UberCont.opt_shake *= 0.01;
		if walkDir > 0
			walkDir = 0.7;
		while(amountOfWalls > 0)
		{
			for (var i = 0; i < amountOfWalls; i++) {
				with hitWalls[| i] {
					instance_destroy();
					with instance_create(x,y,FloorExplo)
					{
						alarm[3] = 0;
						canSpawnSwarm = false;
					}
				}
			}
			ds_list_clear(hitWalls);
			amountOfWalls = instance_place_list(x,y+140,Wall,hitWalls,false);
		}
		UberCont.opt_freeze = freeze;
		UberCont.opt_shake = shake;
	}
	ds_list_destroy(hitWalls);
	mask_index = msk;
}
if speed > maxSpeed
	speed = maxSpeed;