/// @description Collision
if alarm[4] > 0
{
	if hspeed > 0
		right = 1
	else if hspeed < 0
		right = -1
	alarm[2] = 1;
	walk = max(1,walk);
	motion_add(direction,3);
	motion_add(originalDirection,4);
	speed = maxSpeed;
	var hits = ds_list_create();
	var t = team;
	var dealtDamage = false;
	team = 2;
	var al = collision_circle_list(x,y,28,hitme,false,false,hits,false)
	for (var i = 0; i < al; i++) {
		// code here
		with hits[| i]
		{
			if team != other.team && my_health > 0
			{
				if (object_index == Ram || object_index == ExplosionSheep) && alarm[4] > 0
				{
				}
				else
				{
					dealtDamage = true;
					DealDamage(other.dmg)
					if sprite_index != spr_hurt
						snd_play(snd_hurt, hurt_pitch_variation,true)
					sprite_index = spr_hurt
					image_index = 0
					motion_add(other.direction,14);
					direction = other.direction;
				}
			}
		}
	}
	ds_list_destroy(hits);
	instance_create(x,y,Dust);
	team = t;
	if dealtDamage && alarm[4] > 10
	{	
		alarm[4] -= 1;
	}
}