/// @description Elementor lightning
if instance_exists(enemy)
with Player
{
	if random(10)<6 && point_distance(x,y,instance_nearest(x,y,enemy).x,instance_nearest(x,y,enemy).y)<300 {//constant sparks annoy me so only if enemy is close
		if (other.lightning)
		{
			snd_play(choose(sndSpark1,sndSpark2),0.1);
			repeat(irandom_range(1,4))
			{
				with instance_create(x,y,Lightning)
				{
					image_angle = random(360);
					team = other.team
					ammo = irandom_range(5,12)
					event_perform(ev_alarm,0)
					visible = 0
					with instance_create(x,y,LightningSpawn)
						image_angle = other.image_angle
				}
			}
		}
		else
		{
			snd_play(choose(sndWater1,sndWater2),0.1);
			repeat(irandom_range(1,4))
			{
				with instance_create(x,y,Tentacle)
				{
					image_angle = random(360);
					team = other.team
					ammo = irandom_range(6,13)
					event_perform(ev_alarm,0)
					visible = 0
					with instance_create(x,y,LightningSpawn)
					{
					sprite_index=sprTentacleSpawn
					image_angle = other.image_angle
					}

					with instance_create(x,y,FishBoost)
					{
						motion_add(other.image_angle,2+random(4) );
					}
				}
			}
		}
	}
}
lightning = !lightning;
alarm[11] = 30;