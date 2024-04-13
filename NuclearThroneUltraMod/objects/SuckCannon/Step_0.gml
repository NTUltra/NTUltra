/// @description Suck in the bullets
if owner != noone && instance_exists(owner)
{
	BackCont.shake += 1;
	x = owner.x;
	y = owner.y;
	prevangle = image_angle;
	image_angle = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
	/*
	with owner
	{
		if !skill_got[2]
		{
			scrMoveContactSolid(other.image_angle + 180,0.01);
			motion_add(other.image_angle+180,0.01)
		}	
	}*/
	var projs = ds_list_create();
	var al = instance_place_list(x,y,projectile,projs,false);
	var o = owner;
	var playedSound = false;
	for (var i = 0; i < al; i++)
	{
		with projs[| i] {
			if team != other.team && canBeMoved
			{
				if typ == 3
				{
					x = xprevious;
					y = yprevious;
				}
				else
				{
					instance_destroy(id,false);
					with other
					{
						ds_list_add(suckedProjectiles,other.object_index);	
					}
					with instance_create(x,y,SuckProjectile)
					{
						sprite_index = other.sprite_index;
						owner = o;
						BackCont.shake += 2;
					}
					if !playedSound
					{
						playedSound = true;
						snd_play(sndSuckProjectile,0.1,false ,true, 2, false,false);	
					}
				}
			}
		}
	}
	ds_list_destroy(projs);

	if dust
	{
		var ang = image_angle - 30;
		var angStep = 15;
		var minDis = 48;
		for (var i = 0; i < 4; i ++)
		{
			var xx = x;
			var yy = y;
			var dis = minDis;
			var step = 26;
			for (var j = 0; j < 3; j ++)
			{
				var myAng = ang+random_range(8,-8);
				var xx = x + lengthdir_x(dis,myAng);
				var yy = y + lengthdir_y(dis,myAng);
				if (collision_point(xx,yy,Floor,false,false))
					with instance_create(xx,yy,Dust)
					{
						depth = 6;
						motion_add(myAng + 180,	2 + random(3));
					}
				dis += step;
				step += 1;
			}
			ang += angStep;
		}
	}
	dust = !dust;
	var pickups = ds_list_create();
	var pl = instance_place_list(x,y,Pickup,pickups,false);
	for (var i = 0; i < pl; i++)
	{
		with pickups[| i] {
			x += lengthdir_x(1,other.image_angle + 180);
			y += lengthdir_y(1,other.image_angle + 180);
		}
	}
	var weppickups = ds_list_create();
	var wpl = instance_place_list(x,y,WepPickup,weppickups,false);
	for (var i = 0; i < wpl; i++)
	{
		with weppickups[| i] {
			x += lengthdir_x(1,other.image_angle + 180);
			y += lengthdir_y(1,other.image_angle + 180);
		}
	}
	var enems = ds_list_create();
	var dss = instance_place_list(x,y,hitme,enems,false);
	for (var i = 0; i < dss; i++)
	{
		with enems[| i] {
			if team != other.team
			{
				if sprite_index != spr_hurt
				{
					sprite_index = spr_hurt;
					image_index = 0;
					snd_play(snd_hurt, hurt_pitch_variation,true)
					motion_add(other.image_angle + 1,1)
				}
				if UberCont.normalGameSpeed == 60
					DealDamage(other.dmg * 0.5, true);
				else
					DealDamage(other.dmg,true);
			}
		}
	}
	if instance_exists(Player){
		//if theres you are not holding the fire button
		if scrChargeRelease() || ds_list_size(suckedProjectiles) > 50
		{
			if !released
				snd_play(sndSuckCannonRelease);
			released = true;
			event_user(0);
		}
	}
	if !audio_is_playing(sndSuckCannonLoop)
		snd_loop(sndSuckCannonLoop);
	if audio_is_playing(sndSuckCannonLoop)
		audio_sound_pitch(sndSuckCannonLoop,pitch);
	pitch += abs(angle_difference(image_angle,prevangle))*0.02;
	pitch = clamp(pitch - 0.1,0.96,1.8);
	BackCont.viewx2 += lengthdir_x(1,image_angle)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(1,image_angle)*UberCont.opt_shake
	owner.wkick = -3
}
else
{
	instance_destroy();	
}