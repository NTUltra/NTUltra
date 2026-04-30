if (my_health <= 0 && lifes > 0 && fakeded < 0 && instance_number(enemy) - instance_number(IDPDVan) - instance_number(InvertedAssassinBoss) > 4)
{
	depth += 2;
	scrDrop(100,0);
	scrRaddrop(raddrop);
	sprite_index = spr_dead;
	team = 2;
	image_index = 0;
	fakeded = 80 + random(200);
	dodge = 0;
	run = false;
	canDodge = false;
	alarm[1] = fakeded + 10;
	alarm[2] = 0;
	alarm[4] = 0;
	alarm[0] = 0;
	alarm[3] = 0;
	alarm[7] = 0;
	ds_list_clear(afterImage);
	mask_index = mskPickupThroughWall;
	speed = 0;
	lifes--;
	var aalive = false;
	with AssassinBoss
	{
		if my_health > 0
			aalive = true;
	}
	if !instance_exists(SurvivalWave) && !instance_exists(WantBoss) && !aalive
		with MusCont
		{
			scrStopSong();
			song = musUltraBossWin
			snd_play_2d(song)
			audio_sound_gain(song,max(0,UberCont.opt_musvol),0);
		}
}
if fakeded >= 0
	exit;
event_inherited()
if alarm[3] > 0
{
	speed = 0;
	my_health = prevhealth;
	exit;
}
	

		if UberCont.normalGameSpeed == 60
			aggression += 0.5;
		else
			aggression += 1;
	
		if (target != noone && instance_exists(target) && point_distance(target.x,target.y,x,y) < 80) {
			dodge = 0;
		}
	
		if walk > 0 && alarm[2] < 1
		{
			walk -= 1
			motion_add(direction,acc)
			if target != noone && instance_exists(target)
			{
				if distance_to_object(target) > 64
				{
					if UberCont.normalGameSpeed == 60
						mp_potential_step(target.x,target.y,0.5,false)
					else
						mp_potential_step(target.x,target.y,1,false)
				}
				else
				{
					motion_add(point_direction(x,y,target.x,target.y)+180,2.8)
				}
			}
		
		}

	

		if dodge > -dodgeDelay// && alarm[2] < 1
		{
			if sprite_index != spr_hurt
				sprite_index = spr_walk;
			if UberCont.normalGameSpeed == 60
			{
				dodge -= 0.5
				alarm[1] += 0.25;
				if (alarm[2] > 1)
					alarm[2] += 0.25;
				if dodge > 0
				{
					if sprite_index != spr_hurt && round(dodge) == dodge
						sprite_index = spr_walk;
					move_contact_solid(direction,maxSpeed*0.5)
				}
			}
			else
			{
				dodge -= 1;
				alarm[1] += 0.5;
				if (alarm[2] > 1)
					alarm[2] += 0.5;
				if dodge > 0
				{
					if sprite_index != spr_hurt
					sprite_index = spr_walk;
					move_contact_solid(direction,maxSpeed)
				}
			}
		}
		else if point_distance(x,y,UberCont.mouse__x,UberCont.mouse__y)<60 && alarm[2] < 1 && alarm[0] < 1 && spamDeflect == 0{
			if target != noone && instance_exists(target) && instance_exists(Player) && (Player.fired || target != Player) && distance_to_object(target) > 48
			{
				motion_add(point_direction(target.x+lengthdir_x(point_distance(x,y,target.x,target.y)*0.95,
				point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),
				target.y+lengthdir_y(point_distance(x,y,target.x,target.y)*0.95,
				point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),x,y)+random(60)-30,4);
				dodge = dodgeDuration;
				walk = max(walk,dodgeDuration);
				if sprite_index != spr_hurt
					sprite_index = spr_walk;
				gunangle = direction
			}
		}


		if alarm[5] > 0 && target != noone && instance_exists(target)//we just smacked dat
		{
			motion_add(point_direction(x,y,target.x,target.y)+180+random(40)-20,3)
			walk = max(walk,3);
		}


		//Dodge bullet or hit it back
		if  !instance_exists(Marker) && canDodge && instance_exists(projectile) && target != noone && instance_exists(target) && alarm[8] < 50
		{
		    dodgethis = noone
			var dis = 90;
			with projectile {
				if team == 2 && point_distance(x,y,other.x,other.y) < dis
				{
					 other.dodgethis = id;
					 dis = point_distance(x,y,other.x,other.y);
				}
			}
    
		    if dodgethis != noone 
		    {
			    var forwardprojectilex = lengthdir_x(dodgethis.speed,dodgethis.direction);
			    var forwardprojectiley = lengthdir_y(dodgethis.speed,dodgethis.direction);
				var tdis = point_distance(target.x, target.y, x, y);
			    if alarm[2] < 1 && alarm[0] < 1 && alarm[11] < 1 && tdis > 80 && spamDeflect < 4
			    {//SMACK THAT PROJECTILE BACK
					if dodgethis.x < x
						right = -1
					else if dodgethis.x > x
						right = 1
					var projectiledir = point_direction(x,y,dodgethis.x,dodgethis.y);
					gunangle = projectiledir;
					if tdis < 160 {
						walk += 9;
						alarm[2] = 14 - deflectTell;
						alarm[0] = 16 - deflectRate;
						alarm[1] += 8;
						alarm[8] = max(1,alarm[8] - 2);
						speed += 1;
						move_contact_solid(projectiledir+90,acc);
						motion_add(point_direction(x,y,target.x,target.y)+30,acc);
					}
					else
					{
						walk += 2;
						alarm[2] = 1;
						alarm[0] = 3;
						alarm[1] += 1;
						alarm[8] = max(1,alarm[8] - 1);
						speed += 1;
						move_contact_solid(projectiledir-90,acc);
						motion_add(point_direction(x,y,target.x,target.y)-30,acc);
					}
					spamDeflect ++;
					if spamDeflect == 3
					{
						alarm[8] = max(1,alarm[8] - 20);
						direction = point_direction(x,y,target.x,target.y);
						speed += 2;
						walk += 10;
						alarm[0] += 16;
					}
					snd_play(sndAssassinGetUp);
					instance_create(x,y,Notice);
			    }
			    else if alarm[8] < 1 && alarm[2] < 1 && instance_exists(Floor)
			    {//TELEPORT
					if spamDeflect == 4
					{
						event_user(1);	
					}
					else {
						event_user(0);
					}
			    }
			    else if alarm[2] < 1
			    {//dodge it
				    direction = point_direction(x,y,forwardprojectilex,forwardprojectiley)+180+random(30)-15;
				    dodge = dodgeDuration;
			    }
		    }
		} else if alarm[8] < 1 && alarm[2] < 1 && canDodge && aggression > 180 && target != noone && instance_exists(target) && point_distance(x, y, target.x, target.y) > 200 
		{
			event_user(0);
		}
if target != noone
{
	if target.x < x
		right = -1;
	else
		right = 1;
}
if alarm[2] > 0
{
	if target != noone && instance_exists(target) && point_distance(x,y,target.x,target.y) > 64
	{
		direction = point_direction(x,y,target.x,target.y);
		if point_distance(x,y,target.x,target.y) < 24
			direction += 180;
	}
}
if speed > maxSpeed
	speed = maxSpeed
/*if sprite_index == spr_hurt && speed > 4
{
	speed = 4;
}*/