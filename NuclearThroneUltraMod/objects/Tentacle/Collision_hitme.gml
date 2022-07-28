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
			my_health -= other.dmg//lightning does 6 dmg normal tentacle does 3
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.image_angle,4)if other.alarm[1] < 1
			{
				if other.ion=true {
					with Tentacle
						alarm[1] = 12;
					snd_play(sndMeatExplo,0,true)
					snd_play(sndBloodLauncherExplo,0.1,true)
					var dir = point_direction(UberCont.mouse__x,UberCont.mouse__y,hit.x,hit.y);
					var dis = point_distance(UberCont.mouse__x,UberCont.mouse__y,hit.x,hit.y)*0.5;
					var xx = UberCont.mouse__x+lengthdir_x(dis,dir);
					var yy = UberCont.mouse__y+lengthdir_y(dis,dir);
					with instance_create(xx,yy,MeatExplosion) {
						dmg -= 1;
					}
				    repeat(2){
					    with instance_create(x,y,FishBoost)
					    {
							motion_add(random(360),2+random(4) );
					    }
					}
				}
				else
				{
					with other.creator {
						with Tentacle
							alarm[1] = 15;
						snd_play(sndMeatExplo,0,true)
						snd_play(sndBloodLauncherExplo,0.1,true)
						var dir = point_direction(x,y,hit.x,hit.y);
						var dis = point_distance(x,y,hit.x,hit.y)*0.5;
						var xx = x+lengthdir_x(dis,dir);
						var yy = y+lengthdir_y(dis,dir);
						with instance_create(xx,yy,MeatExplosion) {
							dmg -= 1;
						}
					    repeat(2){
						    with instance_create(x,y,FishBoost)
						    {
								motion_add(random(360),2+random(4) );
						    }
						}
					}
				}
			}
			if instance_exists(other.creator) && team != 0 && s < 6 {
				direction = point_direction(x,y,other.creator.x,other.creator.y);
				var theS = 10/s;
				motion_add(direction,theS*0.75);
				x += lengthdir_x(theS,direction);
				y += lengthdir_y(theS,direction);
				if alarm[1] > 1
					alarm[1] ++;
				mp_potential_step(other.creator.x,other.creator.y,theS,false)
				if place_meeting(x,y,Wall)
				{	x = xprevious;
					y = yprevious;
				}
			}
		}
		else
		{
			scrIframeSkipper(0.11);
			with Tentacle
				alarm[1] -= 0.1;
		}
	}
	
}
