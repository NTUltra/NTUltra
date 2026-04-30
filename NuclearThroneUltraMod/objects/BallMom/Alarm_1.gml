/// @description AI
alarm[1] = actTime+random(actTime)
if isInverted 
	alarm[1] -= 5;
if !almostDead && my_health < 0.25
{
	snd_play_2d(sndBallMamaLowHP);
	almostDead = true;
	alarm[1] -= 10;
}
else if !halfway && my_health < 0.6
{
	halfway = true;
	snd_play_2d(sndBallMamaHalfHP);	
}

if almostDead 
	alarm[1] -= 10;


scrTarget()
if active 
{
	if place_meeting(x,y,ToxicGas)
	{
		if my_health < maxhealth
		{
			with instance_create(x,y-16,HealFX)
			{
				depth = other.depth - 2;
				sprite_index=sprFrogHeal;
			}
			snd_play(sndBloodlustProc);
			my_health += 2 + min(60,loops*5);
			my_health = min(maxhealth,my_health);
		}
	}
	var ran = random(100);
	if ran > 70 && target != noone && instance_exists(target)
	{
		speed *= 0.5;
		sprite_index = spr_fire;
		var aimDir = point_direction(x,y,target.x,target.y);
		snd_play(sndBallMamaFire);
		with instance_create(x, y, GassBullet) {
            motion_add(aimDir, 4.5)
            image_angle = direction
            team = other.team
        }
		alarm[1] -= 2;
	}
	else if ran > 40 && instance_number(SuperFrog) < 5 + loops && instance_number(InvertedSuperFrog) < 5 + loops
	{
		if isInverted
		{
			with instance_create(x,y,InvertedFrogEgg)
			{
				team = other.team;
				alarm[0] = 100 - min(70,other.loops*5);
			}
		}
		else
		{
			with instance_create(x,y,FrogEgg)
			{
				team = other.team;
				alarm[0] = 120 - min(70,other.loops*5);//4 seconds
			}
		}
	}
}
if random(2) >= 0.8
{
	if target != noone
	{
		if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
			direction = point_direction(x,y,target.x,target.y)+random(20)-10
		else 
			motion_add(random(360),theSpeed)
	}
	else 
		motion_add(random(360),theSpeed)
}
alarm[1] = max(1,alarm[1]);