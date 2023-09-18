if other.team != team and other.my_health > 0//the thing I hit must not be myself
{
	//var hit = other;
	var meatDmg = meatDmgReduction;
	//var s = max(0,other.mySize*1.5);
	with other//enemy
	{
		if sprite_index != spr_hurt
		{
			snd_play(snd_hurt, hurt_pitch_variation,true)
			instance_create(other.x,other.y,FishBoost)
			my_health -= other.dmg//lightning does 6 dmg normal tentacle does 3
			sprite_index = spr_hurt
			image_index = 0
			//motion_add(other.image_angle,4)
			if other.alarm[1] < 1
			{
				snd_play(sndMeatExplo,0,true)
				with instance_create(x,y,MeatExplosion) {
					dmg -= meatDmg;
				}
				with instance_create(x,y,FishBoost)
				{
					motion_add(random(360),3);
				}
				other.bloodDelay += 1;
				other.alarm[1] = other.bloodDelay;
			}
			if team != 0 {
				var pullD = other.direction+180;
				//var theS = 7/s;
				motion_add(pullD,5);
				x += lengthdir_x(1,pullD);
				y += lengthdir_y(1,pullD);
				//if team != 0 && alarm[1] > 1
				//	alarm[1] ++;
				if place_meeting(x,y,Wall)
				{	x = xprevious;
					y = yprevious;
				}
			}
		}
		else
		{
			scrIframeSkipper(0.08);
			//other.alarm[1] -= 0.05;
		}
	}
	
}
