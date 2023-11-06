event_inherited()

if walk > 0
{
walk -= 1
motion_add(direction,0.8)
}

if speed > 4
speed = 4

if dodge > -4
{
	if UberCont.normalGameSpeed == 60
	{
		dodge -= 0.5
		if dodge > 0
		{
			if round(dodge) == dodge
				sprite_index=spr_walk;
			move_contact_solid(direction,3)
		}
	}
	else
	{
		dodge -= 1;
		if dodge > 0
		{
			sprite_index=spr_walk;
			move_contact_solid(direction,6)
		}
	}
}
else if canDodge && target != noone && instance_exists(target) && instance_exists(Player) && Player.fired
{
if point_distance(x,y,target.x,target.y) < 48
direction = point_direction(x,y,target.x,target.y)+180
else
direction = point_direction(target.x+lengthdir_x(point_distance(x,y,target.x,target.y)*0.95,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),target.y+lengthdir_y(point_distance(x,y,target.x,target.y)*0.95,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),x,y)+random(60)-30
dodge = 4
alarm[0] += 4
}


if my_health < maxhealth/2 and sndhalfhp = 0
{
snd_play(sndLilHunterHalfHP)
sndhalfhp = 1
}

if !instance_exists(Player) and sndtaunt = 0
{
tauntdelay += 1
if tauntdelay > 50
{
snd_play(sndLilHunterTaunt)
sndtaunt = 1
}
}
if instance_exists(projectile)
{
    dodgethis = instance_nearest(x,y,projectile);
    with instance_nearest(x,y,projectile)
    {
    if team=2
    other.dodgethis=id;
    }
    
    if point_distance(x,y,dodgethis.x,dodgethis.y)<32&&dodgethis.team=2
    {
    var forwardprojectilex;
    var forwardprojectiley;
    
    forwardprojectilex=lengthdir_x(dodgethis.speed,dodgethis.direction);
    forwardprojectiley=lengthdir_y(dodgethis.speed,dodgethis.direction);
    
    //direction = point_direction(target.x+lengthdir_x(point_distance(x,y,target.x,target.y)*0.95,point_direction(x,y,forwardprojectilex,forwardprojectiley)),target.y+lengthdir_y(point_distance(x,y,target.x,target.y)*0.95,point_direction(x,y,forwardprojectilex,forwardprojectiley)),x,y)+random(60)-30
    
    direction=point_direction(x,y,forwardprojectilex,forwardprojectiley)+180+random(30)-15;
    dodge=4;
    alarm[0] += 1
    
    }
}

if instance_exists(Player)
{
if alarm[1]>60
{

if point_distance(x,y,Player.x,Player.y)<290
{alarm[1]=60;
alarm[2]=20;}

}

}

