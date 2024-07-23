if other.team != team and other.my_health > 0 && alarm[0] < 1
{
	instance_destroy()
	var hits = ds_list_create();
	var range = 10;
	var d = 4;
	if instance_exists(Player) && Player.skill_got[15] //Shotgun shoulder
	{
		range += 12;
		d = 3;
		with instance_create(x,y,SplashDamageFX)
		{
			col = c_lime;
			radius = range - 4;
		}
	}
	var direct = other.id;
	var al = collision_circle_list(x,y,range,hitme,false,false,hits,false)
	for (var i = 0; i < al; i++) {
	    // code here
		with hits[| i]
		{
			if team != other.team && my_health > 0
			{
				if id == direct
					DealDamage(other.dmg);
				else
					DealDamage(max(0,other.dmg - d))
				sprite_index = spr_hurt
				image_index = 0
				motion_add(other.direction,4)
				scrForcePosition60fps();
				if speed > maxSpeed+2
					speed = maxSpeed+2;
				snd_play(snd_hurt, hurt_pitch_variation,true)
			}
		}
	}
	with instance_create(x,y,BulletHit)
		sprite_index = sprBullet5Disappear
}

