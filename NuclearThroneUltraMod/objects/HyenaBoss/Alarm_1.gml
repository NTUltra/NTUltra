///@description AI
var walls = ds_list_create();
var al = instance_place_list(x,y,Wall,walls,false);
for (var i = 0; i < al; i++) {
	instance_create(walls[| i].x,walls[| i].y,FloorExplo);
	instance_destroy(walls[| i]);
}
ds_list_destroy(walls);
alarm[1] = actTime + random(actTime);
scrTarget()
if target != noone && instance_exists(target) {
	if firstTime
	{
		if point_distance(x,y,target.x,target.y) < 300
		{
			firstTime = false;
			instance_create(x,y,DramaCamera);
			event_user(3);
		}
		if random(10) < 1 {
		    motion_add(random(360), acc);
		    walk = actTime*2
			event_user(2);
		}
		alarm[1] = actTime;
		exit;
	}
	if point_distance(x,y,target.x,target.y) > 200
	{
		walk = alarm[1] + random(actTime * 2);
		motion_add(point_direction(x,y,target.x,target.y),acc*2);
	}
	else if random(3) < 1
	{
		walk = alarm[1] + random(actTime * 2);
		motion_add(random(360),acc*2);
	}
    if !collision_line(x, y, target.x, target.y, Wall, 0, 0) {
		if abs(target.x - x) < 64 && random(4) < 1
		{//Horizontal leap
			event_user(6);
		}
		gunangle = point_direction(x,y,target.x,target.y);
		var ran = random(100);
		if ran < 25
		{
			snd_play(sndEnemyFire)
			var aim = head1aim + angle_difference(gunangle,head1aim) * 0.25;
			head1Animation = 0;
			spr_head1 = spr_head1_fire;
            with instance_create(x + (head1x * right), y + head1y, EnemyBullet5Square) {
                motion_add(aim, other.projectileSpeed + 1)
                image_angle = direction
                team = other.team
            }
			event_user(1);
		}
		else if ran < 50
		{
			snd_play(sndEnemyFire)
			var aim = head2aim + angle_difference(gunangle,head2aim) * 0.25;
			head2Animation = 0;
			spr_head2 = spr_head2_fire;
            with instance_create(x + (head2x * right), y + head2y, EnemyBullet5Square) {
                motion_add(aim, other.projectileSpeed + 1)
                image_angle = direction
                team = other.team
            }
			event_user(1);
		}
		else if ran < 75
		{
			snd_play(sndEnemyFire)
			var aim = head3aim + angle_difference(gunangle,head3aim) * 0.25;
			head3Animation = 0;
			spr_head3 = spr_head3_fire;
            with instance_create(x + (head3x * right), y + head3y, EnemyBullet5Square) {
                motion_add(aim, other.projectileSpeed + 1)
                image_angle = direction
                team = other.team
            }
			event_user(1);
		}
		else
		{
			snd_play(sndEnemyFire)
			var aim = head1aim + angle_difference(gunangle,head1aim) * 0.33;
			head1Animation = 0;
			spr_head1 = spr_head1_fire;
            with instance_create(x + (head1x * right), y + head1y, EnemyBullet5Square) {
                motion_add(aim, other.projectileSpeed)
                image_angle = direction
                team = other.team
            }
			var aim = head2aim + angle_difference(gunangle,head2aim) * 0.33;
			head2Animation = 0;
			spr_head2 = spr_head2_fire;
            with instance_create(x + (head2x * right), y + head2y, EnemyBullet5Square) {
                motion_add(aim, other.projectileSpeed)
                image_angle = direction
                team = other.team
            }
			var aim = head3aim + angle_difference(gunangle,head3aim) * 0.33;
			head3Animation = 0;
			spr_head3 = spr_head3_fire;
            with instance_create(x + (head3x * right), y + head3y, EnemyBullet5Square) {
                motion_add(aim, other.projectileSpeed)
                image_angle = direction
                team = other.team
            }
			event_user(1);
		}
		ran = random(10)
		if ran < 2
		{
			event_user(3);	
		}
		else if ran < 3
		{
			event_user(4);	
		}
    }
    else if random(3) < 1 {
        event_user(3);
    }
}
else if random(10) < 1 {
    motion_add(random(360), acc)
    walk = actTime*2
    alarm[1] = walk + actTime + random(actTime)
	event_user(2);
}
