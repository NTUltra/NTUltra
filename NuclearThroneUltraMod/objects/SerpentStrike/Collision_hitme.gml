if other.team != team and other.my_health > 0 && instance_exists(myHead) && !array_contains(myHead.hits,other.id)
{
	myHead.hits[array_length(myHead.hits)] = other.id;
	var me = id;
	with other
	{
		if team == 0
			DealDamage(other.dmg * 0.5)
		else
			DealDamage(other.dmg)
		if other.myHead.applyVenom && other.myHead.alarm[1]  < 1
		{
			var d = point_direction(other.x,other.y,x,y);
			with instance_create(other.x,other.y,AcidStreak)
			{
				motion_add(d + random_range(10,-10),8);
				image_angle = direction;
			}
			with instance_create(x,y,Venom)
			{
				scrCopyWeaponMod(me);
				team = me.team;
				owner = other.id;
				dmg += 3;
				rate -= 2;
				amount += 1;
			}
			other.myHead.alarm[1] = 40;//9 * 4
		}
		//freeze bitch!
		if other.myHead.shouldFreeze && alarm[11]<1 && my_health>0{
			scrFreezeTarget(15);
		}
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.image_angle,10)
		if speed > maxSpeed+1
			speed = maxSpeed+1;
		snd_play(snd_hurt, hurt_pitch_variation)
	}

	if other.my_health<=0// && other.sprite_index!=other.spr_hurt
	{
		amountofenemies++;
		with SerpentStrike
			amountofenemies=other.amountofenemies
	}
	instance_create(x,y,Dust)
}

