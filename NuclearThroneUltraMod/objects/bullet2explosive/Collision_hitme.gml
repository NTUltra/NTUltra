/// @description Also Boom
if other.team != team and other.my_health > 0 && alarm[0] < 1
{
	snd_play(sndExplosionS,0.1,true);
	with instance_create(x+hspeed,y+vspeed,SmallExplosion)
	{
		dmg --;
		scrCopyWeaponMod(other);	
	}
	instance_destroy()
	with other
	{
		DealDamage(other.dmg)
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,4)
		scrForcePosition60fps();
		if speed > maxSpeed+2
			speed = maxSpeed+2;
	}

	snd_play(other.snd_hurt, other.hurt_pitch_variation,true)
	with instance_create(x,y,BulletHit)
		sprite_index = sprExplosiveBullet2Disappear;
}

