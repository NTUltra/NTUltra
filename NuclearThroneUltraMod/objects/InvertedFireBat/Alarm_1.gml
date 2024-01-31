alarm[1] = actTime+random(actTime)

canDodge = true;
if sprite_index != spr_hurt
sprite_index = spr_idle
scrTarget()
if target != noone
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
{
	var ran = random(18);
	if ran < 1.5
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

		    with instance_create(x,y,EnemyLightningBall)
		    {
		    motion_add(other.direction+180+(random(16)-8),2.5)
		    team = other.team}
		speed*=0.4;
		sprite_index = spr_fire
		image_index = 0
		alarm[1] = actTime*3
		walk=alarm[1];
	}
	else if ran < 2.4
	{
		snd_play(sndLightning1,0.1);
	    with instance_create(x,y,Lightning)
		{
			image_angle = point_direction(x,y,Player.x,Player.y)+(random(14)-7)
			team = other.team
			ammo = 7
			event_perform(ev_alarm,0)
			with instance_create(x,y,LightningSpawn)
			image_angle = other.image_angle
		}
		sprite_index = spr_fire
		image_index = 0
	}
	else if ran < 4
	{
	alarm=10+random(10)
	walk=0;
	}
	else {
	direction = point_direction(x,y,target.x,target.y)+random(20)-10
	walk=alarm[1];}
}
else if random(55)<1{//very small chance to fire even though theres a wall
direction = point_direction(x,y,target.x,target.y)+180
    with instance_create(x,y,EnemyLightningBall)
    {
    image_angle=random(360);
    motion_add(other.direction+(random(8)-4),2)
    team = other.team}

image_index = 0
sprite_index = spr_fire
alarm[1] = 20
walk=0;
}
else if random(18)<1
{
walk=0;
alarm[1]=10+random(10);
}
else{
motion_add(random(360),1)
walk=alarm[1];}
}
else{ 
motion_add(random(360),0.5)
walk=alarm[1];}

