///xxx();
// /@description
///@param
function scrSerpentArmourStrike(){
	if spr_idle == sprMutant16DIdle
		snd_play(sndRoll);
	else
		snd_play_2d(sndSnake);
	with instance_create(x,y,SerpentStrike)
	{
		myHead = instance_create(x,y,SerpentStrikeAnimateHead);
		image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
		originalAngle = image_angle;
		if dcos(image_angle) < 0
			flipped = -1;
		team = other.team;
		dmg *= 1+Player.level*0.1;//0.1
		if other.bskin == 1
		{
			sprite_index = sprSerpentStrikeB;
			sprHead = sprSerpentStrikeHeadB;
		}
		if other.spr_idle = sprMutant16DIdle
		{
			sprOutline = sprKrakenStrikeOutline;
			if other.ultra_got[63] {
				sprite_index = sprFrostKrakenStrikeHead;
				sprHead = sprFrostKrakenStrike;
			}
			else
			{
				sprHead = sprKrakenStrikeHead;
				sprite_index = sprKrakenStrike;
			}
		} else if other.ultra_got[63] {
			sprite_index = sprFrostSerpentStrike;
			sprHead = sprFrostSerpentStrikeHead;
		}
		event_perform(ev_alarm,0);
		currentFrameAmount = 0;
			
	}
    
	if ultra_got[61] && !Player.altUltra//MEGA ARMOUR STRIKE
	{
		scrCollectAmmo(0.5);
		scrHeal(1);
		with instance_create(x,y,SerpentStrike)
		{
			perFrame -= 2;
			myHead = instance_create(x,y,SerpentStrikeAnimateHead);
			with myHead
				image_speed += 0.1;
			image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)-30;
			originalAngle = image_angle+20;
			if dcos(image_angle) < 0
				flipped = -1;
			team = other.team;
			dmg *= 1+Player.level*0.1;//0.1
			if other.bskin == 1
			{
				sprite_index = sprSerpentStrikeB;
				sprHead = sprSerpentStrikeHeadB;
			}
			if other.spr_idle = sprMutant16DIdle
			{
				sprOutline = sprKrakenStrikeOutline;
				if other.ultra_got[63] {
					sprite_index = sprFrostKrakenStrikeHead;
					sprHead = sprFrostKrakenStrike;
				}
				else
				{
					sprHead = sprKrakenStrikeHead;
					sprite_index = sprKrakenStrike;
				}
			} else if other.ultra_got[63] {
				sprite_index = sprFrostSerpentStrike;
				sprHead = sprFrostSerpentStrikeHead;
			}
			event_perform(ev_alarm,0);
			currentFrameAmount = 0;
			
		}
    
		with instance_create(x,y,SerpentStrike)
		{
			perFrame -= 1;
			myHead = instance_create(x,y,SerpentStrikeAnimateHead);
			with myHead
				image_speed -= 0.1;
			image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+30;
			originalAngle = image_angle-20;
			if dcos(image_angle) < 0
				flipped = -1;
			team = other.team;
			dmg *= 1+Player.level*0.1;//0.1
			if other.bskin == 1
			{
				sprite_index = sprSerpentStrikeB;
				sprHead = sprSerpentStrikeHeadB;
			}
			if other.spr_idle = sprMutant16DIdle
			{
				sprOutline = sprKrakenStrikeOutline;
				if other.ultra_got[63] {
					sprite_index = sprFrostKrakenStrikeHead;
					sprHead = sprFrostKrakenStrike;
				}
				else
				{
					sprHead = sprKrakenStrikeHead;
					sprite_index = sprKrakenStrike;
				}
			} else if other.ultra_got[63] {
				sprite_index = sprFrostSerpentStrike;
				sprHead = sprFrostSerpentStrikeHead;
			}
			event_perform(ev_alarm,0);
			currentFrameAmount = 0;
			
		}
    
    
		BackCont.viewx2 += lengthdir_x(-8,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(-8,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
		BackCont.shake += 22
		snd_play_2d(sndVikingArmourStrikeUpg,0,true);
	}
	else
		snd_play_2d(sndVikingArmourStrike,0,true);
    
	BackCont.viewx2 += lengthdir_x(-6,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(-6,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+180)*UberCont.opt_shake
	BackCont.shake += 25
}