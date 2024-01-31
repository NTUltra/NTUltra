var ezMode = scrIsGamemode(9)
if alarm[0] < 1 && other.team == 2 && instance_exists(Player) && (!ezMode || other.sprite_index != other.spr_hurt) 
{
	if UberCont.normalGameSpeed == 60
		alarm[0] = 1;
	//Deals double damage in 60fps?
	var dealDmg = dmg;
	with other
	{
		var immunelimit = 5;
		var dealtDamage = false;
		var immune = false
		if object_index == Player && Player.skill_got[14]{
			immune = true

			if Player.race=25//Mutation smith
				immunelimit=6;

			if Player.ultra_got[97] && !Player.altUltra//Mutation Doctor Ultra A
				immunelimit = 999;
		}


		if immune
		{
			with other
				instance_destroy();
			boilingAmount = boilingMax;
			if alarm[4] < 1
				alarm[4] = 1;
			if ultra_got[62] && altUltra && armour > immunelimit//Living armour
			{
				dealtDamage = true;
				if armour-dealDmg < immunelimit
					armour = immunelimit
				else
				{
					armour -= 1
				}
			}
			else if my_health > immunelimit
			{
				dealtDamage = true;
				if my_health-dealDmg < immunelimit
					my_health = immunelimit
				else
				{
					my_health -= dealDmg
				}
			}
		}
		else
		{
			dealtDamage = true;
			my_health -= dealDmg;
		}
		if dealtDamage && alarm[3] < 1
		{
			snd_play(snd_hurt, hurt_pitch_variation);
			if object_index == Player
				hitBy = other.owner.sprite_index;
			sprite_index = spr_hurt
			image_index = 0
			var knockbackDir = point_direction(other.x,other.y,x,y);
			motion_add(knockbackDir,6);
			if !scrIsGamemode(34)//NOT HARD MODE
				repeat(7)
				{
					if !place_meeting(x+lengthdir_x(2,knockbackDir),y+lengthdir_y(2,knockbackDir),WallHitMe)
					{
						x += lengthdir_x(2,knockbackDir);
						y += lengthdir_y(2,knockbackDir);
					}
				}
			Sleep(10)
			BackCont.shake += 2
			scrForcePosition60fps();
		}
	}
	if ezMode//CASUAL MODE
		instance_destroy();
}

