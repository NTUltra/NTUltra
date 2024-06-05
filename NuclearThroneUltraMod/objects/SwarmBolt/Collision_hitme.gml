if speed > 1 and other.team != team
{
	var hit = other;
	with other
	{
		if sprite_index != spr_hurt
		{
			DealDamage(other.dmg)
			sprite_index = spr_hurt
			image_index = 1;
			motion_add(other.direction,4)
			if speed > maxSpeed
				speed = maxSpeed;
			other.hits-=1;
			snd_play(snd_hurt, hurt_pitch_variation,true)
		}
    }
	if hits<1
	{
		instance_destroy();
		with instance_create(x,y,Venom)
		{
			scrCopyWeaponMod(other);
			team = other.team;
			owner = hit;
			amount = 2;
			dmg = 1;
			rate = 5;
		}
	}
}

