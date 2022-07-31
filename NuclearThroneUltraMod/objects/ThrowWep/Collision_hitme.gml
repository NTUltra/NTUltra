/*
if other.team != team and other.my_health > 0 && speed>1
{
	if instance_exists(Player) && Player.ultra_got[54] == 1
	{
		snd_play(sndExplosion);
		with other
		{
			instance_create(x+8,y+8,Explosion);
		}
	}
	with other
	{
		if sprite_index!=spr_hurt
		{
			my_health -= other.dmg;
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,8)

			if instance_exists(Player)
		    {
		        if Player.ultra_got[55] = 1//ULTRA C PANDA
		        {
		        scrDrop(30,0.01);
		        repeat(4)//16 is one ultra lazerpistol ammo
		            {
		            with instance_create(x,y,Rad)
		            {motion_add(random(360),random(2)+3)
		            repeat(speed)
		            speed *= 0.9}
		            }
		        }
		    }
		    snd_play(snd_hurt, hurt_pitch_variation);
			with instance_create(x,y,ImpactFX)
			{
				sprite_index = sprThrowHit;	
			}
	    }
	}

//move_bounce_solid(true)
    if instance_exists(Player)
    {
        if !pierce
        {
			direction+=180+random(60)-30
			speed*=0.7;
        }
		else if Player.ultra_got[53] == 1 || Player.ultra_got[54] || Player.ultra_got[55] || Player.ultra_got[56] == 1
		{
			speed *= 1.1;//EXTRA SPEED
			if instance_exists(enemy) && instance_number(enemy) > 1
			{
				with other
				{
					var nearest = instance_nearest_notme(x,y,enemy);
				}
				direction = point_direction(x,y,nearest.x,nearest.y);
			}
		}
    }
}

