var deb = debrisAmount;
if other.team != team and other.my_health > 0 and other.object_index!=Player && other.id != ignoreMe
{
	instance_destroy()
	with other
	{
		snd_play(snd_hurt, hurt_pitch_variation,true);
		DealDamage(other.dmg)
		//freeze bitch!
		if /*alarm[11]<1&&*/my_health>0{
		frozen=true;
		    with instance_create(x,y,FrozenEnemy)
		    {
				debrisAmount = deb;
				var s = min(2,other.mySize)
			    image_xscale=s*choose(1,-1);
			    image_yscale=s;
			    xx=other.x
			    yy=other.y
				owner = other.id;
		    }
		alarm[11] += other.freezetime+5;
		if alarm[1] > 1
			alarm[1] += other.freezetime;
		}
		sprite_index = spr_hurt
		image_index = 0
		speed = 0;
	}
	with instance_create(x,y,BulletHit)
		sprite_index = sprFreezeBulletHit;
}