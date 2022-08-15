if /*size >= other.size-1 and */ speed > 2 && other.team != 2/* and other.sprite_index != other.spr_hurt */&& other.existTime > 30
{
	with other
	{
	    if instance_exists(Player)
	    {
	        if Player.race==24 
	        {
		        if Player.ultra_got[94]//elementor coldheart
		        {
			        my_health -= clamp(round(1+other.speed/10)*2-(size*0.5),1,6);
			        motion_add(other.direction,other.speed/4)//lets add a little more knockback why not
        
			        if alarm[11]<1&&my_health>0{
						frozen=true;
			            with instance_create(x,y,FrozenEnemy)
			            {
							var s = min(2,other.size)
							image_xscale=s*choose(1,-1);
							image_yscale=s;
				            xx=other.x
				            yy=other.y
				            debrisAmount=choose(1,2);
							owner=other.id;
			            }
			        alarm[11]+=15;
					if alarm[1] > 0
							alarm[1] += 5;
			        }
        
		        }
		        else
		        my_health -= clamp(round(1+other.speed/10)-size,1,5);
        
	        }
	        else//regular
				my_health -= clamp(round(1+other.speed/10)-size,1,5);
	    }
	    else//no playa
			my_health -= clamp(round(1+other.speed/10)-size,1,5)

	snd_play(snd_hurt, hurt_pitch_variation,true)
	//sprite_index = spr_hurt
	//image_index = 0
	motion_add(other.direction,other.speed/2)
		with instance_create(other.x,other.y,Smoke)
		{
			depth = other.depth - 1;
		}

	}
	snd_play(sndDebrisHit,0.2,false);
	instance_destroy();
}

