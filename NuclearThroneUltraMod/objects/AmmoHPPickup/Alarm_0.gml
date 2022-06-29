if blink < 0 {
    instance_create(x, y, SmallChestFade)
	if supercursed {
		var ang = random(360)
		snd_play(sndExplosionL)
		repeat(5) {
			instance_create(x + lengthdir_x(16,ang), y + lengthdir_y(16,ang), Explosion)
			ang += 72
		}
	}
	if cursed {
		var ang = random(360)
		snd_play(sndExplosion)
		repeat(3) {
			instance_create(x + lengthdir_x(8,ang), y + lengthdir_y(8,ang), SmallExplosion)
			ang += 120
		}
	}
	if atomUltraD
	{
		with instance_create(x,y,Rad)
		{
			motion_add(other.direction,other.speed+1)
			motion_add(random(360),3)
			repeat(speed)
			speed *= 0.9
		}
		snd_play(sndLightning1,0.1);
		var langle = random(360);
		var langstep = 360/4;
		repeat(4)
		{
			with instance_create(x,y,UltraLightning)
			{
				image_angle = langle;
				team = 2
				ammo = 8//60
				///if Player.ultra_got[59]=1 
				///ammo+=4;
				event_perform(ev_alarm,0)
				visible = 0
				with instance_create(x,y,LightningSpawn)
					image_angle = other.image_angle
			}
			langle += langstep;
		}
	}
    instance_destroy();
}
else {
    alarm[0] = 2
    blink -= 1
    if visible = 1
    visible = 0
    else visible = 1
	
	if atomUltraD && (blink < 10 || blink % 3 == 0)
	{
		if visible
		{
			if !audio_is_playing(sndSpark1)&&!audio_is_playing(sndSpark2)
				snd_play(choose(sndSpark1,sndSpark2))

			with instance_create(x,y,UltraLightning)
			{
				image_angle = random(360);
				team = 2
				ammo = 5//60
				///if Player.ultra_got[59]=1 
				///ammo+=4;
				event_perform(ev_alarm,0)
				visible = 0
				with instance_create(x,y,LightningSpawn)
					image_angle = other.image_angle
			}
		}
		else
		{
			with instance_create(x,y,Rad)
			{
				motion_add(other.direction,other.speed+1)
				motion_add(random(360),3)
				repeat(speed)
				speed *= 0.9
			}
		}
	}
}
