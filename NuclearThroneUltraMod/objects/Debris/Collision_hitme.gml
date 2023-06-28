if /*size >= other.size-1 and */ speed > 2 && other.team != 2/* and other.sprite_index != other.spr_hurt */&& other.existTime > 30
{
	var dmgDealt = 1;
	var dmgDiv = dmgDivision;
	with other
	{
		if my_health > 0 && sprite_index != spr_chrg
		{
			dmgDealt = clamp(round(1+other.speed/dmgDiv)-(mySize*other.sizeDiv),1,5);
		    if instance_exists(Player)
		    {
		        if Player.race==24 
		        {
			        if Player.ultra_got[94]//elementor coldheart
			        {
				        dmgDealt = clamp(round(1+other.speed/10)*2-(mySize*0.5),1,6);//Dont take hammerhead dmg div there is enough stacking
				        motion_add(other.direction,other.speed/4)//lets add a little more knockback why not
        
				        if alarm[11]<1{
							frozen=true;
				            with instance_create(x,y,FrozenEnemy)
				            {
								var s = min(2,other.mySize)
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
        
		        }
		    }
			my_health -= dmgDealt;
			motion_add(other.direction,other.speed/2)
			with instance_create(other.x,other.y,Smoke)
			{
				depth = other.depth - 1;
			}
		}
	}
	if dmgDealt >= 2
	{
		snd_play(sndDebrisHitUpg,0.2,false);
	}
	else
		snd_play(sndDebrisHit,0.2,false);
	instance_destroy();
}

