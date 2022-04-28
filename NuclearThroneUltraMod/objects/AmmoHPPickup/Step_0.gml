if image_index < 1
image_index += random(0.04)
else
    image_index += 0.4
	
if !cursed {
	var levelEnded = false;
	with Portal
	{
		if !inverted
			levelEnded = true;
	}
	if instance_exists(Player) {
	    if point_distance(x, y, Player.x, Player.y) < 36 + (Player.skill_got[3] * 55) + Player.betterpluto or levelEnded {
	        if !place_meeting(x + lengthdir_x(6, point_direction(x, y, Player.x, Player.y)), y, Wall)
	        x += lengthdir_x(6, point_direction(x, y, Player.x, Player.y))
	        if !place_meeting(x, y + lengthdir_y(6, point_direction(x, y, Player.x, Player.y)), Wall)
	        y += lengthdir_y(6, point_direction(x, y, Player.x, Player.y))

	        isGettingSucked = true;
			if place_meeting(x,y,Player)
			{
				event_user(0);	
			}
	    }
	    else
	        isGettingSucked = false;

	    if instance_exists(Implosion) {
	        if point_distance(x, y, Implosion.x, Implosion.y) < 36 + (Player.skill_got[3] * 55) + Player.betterpluto or instance_exists(Implosion) {
	            if Player.ultra_got[12] == 1 || place_free(x + lengthdir_x(6, point_direction(x, y, Implosion.x, Implosion.y)), y) || ((Player.ultra_got[12] == 1) && (KeyCont.key_spec[Player.p] = 1 or KeyCont.key_spec[Player.p] = 2))
	            x += lengthdir_x(6, point_direction(x, y, Implosion.x, Implosion.y))
	            if Player.ultra_got[12] == 1 || place_free(x, y + lengthdir_y(6, point_direction(x, y, Implosion.x, Implosion.y))) || ((Player.ultra_got[12] == 1) && (KeyCont.key_spec[Player.p] = 1 or KeyCont.key_spec[Player.p] = 2))
	            y += lengthdir_y(6, point_direction(x, y, Implosion.x, Implosion.y))
				
				if place_meeting(x,y,Implosion)
				{
					event_user(0);	
				}
	        }
	    }
		else if (Player.ultra_got[108] && instance_exists(Hand) && point_distance(x, y, Hand.x, Hand.y) < 36 + (Player.skill_got[3] * 55) + Player.betterpluto)
		{
			if place_free(x + lengthdir_x(6, point_direction(x, y, Hand.x, Hand.y)), y)
				x += lengthdir_x(6, point_direction(x, y, Hand.x, Hand.y))
            if place_free(x, y + lengthdir_y(6, point_direction(x, y, Hand.x, Hand.y)))
				y += lengthdir_y(6, point_direction(x, y, Hand.x, Hand.y))
			if place_meeting(x,y,Hand)
			{
				event_user(0);
			}
		}
		else if instance_exists(YungCuzDupe)
		{
			var n = instance_nearest(x,y,YungCuzDupe);
			if point_distance(x, y, n.x, n.y) < 36 + (Player.skill_got[3] * 55) + Player.betterpluto
			{
				if place_free(x + lengthdir_x(6, point_direction(x, y, n.x, n.y)), y)
					x += lengthdir_x(6, point_direction(x, y, n.x, n.y))
		        if place_free(x, y + lengthdir_y(6, point_direction(x, y, n.x, n.y)))
					y += lengthdir_y(6, point_direction(x, y, n.x, n.y))
				if place_meeting(x,y,YungCuzDupe)
				{
					event_user(0);
				}
			}
		}
	}
} else if supercursed {
	if instance_exists(Player) {
	    if point_distance(x, y, Player.x, Player.y) < 36 {
	        if !place_meeting(x + lengthdir_x(2, point_direction(x, y, Player.x, Player.y)), y, Wall)
	        x -= lengthdir_x(1, point_direction(x, y, Player.x, Player.y))
	        if !place_meeting(x, y + lengthdir_y(2, point_direction(x, y, Player.x, Player.y)), Wall)
	        y -= lengthdir_y(1, point_direction(x, y, Player.x, Player.y))
			
			if place_meeting(x,y,Player)
			{
				event_user(0);	
			}
		}
	}
}
else//Cursed
{
	if place_meeting(x,y,Player)
	{
		event_user(0);	
	} else if (Player.ultra_got[108] && instance_exists(Hand))
	{
		if place_meeting(x,y,Hand)
		{
			event_user(0);
		}
	}
	else if instance_exists(YungCuzDupe)
	{
		if place_meeting(x,y,YungCuzDupe)
		{
			event_user(0);
		}
	}
}
