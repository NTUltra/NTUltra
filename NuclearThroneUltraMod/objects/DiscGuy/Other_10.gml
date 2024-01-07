/// @description Fire
direction = point_direction(x,y,target.x,target.y)+180

			speed*=0.4;
			image_index = 0
			sprite_index = spr_fire
			
			snd_play(sndDiscgun)
			with instance_create(x,y,EnemyDisc)
			{
				motion_add(other.direction+180+(random(6)-3),other.discSpeed)
				image_angle = direction
				team = other.team
			}
			walk=4;
			alarm[1] = actTime*2;