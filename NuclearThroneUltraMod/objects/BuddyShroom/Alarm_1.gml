///@description AI
alarm[1] = actTime + random(actTime)
target = instance_nearest(x,y,hitme);
if target != noone && instance_exists(target)  && target.team == team
	scrTarget();
if target != noone && instance_exists(target) {
    if collision_line(x, y, target.x, target.y, Wall, 0, 0) {
		mp_potential_step(target.x,target.y,maxSpeed,false);
		justBehindWall = 2;
    }
    else {
		if justBehindWall < 1
		{
			motion_add(point_direction(x,y,target.x,target.y), acc*2)
			walk = alarm[1] + 2;
		}
		else
		{
			justBehindWall -= 1;	
		}
		var dis = point_distance(x,y,target.x,target.y)
		if dis < 96
			mp_potential_step(target.x,target.y,maxSpeed,false);
		if target.object_index != Player && dis < 32
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
}
else if random(10) < 1 {
    motion_add(random(360), 0.4)
    walk = 20 + random(10)
    alarm[1] = walk + 10 + random(30)
}
if hspeed > 0
	right = 1
else if hspeed < 0
	right = -1