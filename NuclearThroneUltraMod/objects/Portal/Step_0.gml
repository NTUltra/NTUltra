var d = 56;
var t = type
if inverted || type == 3
{
	d = 34;
	pullRange = 70;
}	
if instance_exists(Player)
{
	if Player.visible
	{
		if Player.x < x
		image_xscale = -1
		else
		image_xscale = 1
	}

if sprite_index = sprPortal or sprite_index = sprProtoPortal or sprite_index = sprPortalInverted || sprite_index = sprBigPortal || sprite_index == sprPinkPortal || sprite_index == sprPopoPortal
{
	with WepPickup
	{
		if (point_distance(x,y,other.x,other.y) < 96 || t == 4) && collision_line(x,y,other.x,other.y,Wall,0,0) < 0
		{
			//if place_free(x+lengthdir_x(other.pullstrength,point_direction(x,y,Portal.x,Portal.y)),y)
			if visitedPortals < 3
			{
				x += lengthdir_x(other.pullstrength,point_direction(x,y,other.x,other.y))
			//if place_free(x,y+lengthdir_y(other.pullstrength,point_direction(x,y,Portal.x,Portal.y)))
				y += lengthdir_y(other.pullstrength,point_direction(x,y,other.x,other.y))
			}
			else
			{
				x -= lengthdir_x(other.pullstrength,point_direction(x,y,other.x,other.y))
				y -= lengthdir_y(other.pullstrength,point_direction(x,y,other.x,other.y))
			}
			image_angle -= 15*rotspeed

			if /*point_distance(x,y,Portal.x,Portal.y) < 48 &&*/ visible
			{
				//mask_index = mskPickupThroughWall;
				//persistent = true;
				x += lengthdir_x(2,point_direction(x,y,other.x,other.y))
				y += lengthdir_y(2,point_direction(x,y,other.x,other.y))
			}
		}
	}
	var n = instance_nearest(x,y,ThrowWep);
	with n {
		if (point_distance(x,y,other.x,other.y) < 96 || t == 4) and collision_line(x,y,other.x,other.y,Wall,0,0) < 0
		{
			//if place_free(x+lengthdir_x(other.pullstrength,point_direction(x,y,Portal.x,Portal.y)),y)
				x += lengthdir_x(other.pullstrength,point_direction(x,y,other.x,other.y))
			//if place_free(x,y+lengthdir_y(other.pullstrength,point_direction(x,y,Portal.x,Portal.y)))
				y += lengthdir_y(other.pullstrength,point_direction(x,y,other.x,other.y))
			image_angle -= 15*rotspeed

			if /*point_distance(x,y,Portal.x,Portal.y) < 48 &&*/ visible
			{
				//mask_index = mskPickupThroughWall;
				//persistent = true;
				x += lengthdir_x(2,point_direction(x,y,other.x,other.y))
				y += lengthdir_y(2,point_direction(x,y,other.x,other.y))
			}
		}
	}
	if alarm[4] < 1
	with Player
	{
		var pr = other.pullRange;
		if skill_got[2]
			pr *= 0.5;
		var pt = instance_nearest(x,y,Portal);
		if pt == other.id
		{
			if (point_distance(x,y,pt.x,pt.y) < pr*0.45 || t == 4) and collision_line(x,y,pt.x,pt.y,Wall,0,0) < 0
			{
				if place_free(x+lengthdir_x(other.pullstrength,point_direction(x,y,pt.x,pt.y)),y)
					x += lengthdir_x(other.pullstrength,point_direction(x,y,pt.x,pt.y))
				if place_free(x,y+lengthdir_y(other.pullstrength,point_direction(x,y,pt.x,pt.y)))
					y += lengthdir_y(other.pullstrength,point_direction(x,y,pt.x,pt.y))
				if roll == 0
					angle -= 30*right
				sprite_index = spr_hurt
				depth = -9
				if UberCont.normalGameSpeed == 60
					image_index = 2;
				else
					image_index = 1
			}
			else if (point_distance(x,y,pt.x,pt.y) < pr || t == 4) and collision_line(x,y,pt.x,pt.y,Wall,0,0) < 0
			{
				if place_free(x+lengthdir_x(other.pullstrength*0.6,point_direction(x,y,pt.x,pt.y)),y)
					x += lengthdir_x(other.pullstrength*0.6,point_direction(x,y,pt.x,pt.y))
				if place_free(x,y+lengthdir_y(other.pullstrength*0.6,point_direction(x,y,pt.x,pt.y)))
					y += lengthdir_y(other.pullstrength*0.6,point_direction(x,y,pt.x,pt.y))
				angle -= 30*right
				sprite_index = spr_hurt
				depth = -9
				if UberCont.normalGameSpeed == 60
					image_index = 2;
				else
					image_index = 1
			}
			else if roll = 0
				angle = 0
		}
	}
}

	if alarm[1] < 1 && point_distance(x,y,Player.x,Player.y) < d
		Player.alarm[3]= max(Player.alarm[3],2);
}

