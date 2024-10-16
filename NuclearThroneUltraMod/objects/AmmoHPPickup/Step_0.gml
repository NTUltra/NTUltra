if image_index < 1
image_index += random(0.04)
else
    image_index += 0.4;

var sped = 1;
var gotPluto = false;
if instance_exists(Player) {
	if Player.skill_got[3]
	{
		gotPluto = true;
		sped = 2;
	}
}
else
	exit;
var levelEnded = false;
if !supercursed || gotPluto 
{
	with Portal
	{
		if !inverted && alarm[1] < 1
			levelEnded = true;
	}
	var range = Player.betterpluto;
	if (cursed)
	{
		range *= 0.5;
		range = max(range,20);
		sped = 1;
		levelEnded = false;
	}
	if (supercursed)
	{
		sped = 1;
		range *= 0.25;
		range = max(range,16);
		levelEnded = false;
	}
	if (levelEnded)
	{
		sped += 2;
	}
	
	if point_distance(x, y, Player.x, Player.y) < range or levelEnded {
		repeat(sped)
		{
			suckDirection = point_direction(x, y, Player.x, Player.y)
			if levelEnded || !collision_line(x,y,x + lengthdir_x(as, suckDirection),y,Wall,false,false)
				x += lengthdir_x(as, suckDirection)
			if levelEnded || !collision_line(x,y,x,y + lengthdir_y(as, suckDirection),Wall,false,false)
				y += lengthdir_y(as, suckDirection)
			isGettingSucked = true;
			if place_meeting(x,y,Player)
			{
				event_user(0);
				continue;
			}
		}
	}
	else
	{
		isGettingSucked = false;
		if point_distance(x, y, Player.x, Player.y) < range + 36 {
			var slowSuck = as*0.0625;
			suckDirection = point_direction(x, y, Player.x, Player.y)
			if levelEnded || !collision_line(x,y,x + lengthdir_x(slowSuck, suckDirection),y,Wall,false,false)
				x += lengthdir_x(slowSuck, suckDirection)
			if levelEnded || !collision_line(x,y,x,y + lengthdir_y(slowSuck, suckDirection),Wall,false,false)
				y += lengthdir_y(slowSuck, suckDirection)
		}
		if instance_exists(Implosion) {
			if point_distance(x, y, Implosion.x, Implosion.y) < range {
				repeat(sped)
				{
					suckDirection = point_direction(x, y, Implosion.x, Implosion.y);
				    if levelEnded || Player.ultra_got[12] == 1 || collision_line(x,y,x + lengthdir_x(as, suckDirection),y,Wall,false,false) || ((Player.ultra_got[12] == 1) && (KeyCont.key_spec[Player.p] = 1 or KeyCont.key_spec[Player.p] = 2))
						x += lengthdir_x(as, suckDirection)
				    if levelEnded || Player.ultra_got[12] == 1 || collision_line(x,y,x,y + lengthdir_y(as, suckDirection),Wall,false,false) || ((Player.ultra_got[12] == 1) && (KeyCont.key_spec[Player.p] = 1 or KeyCont.key_spec[Player.p] = 2))
						y += lengthdir_y(as, suckDirection)
				
					if place_meeting(x,y,Implosion)
					{
						event_user(0);
						continue;
					}
				}
			}
		}
		else if (Player.ultra_got[108] && instance_exists(Hand) && point_distance(x, y, Hand.x, Hand.y) < range)
		{
			repeat(sped)
			{
				suckDirection = point_direction(x, y, Hand.x, Hand.y);
				if levelEnded || collision_line(x,y,x + lengthdir_x(as, suckDirection),y,Wall,false,false)
					x += lengthdir_x(as, suckDirection)
			    if levelEnded || collision_line(x,y,x,y + lengthdir_y(as, suckDirection),Wall,false,false)
					y += lengthdir_y(as, suckDirection)
				if place_meeting(x,y,Hand)
				{
					event_user(0);
					continue;
				}
			}
		}
		else if instance_exists(YungCuzDupe)
		{
			var n = instance_nearest(x,y,YungCuzDupe);
			if point_distance(x, y, n.x, n.y) < range
			{
				repeat(sped)
				{
					suckDirection = point_direction(x, y, n.x, n.y);
					if levelEnded || collision_line(x,y,x + lengthdir_x(as, suckDirection),y,Wall,false,false)
						x += lengthdir_x(as, suckDirection)
					if levelEnded || collision_line(x,y,x,y + lengthdir_y(as, suckDirection),Wall,false,false)
						y += lengthdir_y(as, suckDirection)
					if place_meeting(x,y,YungCuzDupe)
					{
						event_user(0);
						continue;
					}
				}
			}
		}
	}
} else {
	//Curse run away
	if instance_exists(Player) {
		suckDirection = point_direction(x, y, Player.x, Player.y)
		var dis = point_distance(x, y, Player.x, Player.y);
	    if dis < 48 && dis > 16 {//37
	        if levelEnded || !collision_line(x,y,x + lengthdir_x(curseSpeed, suckDirection),y,Wall,false,false)
	        x -= lengthdir_x(curseSpeed, suckDirection)
	        if levelEnded || !collision_line(x,y,x,y + lengthdir_y(curseSpeed, suckDirection),Wall,false,false)
				y -= lengthdir_y(curseSpeed, suckDirection)
		}
		if place_meeting(x,y,Player)
		{
			event_user(0);
		}
	}
}
if !levelEnded && speed > 0
{
	if mask_index != mskPickupThroughWall
	{
		var msk = mask_index;
		mask_index = mskPickup;
		if place_meeting(x,y,Wall)
		{
			move_bounce_solid(false);
			move_outside_solid(direction,8);
			speed *= 0.75;
		}
		mask_index = msk;
	}
}