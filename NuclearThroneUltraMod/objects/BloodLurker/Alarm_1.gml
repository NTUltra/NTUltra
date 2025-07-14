///@description AI
alarm[1] = actTime + random(actTime)
scrTarget()
if target != noone {
    if collision_line(x, y, target.x, target.y, Wall, 0, 0) < 0 {
		var dis = point_distance(target.x, target.y, x, y)
        if dis > 54 && dis < 300 {
            snd_play(sndBloodEnemyFire)
			with BloodCow
			{
				if alarm[1] < actTime * 2
					alarm[1] += actTime;	
			}
			with BloodLurker
			{
				if alarm[1] < actTime * 2
					alarm[1] += actTime;	
			}
			gunangle = point_direction(x, y, target.x, target.y);
			walk = alarm[1] - random(actTime*0.5);
			motion_add(random(360),maxSpeed * 0.5);
			var spd = 2;
			if dis > 128
				spd += 0.5
			if dis > 256
				spd += 0.5;
			var len = 6;
			sprite_index = spr_fire;
			alarm[2] = sprite_get_number(spr_fire)/image_speed;
            with instance_create(x + lengthdir_x(len,gunangle), y  + lengthdir_y(len,gunangle), EnemyBullet1Small) {
                motion_add(other.gunangle + 2, spd)
                image_angle = direction
                team = other.team
            }
			 with instance_create(x + lengthdir_x(len,gunangle + 180), y  + lengthdir_y(len,gunangle + 180), EnemyBullet1Small) {
                motion_add(other.gunangle - 2, spd)
                image_angle = direction
                team = other.team
            }
			with instance_create(x + lengthdir_x(len,gunangle + 90), y + lengthdir_y(len,gunangle + 90), EnemyBullet1Small) {
                motion_add(other.gunangle + 4, spd)
                image_angle = direction
                team = other.team
            }
			with instance_create(x + lengthdir_x(len,gunangle - 90), y + lengthdir_y(len,gunangle - 90), EnemyBullet1Small) {
                motion_add(other.gunangle - 4, spd)
                image_angle = direction
                team = other.team
            }
            alarm[1] = actTime * 4;
        }
        else {
            direction = random(360);
            walk = actTime + random(alarm[1]);
        }

        if target.x < x
			right = -1
        else if target.x > x
			right = 1
    }
    else if random(4) < 1 {
        motion_add(random(360), 0.4)
        walk = 20 + random(10)
        alarm[1] = walk + 10 + random(30)
        gunangle = direction
        if hspeed > 0
        right = 1
        else if hspeed < 0
        right = -1
    }
}
else if random(10) < 1 {
    motion_add(random(360), 0.4)
    walk = 20 + random(10)
    alarm[1] = walk + 10 + random(30)
    gunangle = direction
    if hspeed > 0
    right = 1
    else if hspeed < 0
    right = -1
}
