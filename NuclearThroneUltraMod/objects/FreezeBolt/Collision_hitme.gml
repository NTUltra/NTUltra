if candmg and other.team != team
{
	if (!array_contains(hitEntities,other.id))
	{
		var actualDmg = scrCalculateFinalDamage(dmg);
		var pierceDmg = scrGetBoltPierceDamage(actualDmg);
		if other.object_index == Player
		{
			other.hitBy = sprite_index;
			if !scrIsHardMode() && GetPlayerLoops() < 1 && other.my_health > 7//Dont instakill but set health to 1
			{
				dmg = min(20,other.my_health - 1);
			}
		}
		var didDmg = false;
		if other.my_health >= pierceDmg
		{
			didDmg = true;
			instance_destroy();
			with other
			{
				scrFreezeTarget(other.freezetime);
				snd_play(snd_hurt, hurt_pitch_variation,true)
				DealDamage(other.dmg)
				sprite_index = spr_hurt
				image_index = 0
				motion_add(other.direction,other.knockback + 2)
			}
			x += hspeed//(other.x - x)*0.75;
			y += vspeed//(other.y - y)*0.75;
			with scrBoltTrail(trailColour,0.11,0.75)
			{
				image_speed -= 0.1;
			}
			target = other.id
			with instance_create(x,y,boltStick)
			{
				scrCopyWeaponMod(other);
				sprite_index = other.sprite_index;
				image_index = 1;
				image_speed = 0;
				target = other.target
				team = other.team;
			}
		}
		else if other.my_health > 0
		{
			didDmg = true;
			hitEntities[array_length(hitEntities)] = other.id;
			with other
			{
				scrFreezeTarget(other.freezetime);
				snd_play(snd_hurt, hurt_pitch_variation,true)
				DealDamage(other.dmg);
				sprite_index = spr_hurt
				image_index = 0
				motion_add(other.direction,other.knockback)
			}
			event_user(4);
		}
		if didDmg
		{
			var ang = random(360);
			repeat(3)
			{
				with instance_create(x,y,FrostIcicle)
				{
					ignoreMe = other.id;
					motion_add(ang,24)
					image_angle = direction
					team = other.team
					frostDamage = 2;
				}
				ang += 120;
			}	
		}
	}
}

