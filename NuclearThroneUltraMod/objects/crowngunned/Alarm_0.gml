alarm[0] = 10+random(10)

if point_distance(x,y,targetx,targety) > 24+random(48) and random(5) < 4
{
motion_add(point_direction(x,y,targetx,targety)+random(90)-45,2)
alarm[0] /= 2
walk = 10+random(20)
}
else if point_distance(x,y,targetx,targety) < 24 and random(5) < 4
{
motion_add(point_direction(x,y,targetx,targety)+180+random(90)-45,2)
walk = 5+random(20)
}
else if random(2) < 1
{
motion_add(random(360),2)
walk = 5+random(10)
}
if instance_exists(enemy)
{
	var dir = instance_nearest(x,y,enemy)
	if speed > 0
	{
	if dir != noone && distance_to_object(dir) < 48
	{
	motion_add(point_direction(dir.x,dir.y,x,y),2)
	}
	motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y),1)
	if instance_exists(Player)
	motion_add(Player.direction,1)
	}
	if dir != noone && dir.team != 2 &&  collision_line(x,y,dir.x,dir.y,Wall,false,false) == noone
	{
		gunangle = point_direction(x,y,dir.x,dir.y);
		if instance_exists(Player) && Player.skill_got[17] == 1
			snd_play(sndLaserUpg,0.1,true)
		else
			snd_play(sndLaser,0.1,true)

		with instance_create(x,y,Laser)
		{
			image_angle = other.gunangle;
			team = 2;
			event_perform(ev_alarm,0)
		}
		alarm[0] += 2;
		if dir.x < x
			wepright = -1
		else if dir.x > x
			wepright = 1
	}
}