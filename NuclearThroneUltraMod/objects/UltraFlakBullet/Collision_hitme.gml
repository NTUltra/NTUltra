if other.team != team
{
	instance_destroy()
	Sleep(50)
	with instance_create(x,y,BulletHit)
		sprite_index=sprUltraFlakHit;
	
	var hits = ds_list_create();
	var range = 26;
	if instance_exists(Player) && Player.skill_got[15] //Shotgun shoulder
	{
		range += 12;
	}
	var direct = other.id;
	var al = collision_circle_list(x,y,range,hitme,false,false,hits,false)
	for (var i = 0; i < al; i++) {
	    // code here
		with hits[| i]
		{
			if team != other.team && my_health > 0
			{
				my_health -= max(0,other.dmg - 20)
				if id == direct
					my_health -= 20;
				sprite_index = spr_hurt
				image_index = 0
				motion_add(other.direction,8)
				scrForcePosition60fps();
				if speed > maxSpeed+3
					speed = maxSpeed+3;
				snd_play(snd_hurt, hurt_pitch_variation,true)
			}
		}
	}
}

