if other.team != team
{
	var myDir = direction;
	var t = team;
	with other
	{
		if sprite_index != spr_hurt
		{
			snd_play(snd_hurt, hurt_pitch_variation);
			if instance_exists(Player) && Player.skill_got[17] = 1
				snd_play_fire(sndLaserUpg)
			else
				snd_play_fire(sndLaser)
			with instance_create(x,y,Laser)
			{
				image_angle = myDir + 90;
				team = t
				event_perform(ev_alarm,0)
			}
			with instance_create(x,y,Laser)
			{
				image_angle = myDir - 90;
				team = t
				event_perform(ev_alarm,0)
			}
		}
		if UberCont.normalGameSpeed == 60
			DealDamage(other.dmg * 0.5, true);
		else
			DealDamage(other.dmg, true);
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,4)
		BackCont.shake += 1
		instance_create(x,y,Smoke);
		
	}
	if UberCont.normalGameSpeed == 60
		dmg = max(1,dmg - 0.25);
	else
		dmg = max(1,dmg - 0.5);
}

