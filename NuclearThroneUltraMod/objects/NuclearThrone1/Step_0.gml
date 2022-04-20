/// @description El chunko libre
if sprite_index == spr_activate && image_speed > 0
{
	imageIndex += 0.5;
	my_health = maxhealth;
}
if intro
		BackCont.shake = max(BackCont.shake, 8);
if immune
{
	my_health = maxhealth;
	sprite_index = spr_idle;
	if !active && !intro
	{
		speed = 0;
		if instance_exists(Player)
		if (Player.y < y + 128) 
		{
			immune = false;
			scrUnlockCharacter(22,"FOR REACHING THE THRONE#HAVE A SEAT");
		}
	}
	exit;
}
if !active
{
	speed = 0;
	if (my_health < maxhealth)
	{
		immune = true;
		intro = true;
		spr_idle = spr_off;
		spr_hurt = spr_off;
		snd_hurt = sndNothingHurtHigh;
		sprite_index = spr_off;
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
			sprite_index = sprThroneFlameEnd;
		}
		alarm[0] = 30;//Become active time
	}
}
else
{
	if walk > 0 || isInverted
	{
		walk --;
		vspeed += walkDir*3;
		
		if speed > 5
		speed = 5;
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
if my_health < maxhealth*0.2 && difficultyStep < 2
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
}
if (my_health <= 0)
{
	//This is the death event
	with NuclearThrone1Side
	{
		instance_destroy();	
	}
	with ThroneBeam
	{
		snd_play_2d(sndNothingBeamEnd);
		instance_destroy();	
	}
	instance_destroy();
	
}
if !firstEntry && alarm[1] < 15
{
	firstEntry = true;
	snd_play_2d(sndBecomeNothingStartup);
}