if instance_exists(HorrorSuckDelay)
{
	image_index = 0;
	if collision_line(xprevious,yprevious,x,y,Wall,false,false)
	{
		move_bounce_solid(false);
		move_outside_solid(direction,8);
	}
	exit;
}
var extraRange = defaultRange;
if instance_exists(Player) && (!cursed) {
	var sped = 1;
	if Player.skill_got[3]
	{
		extraRange += 26;
		sped = 2;
	}
	var levelEnded = false;
	with Portal
	{
		if !inverted && alarm[1] < 1
			levelEnded = true;
	}
	if levelEnded
		sped += 2;
	if speed <= 0.5
	{
		repeat(sped)
		{
		    if instance_exists(ProtoStatue) && point_distance(x, y, ProtoStatue.x, ProtoStatue.y) < 185 && (Player.ultra_got[12] == 1 || (collision_line(x, y, ProtoStatue.x, ProtoStatue.y, Wall, 0, 0) < 0)) {
				suckDirection = point_direction(x, y, ProtoStatue.x, ProtoStatue.y);
		        if levelEnded || !collision_line(x,y,x + lengthdir_x(stepDis, suckDirection), y,Wall,false,false)
					x += lengthdir_x(stepDis, suckDirection)
		        if levelEnded || !collision_line(x,y,x, y + lengthdir_y(stepDis, suckDirection),Wall,false,false)
					y += lengthdir_y(stepDis, suckDirection)
			
				if place_meeting(x,y,ProtoStatue)
				{
					event_user(1);	
				}
		    }
		    else if levelEnded || point_distance(x, y, Player.x, Player.y) < extraRange + Player.betterpluto {
				suckDirection = point_direction(x, y, Player.x, Player.y);
		        if levelEnded || !collision_line(x,y,x + lengthdir_x(stepDis, suckDirection), y,Wall,false,false)
					x += lengthdir_x(stepDis, suckDirection)
		        if levelEnded || !collision_line(x,y,x, y + lengthdir_y(stepDis, suckDirection),Wall,false,false)
					y += lengthdir_y(stepDis, suckDirection)

		        isGettingSucked = true;
				if place_meeting(x,y,Player)
				{
					event_user(0);	
				}
		    }
		    else if instance_exists(Implosion) {
		        if point_distance(x, y, Implosion.x, Implosion.y) < 80 or instance_exists(Portal) {
					suckDirection = point_direction(x, y, Implosion.x, Implosion.y);
		            if !collision_line(x,y,x + lengthdir_x(stepDis, suckDirection), y,Wall,false,false)
						x += lengthdir_x(stepDis, suckDirection)
		            if !collision_line(x,y,x, y + lengthdir_y(stepDis, suckDirection),Wall,false,false)
						y += lengthdir_y(stepDis, suckDirection)
					if place_meeting(x,y,Implosion)
					{
						event_user(0);
					}
		        }
		    }
			else if (Player.ultra_got[108] && instance_exists(Hand) && point_distance(x, y, Hand.x, Hand.y) < extraRange + Player.betterpluto)
			{
				suckDirection = point_direction(x, y, Hand.x, Hand.y);
				if !collision_line(x,y,x + lengthdir_x(stepDis, suckDirection), y,Wall,false,false)
					x += lengthdir_x(stepDis, suckDirection)
		        if !collision_line(x,y,x, y + lengthdir_y(stepDis, suckDirection),Wall,false,false)
					y += lengthdir_y(stepDis, suckDirection)
				if place_meeting(x,y,Hand)
				{
					event_user(0);
				}
			}
			else if instance_exists(YungCuzDupe)
				{
				var n = instance_nearest(x,y,YungCuzDupe);
				if point_distance(x, y, n.x, n.y) < extraRange + Player.betterpluto
				{
					suckDirection = point_direction(x, y, n.x, n.y);
					if !collision_line(x,y,x + lengthdir_x(stepDis, suckDirection), y,Wall,false,false)
						x += lengthdir_x(stepDis, suckDirection)
				    if !collision_line(x,y,x, y + lengthdir_y(stepDis, suckDirection),Wall,false,false)
						y += lengthdir_y(stepDis, suckDirection)
					if place_meeting(x,y,YungCuzDupe)
					{
						event_user(0);
					}
				}
				else
				{
					isGettingSucked = false;
					if place_meeting(x,y,Player)
					{
						event_user(0);	
					}
				}
			}
		    else
			{
		        isGettingSucked = false;
				if place_meeting(x,y,Player)
				{
					event_user(0);	
				}
			}
		}
	}
	else if collision_line(xprevious,yprevious,x,y,Wall,false,false)
	{
		move_bounce_solid(false);
		move_outside_solid(direction,8);
	}
}

if image_index < 1
image_index += random(0.04)
else
    image_index += 0.4
