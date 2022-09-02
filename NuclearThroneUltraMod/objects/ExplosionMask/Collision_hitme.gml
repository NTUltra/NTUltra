if other.team == 2 && instance_exists(Player) && (UberCont.opt_gamemode != 9 || other.sprite_index != other.spr_hurt) 
{
	with other
	{
		var immunelimit = 5;

		var immune;
		immune = 0
		if Player.skill_got[14] = 1{
			immune = 1

			if Player.race=25//Mutation smith
				immunelimit=6;

			if Player.ultra_got[97] && !Player.altUltra//Mutation Doctor Ultra A
				immunelimit=8;
		}


		if immune = 1
		{
			snd_play(snd_hurt, hurt_pitch_variation)
			alarm[4]=50;
			if my_health > immunelimit
			{
				if my_health-other.dmg < immunelimit
					my_health = immunelimit
				else
					my_health -= other.dmg
			}
		}
		else
			my_health-=other.dmg;

		sprite_index = spr_hurt
		image_index = 0
		var knockbackDir = point_direction(other.x,other.y,x,y);
		motion_add(knockbackDir,6);
		if UberCont.opt_gamemode != 34//HARD MODE
		repeat(4)
		{
			if !place_meeting(x+lengthdir_x(2,knockbackDir),y+lengthdir_y(2,knockbackDir),Wall)
			{
				x += lengthdir_x(2,knockbackDir);
				y += lengthdir_y(2,knockbackDir);
			}
		}
		Sleep(10)
		BackCont.shake += 2
		if UberCont.opt_gamemode == 9//CASUAL MODE
			instance_destroy();
	}
}

