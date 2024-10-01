if instance_exists(Player){
	if Player.lockout
	{
		if !sprite_index == spr_disappear
		{
			sprite_index = spr_disappear
			image_speed = 0.6
			image_index = 0
		}
		exit;
	}
	if Player.ultra_got[6] && !Player.altUltra{
		if KeyCont.key_west[p] = 2 or KeyCont.key_west[p] = 1
		hspeed -= 3
		if KeyCont.key_east[p] = 2 or KeyCont.key_east[p] = 1
		hspeed += 3
		if KeyCont.key_nort[p] = 2 or KeyCont.key_nort[p] = 1
		vspeed -= 3
		if KeyCont.key_sout[p] = 2 or KeyCont.key_sout[p] = 1
		vspeed += 3

		if speed > Player.maxSpeed*0.85 + (Player.skill_got[2]*0.75)
			speed = Player.maxSpeed*0.85 + (Player.skill_got[2]*0.75)
	}
if(sprite_index!=spr_disappear){//exit code as soon as the shield starts to dissapear
if instance_exists(Player)
{

}
else if sprite_index != spr_disappear && Player.my_health > 0
{
sprite_index = spr_disappear
image_speed = 0.6
image_index = 0
}
if(sprite_index!=spr_disappear){
Player.x = x;
Player.y = y;
Player.speed = 0;
}
if UberCont.normalGameSpeed == 60
{
	time += 1.5
	if Player.skill_got[5]//thronebuttttt
		time -= 1.25;
}
else
{
	time += 3
	if Player.skill_got[5]//thronebuttttt
		time -= 2.5;
}
if time > 200 and sprite_index != spr_disappear
{
sprite_index = spr_disappear
image_speed = 0.6
image_index = 0
	if Player.altUltra && Player.ultra_got[6]
	{
		var canTeleport = false;
		with Player {
			if !place_meeting(mouse_x,mouse_y,WallHitMe) && place_meeting(mouse_x,mouse_y,Floor)
			{
				canTeleport = true
				x = mouse_x;
				y = mouse_y;
				snd_play_2d(sndCrystalTeleport);
			}
		}
		if (canTeleport)
		{
			x = mouse_x;
			y = mouse_y;
		}
	
		var dir = 0;
		var dirStep = 45;
		repeat(8)
		{
			with instance_create(x,y,Laser)
			{
				sprite_index=sprBouncingLaser;
				image_angle = dir
				team = other.team
				event_perform(ev_alarm,0)
			}
			dir += dirStep;
		}
	}
}
if KeyCont.key_spec[p] = 3
{
	sprite_index = spr_disappear
	image_speed = 0.6
	image_index = 0
	if Player.altUltra && Player.ultra_got[6] 
	{
		var canTeleport = false;
		with Player {
			if !place_meeting(mouse_x,mouse_y,WallHitMe) && place_meeting(mouse_x,mouse_y,Floor)
			{
				canTeleport = true
				x = mouse_x;
				y = mouse_y;
				snd_play_2d(sndCrystalTeleport);
				scrForcePosition60fps();
			}
		}
		if (canTeleport)
		{
			x = mouse_x;
			y = mouse_y;
		}
		var dir = 0;
		var dirStep = 45;
		repeat(8)
		{
			with instance_create(x,y,Laser)
			{
				sprite_index=sprBouncingLaser;
				image_angle = dir
				team = other.team
				event_perform(ev_alarm,0)
			}
			dir += dirStep;
		}
	}
}}
if Player.ultra_got[6]=1 && !Player.altUltra{
mask_index=mskMovingShield;

if place_meeting(x+hspeed,y+vspeed,WallHitMe){
	move_contact_solid(direction,max(1,min(Player.maxSpeed,speed)))
	if !place_free(x+hspeed,y){
		hspeed *= 0.5
		//var inwall = place_meeting(x,y,Wall);
		if !place_free(x+hspeed,y)
		{
			//if inwall
			//x-= sign(hspeed);
			hspeed = 0
		}
	}
	if !place_free(x,y+vspeed){
		vspeed *= 0.5
		//var inwall = place_meeting(x,y,Wall);
		if !place_free(x,y+vspeed)
		{
			//if inwall
			//y-= sign(vspeed);
			vspeed = 0
		}
	}
	if place_meeting(x,y,WallHitMe)
	{
		/*
			You should never have to do this
			but lets move the player OUT of a wall
		*/
		var xx = x;
		var yy = y;
		var tryStepsX = []; 
		tryStepsX[0] = x;
		tryStepsX[1]  = x;
		tryStepsX[2] = x + 2;
		tryStepsX[3] = x - 2;
		tryStepsX[4] = x + 2;
		tryStepsX[5] = x - 2;
		tryStepsX[6] = x + 2;
		tryStepsX[7] = x - 2;
		var tryStepsY = [];
		tryStepsY[0] = y + 2;
		tryStepsY[1]  = y - 2;
		tryStepsY[2] = y;
		tryStepsY[3] = y;
		tryStepsY[4] = y + 2;
		tryStepsY[5]  = y - 2;
		tryStepsY[6]  = y - 2;
		tryStepsY[7] = y + 2;
		var al = array_length(tryStepsX);
		for (var i = 0; i < al; i++) {
		    // code here
			xx = tryStepsX[i];
			yy = tryStepsY[i];
			if !place_meeting(xx,yy,WallHitMe)
			{
				x = xx;
				y = yy;
				i = al;
			}
		}
	}
}
mask_index=mskShield;
}}

if UberCont.normalGameSpeed == 60
	wave += 0.5;
else
	wave++;