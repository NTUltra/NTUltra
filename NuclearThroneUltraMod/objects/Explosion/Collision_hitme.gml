if other.team != team && other.team!=2
{
	with other
	{
		scrModHit();
		if sprite_index != spr_hurt
			snd_play(snd_hurt, hurt_pitch_variation,true)

		if instance_exists(Player)
		{
			if UberCont.normalGameSpeed == 60
				my_health -= (other.dmg + Player.ultra_got[57]*5) * 0.5//atom ultra
			else
				my_health -= other.dmg + Player.ultra_got[57] * 5//atom ultra
		}
		else
		{
			if UberCont.normalGameSpeed == 60
				my_health -= other.dmg * 0.5;
			else
				my_health-=other.dmg;
		}

		sprite_index = spr_hurt
		image_index = 0
		motion_add(point_direction(other.x,other.y,x,y),6)
		Sleep(4)
		BackCont.shake += 2

	}
}

