if other.team != team and other.my_health > 0 && speed > 3
{
	move_bounce_solid(false);
	speed = min(speed*0.5,3);
	with other
	{
		snd_play(snd_hurt, hurt_pitch_variation, true)
	    DealDamage(max(1,floor(other.charge*0.65)));
	    sprite_index = spr_hurt
	    image_index = 0
		motion_add(other.direction,other.charge*0.3)
	}
	with instance_create(x,y,BulletHit)
		sprite_index=sprHorrorHitD;

	//scrRecycleGland(1);
}



