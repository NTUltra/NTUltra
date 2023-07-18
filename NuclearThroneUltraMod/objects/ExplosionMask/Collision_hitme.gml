var ezMode = scrIsGamemode(9)
if other.team == 2 && instance_exists(Player) && (!ezMode || other.sprite_index != other.spr_hurt) 
{
	var dealDmg = dmg;
	if ezMode
		dealDmg *= 0.5;
	with other
	{
		var immunelimit = 5;
		var dealtDamage = false;
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
			alarm[4]=50;
			if my_health > immunelimit
			{
				if my_health-dealDmg < immunelimit
					my_health = immunelimit
				else
				{
					dealtDamage = true;
					my_health -= dealDmg
				}
			}
		}
		else
		{
			dealtDamage = true;
			my_health -= dealDmg;
		}
		if dealtDamage
		{
			snd_play(snd_hurt, hurt_pitch_variation)
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
			scrForcePosition60fps();
		}
		if scrIsGamemode(9)//CASUAL MODE
			instance_destroy();
	}
}

