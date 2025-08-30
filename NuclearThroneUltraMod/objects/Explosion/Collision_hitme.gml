if other.team != team && other.team!=2
{
	with other
	{
		//if other.team != 0
		//	scrModHit(other);
		if sprite_index != spr_hurt
			snd_play(snd_hurt, hurt_pitch_variation,true)

		if UberCont.normalGameSpeed == 60
			DealDamage(other.dmg * 0.5, true);
		else
			DealDamage(other.dmg, true);

		sprite_index = spr_hurt
		image_index = 0
		motion_add(point_direction(other.x,other.y,x,y),6)
		Sleep(4)
		BackCont.shake += 2
		/*
			if (instance_exists(Player) && Player.skill_got[43] && Player.ultra_got[97] && !Player.altUltra)
			{
				scrMoodSwingStun(5);
				scrMoodSwingIcicle(1, id);
			}
		*/
	}
}

