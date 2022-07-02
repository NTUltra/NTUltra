if other.team != team && other.team!=2
{
	with other
	{

		snd_play(snd_hurt, hurt_pitch_variation)

		if instance_exists(Player)
			my_health -= other.dmg+Player.ultra_got[57]*5//atom ultra
		else
			my_health-=other.dmg;

		sprite_index = spr_hurt
		image_index = 0
		motion_add(point_direction(other.x,other.y,x,y),6)
		Sleep(4)
		BackCont.shake += 2

	}
}

