var d = 64;
var t = type
if inverted || type == 3
{
	d = 44;
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

if sprite_index = sprPortal or sprite_index = sprProtoPortal or sprite_index = sprPortalInverted || sprite_index = sprBigPortal || sprite_index == sprPinkPortal
{
with WepPickup
{
	if (point_distance(x,y,Portal.x,Portal.y) < 96 || t == 4) and collision_line(x,y,Portal.x,Portal.y,Wall,0,0) < 0
	{
		//if place_free(x+lengthdir_x(other.pullstrength,point_direction(x,y,Portal.x,Portal.y)),y)
			x += lengthdir_x(other.pullstrength,point_direction(x,y,Portal.x,Portal.y))
		//if place_free(x,y+lengthdir_y(other.pullstrength,point_direction(x,y,Portal.x,Portal.y)))
			y += lengthdir_y(other.pullstrength,point_direction(x,y,Portal.x,Portal.y))
		image_angle -= 15*rotspeed

		if point_distance(x,y,Portal.x,Portal.y) < 48 && visible
		{
			//mask_index = mskPickupThroughWall;
			persistent = true;
			x += lengthdir_x(2,point_direction(x,y,Portal.x,Portal.y))
			y += lengthdir_y(2,point_direction(x,y,Portal.x,Portal.y))
		}
		if point_distance(x,y,Portal.x,Portal.y) < 16
		{
			x = -50000
			y = -50000
		}
	}
}

	with Player
	{
		var pt = instance_nearest(x,y,Portal);
		if pt == other.id
		{
			if (point_distance(x,y,pt.x,pt.y) < other.pullRange*0.45 || t == 4) and collision_line(x,y,pt.x,pt.y,Wall,0,0) < 0
			{
				if place_free(x+lengthdir_x(other.pullstrength,point_direction(x,y,pt.x,pt.y)),y)
					x += lengthdir_x(other.pullstrength,point_direction(x,y,pt.x,pt.y))
				if place_free(x,y+lengthdir_y(other.pullstrength,point_direction(x,y,pt.x,pt.y)))
					y += lengthdir_y(other.pullstrength,point_direction(x,y,pt.x,pt.y))
				angle -= 30*right
				sprite_index = spr_hurt
				depth = -9
				image_index = 1
			}
			else if (point_distance(x,y,pt.x,pt.y) < other.pullRange || t == 4) and collision_line(x,y,pt.x,pt.y,Wall,0,0) < 0
			{
				if place_free(x+lengthdir_x(other.pullstrength*0.6,point_direction(x,y,pt.x,pt.y)),y)
					x += lengthdir_x(other.pullstrength*0.6,point_direction(x,y,pt.x,pt.y))
				if place_free(x,y+lengthdir_y(other.pullstrength*0.6,point_direction(x,y,pt.x,pt.y)))
					y += lengthdir_y(other.pullstrength*0.6,point_direction(x,y,pt.x,pt.y))
				angle -= 30*right
				sprite_index = spr_hurt
				depth = -9
				image_index = 1
			}
			else if roll = 0
				angle = 0
		}
	}
}

if point_distance(x,y,Player.x,Player.y)<d
	Player.alarm[3]=10;
}

if endgame < 100
{
endgame -= 1
if endgame < 0 and (sprite_index = sprPortal or sprite_index = sprProtoPortal or sprite_index = sprPortalInverted ||  sprite_index = sprBigPortal || sprite_index == sprPinkPortal)
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
	if type = 4
	sprite_index = sprBigPortalDisappear;
	with Player
	{
	visible = 0
	roll = 0
	angle = 0
	}
}
}
if !instance_exists(Player) && !instance_exists(PlayerSpawn)
{
endgame = -1
if endgame < 0 and (sprite_index = sprPortal or sprite_index = sprProtoPortal or sprite_index = sprPortalInverted ||  sprite_index = sprBigPortal || sprite_index == sprPinkPortal)
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
if type = 4
	sprite_index = sprBigPortalDisappear;
}
}

pullstrength+=0.04;
if inverted
{
	if pullstrength>2.25 && type != 4
		pullstrength=2.25;
}
else
{
	if pullstrength>4.5 && type != 4
		pullstrength=4.5;
}
if pullstrength > 10
	pullstrength = 10;
