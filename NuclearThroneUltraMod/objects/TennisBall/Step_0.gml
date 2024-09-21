/// @description Bounce bolt marrow
if time < 1
{
	if UberCont.normalGameSpeed == 60
	{
		time += timeIncrease * 0.5;	
	}
	else
	{
		time += timeIncrease;	
	}
	if time < 0.5
		yOffset = lerp(0,64,ease_out((time - 0.5)/0.5));
	else
		yOffset = lerp(64,0,ease_in(((time - 0.5))/0.5));
	
	var d = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
	if instance_exists(owner)
	{
		x = owner.x + lengthdir_x(lerp(0,32,time),d);
		y = owner.y;
	}
	if time >= 1
	{
		direction = d
		speed = maxSpeed + 1;
		with owner
		{
			d += ((random(8) - 4) * accuracy)
			snd_play_fire(sndTennisRacket)
			repeat(4)
				with instance_create(x,y,Dust)
				{
					speed += 2;
					motion_add(d,4);
				}
			with instance_create(x+lengthdir_x(((Player.skill_got[13]+bettermelee)*20),d),y+lengthdir_y(((Player.skill_got[13]+bettermelee)*20),d),Slash)
			{
				sprite_index = sprTennisSlash;
				dmg = 20
				longarms = 0
				longarms = (Player.skill_got[13]+other.bettermelee)*3
				motion_add(d,2.7+longarms)
				image_angle = direction
				team = other.team
			}
			//Funny cause tennis players yell a lot
			/*
			if object_index == Player && random(10) < 1
			{
				snd_play(snd_hurt);
				repeat(3)
				with instance_create(x,y,Dust)
				{
					speed += 1;
					motion_add(d,1);
				}
			}
			*/
			wepangle = -wepangle
			if !skill_got[2]
			{
				motion_add(d,5)
				scrMoveContactSolid(d,8)
			}
			BackCont.viewx2 += lengthdir_x(30,d)*UberCont.opt_shake
			BackCont.viewy2 += lengthdir_y(30,d)*UberCont.opt_shake
			BackCont.shake += 30
			wkick = -6
		}
		rotation *= -0.125;
		image_angle = direction
	}
}
else
{
	var msk = mask_index;
	mask_index = mskBlade;
	if place_meeting(x,y,Wall)// || collision_line(xprev,yprev,x,y,Wall,false,false)
	{
		event_user(0);
	}
	else if collision_line(xprev,yprev,x + hspeed,y + vspeed,Wall,false,false)
	{
		x = xprev;
		y = yprev;
		while !place_meeting(x,y,Wall)
		{
			x += lengthdir_x(1,direction);	
			y += lengthdir_y(1,direction);
		}
		event_user(0);
	}
	mask_index = msk;
	scrBoltTrail(trailColour,0.15,3);
	scrBladeBoltMarrow();
}
if UberCont.normalGameSpeed == 60
	image_angle += rotation * 0.5;
else
	image_angle += rotation;