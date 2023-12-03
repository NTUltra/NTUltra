///@description AI
alarm[1] = actTime + random(actTime);
if firstTime
{
	firstTime = false;
	event_user(0);
	exit;
}
if my_health <= maxhealth*0.6 && !reachedHalfHealth
{
	event_user(3);	
}
scrTarget();
if target != noone && instance_exists(target) {
	var ran = random(10);
        if ran < 3.6 {
			gunangle = point_direction(x, y, target.x, target.y);
			snd_play(sndScorpionFire);
			alarm[2] = tellTime;
			alarm[1] += tellTime;
			sprite_index = spr_fire;
			with instance_create(x,y,EnemyBullet2)
			{
				motion_add(other.gunangle,6);
				image_angle = direction
				team = other.team
			}
        }
		else if ran < 4.6 && !instance_exists(GravestoneWave) {
			event_user(0);
			alarm[1] += actTime;
		}
		else if ran < 6 && instance_exists(Player)
		{
			//MASS TELEPORT
			event_user(2);
		}
		else if ran < 8 && point_distance(x,y,target.x,target.y) > 54 {
			//FIRE
			event_user(1);
		} else if ran < 9 {
			gunangle = point_direction(x, y, target.x, target.y) + 180 + choose(90, -90)
			alarm[2] = tellTime;
		}
        if target.x < x
			right = -1
        else if target.x > x
			right = 1
}
else if random(10) < 1 {
	snd_play(sndOasisBossTackle);
    gunangle = random(360);
	alarm[2] = tellTime;
	alarm[1] += actTime * 4;
}
