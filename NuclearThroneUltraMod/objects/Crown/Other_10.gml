/// @description Try spawn tiny kraken
if alarm[4] > 0 || alarm[5] > 0
{
	if instance_exists(Player)
	{
		if point_distance(x,y,Player.x,Player.y) > 150
		{
			scrForcePosition60fps();
			x = Player.x;
			y = Player.y;
		}
	}
	repeat(3)
	{
		with instance_create(x,y,FishBoost)
		{
			motion_add(random(360),random(2));
		}
		with instance_create(x,y,Dust)
		{
			sprite_index = sprBubble;
			motion_add(random(360),random(2));
		}
	}
	snd_play(sndRoll);
	snd_play(sndBloodLauncher,0.1);
	instance_create(x,y,TinyKraken);
	
	/// @description No explosion but instead spikes
	instance_create(x,y,SmallWallBreak);
	var amount = 5;
	var angle = image_angle;
	var angleStep = 360/amount;
	snd_play(choose(sndWater1,sndWater2) );
	repeat(amount)
	{
		with instance_create(x,y,Tentacle)
		{
			image_angle = angle+(random(20)-10);
			creator=other.id;
			team = 2
			ammo = 12
			event_perform(ev_alarm,0)
			visible = 0
			with instance_create(x,y,LightningSpawn)
			{
			sprite_index=sprTentacleSpawn
			image_angle = other.image_angle
			}

			with instance_create(x,y,FishBoost)
			{
			motion_add(angle+random(30)-15,4+random(4) );
			}

		}
		angle += angleStep;
	}
	BackCont.shake += 5;
}