if other.team != team and other.my_health > 0
{//instance_destroy()
	alarm[0] += 1;
with other
{
    if UberCont.normalGameSpeed == 60
		DealDamage(other.dmg)*0.5;
	else
		DealDamage(other.dmg);
    sprite_index = spr_hurt
    image_index = 0
    motion_add(other.direction,2)
    snd_play(snd_hurt, hurt_pitch_variation)
    instance_create(x,y,BulletHit)

}

}



