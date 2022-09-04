/// @description Elementor lightning
if instance_exists(enemy)
with Player
{
	if ultra_got[96] && !altUltra//ELEMENTOR lightning ultra
	{
		if random(10)<6 && point_distance(x,y,instance_nearest(x,y,enemy).x,instance_nearest(x,y,enemy).y)<300 {//constant sparks annoy me so only if enemy is close
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
	}
}
alarm[11] = 30;