if other.team != team and other.my_health > 0 && alarm[0] < 1
{
	instance_destroy()
	with other
	{
		my_health -= other.dmg
		if instance_exists(Player){
			if Player.ultra_got[28]//roids ultra d
			{my_health -=2;}
		}
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,6)
		if speed > maxSpeed+1
			speed = maxSpeed+1;
	}
	snd_play(other.snd_hurt, other.hurt_pitch_variation,true)
	instance_create(x,y,BulletHit)

	//RECYCLE GLAND
	if !norecycle
		scrRecycleGland(1);

}
