if other.team != team and other.my_health > 0//the thing I hit must not be myself
{
	with other//enemy
	{
		if sprite_index != spr_hurt
		{
			snd_play(snd_hurt, hurt_pitch_variation,true)
			instance_create(other.x,other.y,FishBoost)
			DealDamage(other.dmg);
			if (instance_exists(Player) && Player.moodSwing) && team != 0
			{
				speed = 0;
				var duration = 2;
				if alarm[1] > 0
				{
					alarm[11] += duration
					alarm[1] += duration;
				}
				if instance_exists(myConfusion)
				{
					with myConfusion
					{
						alarm[0] += duration;
						image_speed = 0.4;
						image_index = 0;
					}
				}
				else
				{
					myConfusion = instance_create(x,y-max(sprite_height*0.5,8),HumphryConfuse)
					with myConfusion {
						myEnemy = other.id;
						image_xscale = choose(1,-1);
						image_speed = 0.4;
						sprite_index = sprEnemyConfusion;
						alarm[0] = duration;
					}
				}
			}
			else if team != 0 {
				var pullD = other.direction+180;
				motion_add(pullD,2);
			}
			sprite_index = spr_hurt
			image_index = 0
			if other.alarm[1] < 1
			{
				snd_play(sndMeatExplo,0,true)
				with instance_create(x,y,MeatExplosion) {
					sprite_index = sprTentacleMeatExplosion;
					dmg -= 1;
				}
				with instance_create(x,y,FishBoost)
				{
					motion_add(random(360),3);
				}
				other.bloodDelay += 1;
				other.alarm[1] = other.bloodDelay;
			}
		}
		else
		{
			scrIframeSkipper(0.065);
		}
	}
}
