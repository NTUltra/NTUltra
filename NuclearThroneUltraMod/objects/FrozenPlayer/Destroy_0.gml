//shatter anim?
snd_play(sndBreakIce);
repeat(debrisAmount){
	with instance_create(x,y,Debris)
	{
		area=5;
		sprite_index=sprDebris5;
	}
}

