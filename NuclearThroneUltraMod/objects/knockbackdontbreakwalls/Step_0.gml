/// @description Move the shithead
lerpTime -= lerpCalcBack;
if target != noone && instance_exists(target)
{
	with target
	{
		speed = other.pushSpeed/max(1,(mySize*0.5));
		direction = other.pushDirection;
		x = lerp(other.pushX,other.pushStartX,other.lerpTime);
		y = lerp(other.pushY,other.pushStartY,other.lerpTime);
		if place_meeting(x+hspeed,y+vspeed,Wall)
		{
			snd_play(sndExplosion);
			Sleep(20);
			x = xprevious;
			y = yprevious;
			other.lerpTime = -1;
			snd_play(snd_hurt, hurt_pitch_variation,true)
			my_health -= 20;
			sprite_index = spr_hurt
			image_index = 0
			direction += 180;
			repeat(4)
			{
				with instance_create(x,y,Dust)
					motion_add(other.direction + random_range(-50,50),5+random(4));
			}
		}
	}
}
else
{
	instance_destroy();	
}
if lerpTime < 0 || lerpTime > 1
{
	instance_destroy();	
}