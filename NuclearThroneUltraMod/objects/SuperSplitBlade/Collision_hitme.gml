if other.team != team
{
    with other
    {
	    if sprite_index != spr_hurt
	    {
		    snd_play(snd_hurt, hurt_pitch_variation)
		    DealDamage(8)//6
		    sprite_index = spr_hurt
		    image_index = 0
		    motion_add(other.direction,4)
		    BackCont.shake += 2
			Sleep(5);
			if other.split>0
			{
			    with other
			    {
        
			        with instance_create(x,y,SplitBlade)
			        {motion_add(random(360),10)
			        image_angle = direction
			        team = other.team}
        
			    }
				other.split--;
			}
	    }
		else
		{
			scrIframeSkipper(0.2);
		}
    }
}

