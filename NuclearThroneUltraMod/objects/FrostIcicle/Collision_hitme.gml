var deb = debrisAmount;
if other.team != team and other.my_health > 0 and other.object_index!=Player && other.id != ignoreMe
{
	instance_destroy()
	with other
	{
		snd_play(snd_hurt, hurt_pitch_variation,true);
		DealDamage(other.dmg)
		//freeze bitch!
		scrFreezeTarget(other.freezetime);
		sprite_index = spr_hurt
		image_index = 0
		speed = 0;
	}
	with instance_create(x,y,BulletHit)
		sprite_index = sprFreezeBulletHit;
}