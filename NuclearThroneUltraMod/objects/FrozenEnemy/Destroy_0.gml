//shatter anim?
snd_play(sndBreakIce);
with owner
{
	DealDamage(max(other.debrisAmount + 1,3));
	sprite_index = spr_hurt;
	image_index = 0;
	snd_play(snd_hurt,hurt_pitch_variation);
}
repeat(debrisAmount){
	with instance_create(x,y,Debris)
	{
		area=5;
		sprite_index=sprDebris5;
	}
}

