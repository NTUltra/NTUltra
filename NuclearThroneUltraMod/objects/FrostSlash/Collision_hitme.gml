var inArray = array_contains(hitEntities,other.id)
if other.team != team && (!inArray || other.sprite_index != other.spr_hurt)
{
	if !inArray
		hitEntities[array_length(hitEntities)] = other.id;
	alarm[1] = hitDelay;
	with other
	{
		snd_play(snd_hurt, hurt_pitch_variation)
		my_health -= other.dmg
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,8)
		Sleep(other.sleepRate+size*10)
		BackCont.shake += 5
		if alarm[11]<1&&my_health>0{
		frozen=true;
		    with instance_create(x,y,FrozenEnemy)
		    {
			    var s = min(2,other.size)
			    image_xscale=s*choose(1,-1);
			    image_yscale=s;
			    xx=other.x
			    yy=other.y
				owner=other.id;
		    }
		alarm[11]+=other.freezetime+10;
		if alarm[1] > 0
			alarm[1] += other.freezetime;

		}
	}
}

