alarm[1] = actTime+random(actTime)


if sprite_index != spr_hurt
	sprite_index = spr_idle
scrTarget()
if target != noone
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
{
	var ran = random(18);
	if ran < 1 && point_distance(target.x,target.y,x,y)<180
	{
		snd_play(sndFlare);
		direction = point_direction(x,y,target.x,target.y)+180
		if nukeIt
		{
			snd_play(sndNukeFire)
			with instance_create(x,y,TeaPotNuke)
			{
				team = other.team;	
			}
		}
	    with instance_create(x,y,MiniFlameCannonBall)
	    {
		    image_angle=random(360);
		    motion_add(other.direction+180+(random(16)-8),2.5)
		    team = other.team
		}
		speed*=0.4;
		image_index = 0
		sprite_index = spr_fire
		alarm[1] = actTime*3
		walk=alarm[1];
	}
	else if ran < 2
	{
		var aim = point_direction(x,y,target.x,target.y)
		with instance_create(x,y,EnemyFireBullet)
		{
		motion_add(aim+random(14)-7,2.5)
		image_angle = direction
		team = other.team
		snd_play(sndFireballerFire, 0.05)
		}
		sprite_index = spr_fire
		image_index = 0
	}
	else if ran < 4
	{
	alarm=15+random(25)
	walk=0;
	}
else{
direction = point_direction(x,y,target.x,target.y)+random(20)-10
walk=alarm[1];}
}
else if random(80)<1{//very small chance to fire even though theres a wall
direction = point_direction(x,y,target.x,target.y)+180
    with instance_create(x,y,MiniFlameCannonBall)
    {
    image_angle=random(360);
    motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)+(random(8)-4),2)
    team = other.team}

image_index = 0
sprite_index = spr_fire
alarm[1] = 30
walk=0;
}
else if random(18)<1
{
walk=0;
alarm[1]=15+random(15);
}
else{
motion_add(random(360),1)
walk=alarm[1];}
}
else{ 
motion_add(random(360),0.5)
walk=alarm[1];}

