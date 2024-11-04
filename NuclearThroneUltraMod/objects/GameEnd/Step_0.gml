/// @description Is player close?
if instance_exists(PlayerInEnding)
{
	if point_distance(x,y,PlayerInEnding.x,PlayerInEnding.y) < 12 || alarm[0] < 1
	{
		with PlayerInEnding
		{
			
			x = other.x;
			y = other.y;
			with Player
			{
				x = other.x;
				y = other.y;
				scrForcePosition60fps();
			}
			scrForcePosition60fps();
			reachedIt = true;
			speed = 0;
			if alarm[0] < 1 && !isFading
			{
				if spr_go_sit == spr_idle
				{
					event_user(0);
				}
				if sprite_index != spr_go_sit && sprite_index != spr_sit
				{
					sprite_index = spr_go_sit;
					maxSpeed = 0;
					image_index = 0;
				}
			}
		}
		//TODO!???
		with enemy
		{
			instance_destroy(id,false);//SAFETY???	
		}
	}
}
else if instance_exists(Player) && !instance_exists(PlayerInEnding) && alarm[0] < 1
{
	if point_distance(x,y,Player.x,Player.y) < 64 || alarm[1] < 1
	{
		
		alarm[0] = 300;
		var et = endingType;
		with Player
		{
			if visible
			{
				visible = false;
				with Cursor
				{
					visible = false;
					inGameVisibleState = false;
				}
				with instance_create_depth(x,y,depth - 2,PlayerInEnding)
				{
					race = other.race;
					endingType = et;	
				}
			}
		}
	}
}	