if endgame < 100
{
	if UberCont.normalGameSpeed == 60
		endgame -= 0.5
	else
		endgame -= 1
if endgame < 0 and (sprite_index = sprPortal or sprite_index = sprProtoPortal or sprite_index = sprPortalInverted ||  sprite_index = sprBigPortal || sprite_index == sprPinkPortal || sprite_index == sprPopoPortal)
{
	image_index = 0
	if type = 1
	{
	sprite_index = sprPortalDisappear
	if inverted
	sprite_index= sprPortalInvertedDisappear
	}
	if type = 3
	sprite_index = sprProtoPortalDisappear
	else if isPink && !inverted
		sprite_index = sprPinkPortalDisappear;
	else if isHQ && !inverted
		sprite_index = sprPopoPortalDisappear;
	if type = 4
	sprite_index = sprBigPortalDisappear;
	with Player
	{
		visible = 0
		roll = 0
		angle = 0
		sprite_index = spr_idle;
		//ROBOT
		if race = 8
		{
		    if (race == 8 && !ultra_got[32])//&& (Player.ultra_got[29]==1||Player.ultra_got[30]==1||Player.ultra_got[31]==1))
		    {
			    with WepPickup
			    {
					var curseEater = (other.ultra_got[30] && other.altUltra)
					if !hasBeenEaten && (!curse || curseEater) && !persistent
					{
						if curse && curseEater
						{
							scrHeal(1,true);
							snd_play(sndCursedReminder);
							snd_play(sndHealthPickup);
							curse = 0;
						}
						scrBasicRobotEat(other.x,other.y,wep);
						instance_create(other.x,other.y,Smoke);
					}
				}
				instance_create(other.x,other.y,Smoke);
		    }
		} 
	}
	//with PlayerInPortal
	//	instance_destroy();
}
}
if !instance_exists(Player) && !instance_exists(PlayerSpawn)
{
endgame = -1
if endgame < 0 and (sprite_index = sprPortal or sprite_index = sprProtoPortal or sprite_index = sprPortalInverted 
||  sprite_index = sprBigPortal || sprite_index == sprPinkPortal || sprite_index == sprPopoPortal)
{
image_index = 0
if type = 1
{
	sprite_index = sprPortalDisappear
if inverted
	sprite_index=sprPortalInvertedDisappear;
}
if type = 3
	sprite_index = sprProtoPortalDisappear
else if isPink && !inverted
	sprite_index = sprPinkPortalDisappear;
else if isHQ && !inverted
	sprite_index = sprPopoPortalDisappear;
if type = 4
	sprite_index = sprBigPortalDisappear;
}
}
if UberCont.normalGameSpeed == 60
	pullstrength += 0.015;
else
	pullstrength += 0.03;
if inverted
{
	if pullstrength>2.25 && type != 4
		pullstrength=2.25;
}
else
{
	if pullstrength>4.25 && type != 4
		pullstrength=4.25;
}
if pullstrength > 10
	pullstrength = 10;
