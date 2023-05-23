if other.team != team
{
	with other
	{
		if(object_index!=Sheep&&object_index!=ExplosiveSheep){
		    snd_play(snd_hurt, hurt_pitch_variation,true)
		    if UberCont.normalGameSpeed == 60
				my_health -= other.dmg * 0.5;
			else
				my_health -= other.dmg
		    sprite_index = spr_hurt
		    image_index = 0
		    BackCont.shake += 0.5
		    }
	}
}

