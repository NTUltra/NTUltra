var extraRange = 38;
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
	repeat(sped)
	{
	    if instance_exists(ProtoStatue) and speed <= 0.5 {
	        if point_distance(x, y, ProtoStatue.x, ProtoStatue.y) < 180 and(Player.ultra_got[12] == 1 || (collision_line(x, y, ProtoStatue.x, ProtoStatue.y, Wall, 0, 0) < 0)) {
	            if !place_meeting(x + lengthdir_x(stepDis, point_direction(x, y, ProtoStatue.x, ProtoStatue.y)), y,Wall)
					x += lengthdir_x(stepDis, point_direction(x, y, ProtoStatue.x, ProtoStatue.y))
	            if !place_meeting(x, y + lengthdir_y(stepDis, point_direction(x, y, ProtoStatue.x, ProtoStatue.y)),Wall)
					y += lengthdir_y(stepDis, point_direction(x, y, ProtoStatue.x, ProtoStatue.y))
			
				if place_meeting(x,y,ProtoStatue)
				{
					event_user(1);	
				}
	        } else if speed <= 0.5 {
	            if point_distance(x, y, Player.x, Player.y) < extraRange + Player.betterpluto or levelEnded {
	                if !place_meeting(x + lengthdir_x(stepDis, point_direction(x, y, Player.x, Player.y)), y,Wall)
	                x += lengthdir_x(stepDis, point_direction(x, y, Player.x, Player.y))
	                if !place_meeting(x, y + lengthdir_y(stepDis, point_direction(x, y, Player.x, Player.y)),Wall)
	                y += lengthdir_y(stepDis, point_direction(x, y, Player.x, Player.y))
				
	                isGettingSucked = true;
					if place_meeting(x,y,Player)
					{
						event_user(0);	
					}
	            }
				else if (Player.ultra_got[108] && instance_exists(Hand) && point_distance(x, y, Hand.x, Hand.y) < extraRange + Player.betterpluto)
				{
					if !place_meeting(x + lengthdir_x(stepDis, point_direction(x, y, Hand.x, Hand.y)), y,Wall)
						x += lengthdir_x(stepDis, point_direction(x, y, Hand.x, Hand.y))
		            if !place_meeting(x, y + lengthdir_y(stepDis, point_direction(x, y, Hand.x, Hand.y)),Wall)
						y += lengthdir_y(stepDis, point_direction(x, y, Hand.x, Hand.y))
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
						if !place_meeting(x + lengthdir_x(stepDis, point_direction(x, y, n.x, n.y)), y,Wall)
							x += lengthdir_x(stepDis, point_direction(x, y, n.x, n.y))
			            if !place_meeting(x, y + lengthdir_y(stepDis, point_direction(x, y, n.x, n.y)),Wall)
							y += lengthdir_y(stepDis, point_direction(x, y, n.x, n.y))
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
	    else if speed <= 0.5 {
		
	        if point_distance(x, y, Player.x, Player.y) < extraRange + Player.betterpluto or levelEnded {
	            if !place_meeting(x + lengthdir_x(stepDis, point_direction(x, y, Player.x, Player.y)), y,Wall)
	            x += lengthdir_x(stepDis, point_direction(x, y, Player.x, Player.y))
	            if !place_meeting(x, y + lengthdir_y(stepDis, point_direction(x, y, Player.x, Player.y)),Wall)
	            y += lengthdir_y(stepDis, point_direction(x, y, Player.x, Player.y))

	            isGettingSucked = true;
				if place_meeting(x,y,Player)
				{
					event_user(0);	
				}
	        }
	        else if instance_exists(Implosion) {
	            if point_distance(x, y, Implosion.x, Implosion.y) < 80 or instance_exists(Portal) {
	                if !place_meeting(x + lengthdir_x(stepDis, point_direction(x, y, Implosion.x, Implosion.y)), y,Wall)
	                x += lengthdir_x(stepDis, point_direction(x, y, Implosion.x, Implosion.y))
	                if !place_meeting(x, y + lengthdir_y(stepDis, point_direction(x, y, Implosion.x, Implosion.y)),Wall)
	                y += lengthdir_y(stepDis, point_direction(x, y, Implosion.x, Implosion.y))
					if place_meeting(x,y,Implosion)
					{
						event_user(0);
					}
	            }
	        }
			else if (Player.ultra_got[108] && instance_exists(Hand) && point_distance(x, y, Hand.x, Hand.y) < extraRange + Player.betterpluto)
			{
				if place_meeting(x + lengthdir_x(stepDis, point_direction(x, y, Hand.x, Hand.y)), y,Wall)
					x += lengthdir_x(stepDis, point_direction(x, y, Hand.x, Hand.y))
	            if !place_meeting(x, y + lengthdir_y(stepDis, point_direction(x, y, Hand.x, Hand.y)),Wall)
					y += lengthdir_y(stepDis, point_direction(x, y, Hand.x, Hand.y))
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
					if !place_meeting(x + lengthdir_x(stepDis, point_direction(x, y, n.x, n.y)), y,Wall)
						x += lengthdir_x(stepDis, point_direction(x, y, n.x, n.y))
			        if !place_meeting(x, y + lengthdir_y(stepDis, point_direction(x, y, n.x, n.y)),Wall)
						y += lengthdir_y(stepDis, point_direction(x, y, n.x, n.y))
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
}

if image_index < 1
image_index += random(0.04)
else
    image_index += 0.4
