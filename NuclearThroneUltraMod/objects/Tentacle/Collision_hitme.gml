if other.team != team and other.my_health > 0&&other.id != creator//the thing I hit must not be myself
{
	var hit = other;
	var s = max(0,other.size*1.5);
	with other//enemy
	{
		if sprite_index != spr_hurt
		{
			snd_play(snd_hurt, hurt_pitch_variation,true)
			instance_create(other.x,other.y,FishBoost)
			if instance_exists(Player)
			{
				if Player.race=24//Elementor's passive
					my_health -= other.dmg+1;
				else
					my_health -= other.dmg
			}
			else
				my_health -= other.dmg//lightning does 6 dmg normal tentacle does 3
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.image_angle,4)
			if other.ion=true
			{
				instance_create(UberCont.mouse__x,UberCont.mouse__y,MeatExplosion)
				/*
				with instance_create(x,y,BloodStreak){
					image_angle = random(360);
					}
				*/
			}
			else
			{
				with other.creator{
					if object_index=Player{
						Player.alarm[3]=max(10,Player.alarm[3]);
					}
					snd_play(sndMeatExplo,0,true)
					snd_play(sndBloodLauncherExplo,0.1,true)
					var dir = point_direction(x,y,hit.x,hit.y);
					var dis = point_distance(x,y,hit.x,hit.y)*0.5;
					var xx = x+lengthdir_x(dis,dir);
					var yy = y+lengthdir_y(dis,dir);
					instance_create(xx,yy,MeatExplosion)
					/*
					with instance_create(xx,yy,BloodStreak){
						image_angle = random(360);
						}
					*/
				    repeat(2){
					    with instance_create(x,y,FishBoost)
					    {
							motion_add(random(360),2+random(4) );
					    }
					}
				}
			}
			if instance_exists(other.creator) && team != 0 {
				direction = point_direction(x,y,other.creator.x,other.creator.y);
				motion_add(direction,3/s);
				//mp_potential_step(other.creator.x,other.creator.y,2/s,false)
				if place_meeting(x,y,Wall)
				{	x = xprevious;
					y = yprevious;	
				}
			}
		}
		else
		{
			image_index += 0.2;//iframe skipper
		}
	}
	
}
