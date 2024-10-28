///@description AI
alarm[1] = actTime + random(actTime)
target = instance_nearest(x,y,hitme);
if target != noone && instance_exists(target)  && target.team == team
	scrTarget();
if target != noone && instance_exists(target){
	gunangle = point_direction(x,y,target.x,target.y)
	if random(3) < 1
		with instance_create(x,y,EnemyIceFlame)
		{
			motion_add(other.gunangle,2);
			image_angle = direction
			team = other.team
		}
    if target.object_index != Player && point_distance(x,y,target.x,target.y) < 32
	{
		event_user(0);
		with target
		{
			DealDamage(5);
			sprite_index = spr_hurt;
			image_index = 0;
			snd_play(snd_hurt,hurt_pitch_variation);
		}
	}
}