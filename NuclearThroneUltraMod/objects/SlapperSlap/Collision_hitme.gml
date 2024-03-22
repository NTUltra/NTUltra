/// @description Mega Knockback
var inArray = array_contains(hitEntities,other.id)
if other.team != team && (!inArray || other.sprite_index != other.spr_hurt)
{
	if alarm[1] < 1
	{
		if !inArray
			hitEntities[array_length(hitEntities)] = other.id;
		event_user(0);
		with other
		{
			snd_play(snd_hurt, hurt_pitch_variation,true)
			DealDamage(other.dmg)
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,other.knockback)
			if speed > maxSpeed+1
				speed = maxSpeed+1;
		
		}
		if other.my_health > 0
		{
			BackCont.shake += 2
			var direct = other.id;
			with instance_create(x,y,Knockback)
			{
				pushStrength = 32;
				target = direct;
				pushDirection = other.direction;
				pushStartX = target.x;
				pushStartY = target.y;
				var s = target.mySize;
				if s > 2
					s++;
				pushX = target.x + lengthdir_x(pushStrength/max(1,s*0.5),pushDirection);
				pushY = target.y + lengthdir_y(pushStrength/max(1,s*0.5),pushDirection);
			}
		}
		BackCont.shake += shk;
		alarm[1] = hitDelay;
	}
	else
	{
		alarm[1] = 1;	
	}
}