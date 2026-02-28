function scrBlankArmour() {
	if ultra_got[64]//BLANK ARMOUR
	{
		var baseD = 19 + loops;
		with enemy{
			if point_distance(x,y,other.x,other.y) < 450
			{
				//if sprite_index!=spr_hurt{
				snd_play(snd_hurt, hurt_pitch_variation,true)
				with instance_create(x,y,Flash)
				{
					alpha = 0.4;
					alarm[1] = 4;
				}
				Sleep(20);
				direction = point_direction(x,y,Player.x,Player.y)+180;
				if place_free(x+lengthdir_x(4,direction),y)
					x += lengthdir_x(4,direction)
				if place_free(x,y+lengthdir_y(4,direction))
					y += lengthdir_y(4,direction)


				DealDamage(baseD + ceil(my_health*0.1),false,true,false);
				sprite_index = spr_hurt
				image_index = 0
				//motion_add(other.direction,6)

				//with instance_create(x,y,SharpTeeth)
				//owner=other.id;
				//}
				if alarm[1] > 0
					alarm[1] += 10;
				motion_add(other.direction,10);
			}
		}
		with projectile
		{
			if team!=other.team
			{
				if isGrenade
					instance_destroy(id,false);
				else
					instance_destroy();
			}
		}

	}
	if ultra_got[61] && altUltra {
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


}
