if other.team != team && team!=0
{

	if other.sprite_index!=other.spr_hurt
	{
		with instance_create(x,y,Dust)
		motion_add(random(360),random(3))
		bites--;
		sprite_index=sprTermiteBite
		spr_idle=sprTermiteBite;
		spr_walk=sprTermiteBite;
		image_index=1;
		with other
		{
		DealDamage(other.dmg)
		sprite_index = spr_hurt
		snd_play(snd_hurt, hurt_pitch_variation)
		image_index = 0
		motion_add(other.direction,10)
		}
		snd_play(sndMaggotBite);
		scrRecycleGland(1);
	}
	else
	{
		scrIframeSkipper(0.07);	
	}
}

