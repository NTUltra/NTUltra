/// @description Hit
if other.team != team
{
	var inArray = array_contains(hitEntities,other.id)
	if (!inArray || other.sprite_index != other.spr_hurt)
	{
		var d = direction;
		if alarm[1] < 1
		{
			if !inArray
				hitEntities[array_length(hitEntities)] = other.id;
			event_user(0);
			with other
			{
				if my_health > 0
				{
					snd_play(snd_hurt, hurt_pitch_variation,true)
					DealDamage(other.dmg)
					sprite_index = spr_hurt
					image_index = 0
					motion_add(other.direction,other.knockback)
					if speed > maxSpeed+1
						speed = maxSpeed+1;
				
					snd_play(sndSmallGhostDie,0.1);
					var xx = x;
					var yy = y;
					if instance_exists(Player)
					{
						if point_distance(Player.x,Player.y,xx,yy) < 48
						{
							d = point_direction(Player.x,Player.y,x,y);
							xx = Player.x + lengthdir_x(48,d);
							yy = Player.y + lengthdir_y(48,d);
						}
					}
					with instance_create(xx,yy,SmallGhostExplosion)
					{
						team = -1;
						dmg = 2
						with myExplosionMask
						{
							dmg = 2;
						}
						direction = d;
						speed += 1;
					}
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
}
