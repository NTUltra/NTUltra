/// @description Is player close?

if instance_exists(PlayerInEnding)
{
	if point_distance(x,y,PlayerInEnding.x,PlayerInEnding.y) < 12
	{
		with PlayerInEnding
		{
			x = other.x;
			y = other.y;
			speed = 0;
			if alarm[0] < 1
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
	}
}
else if instance_exists(Player)
{
	if point_distance(x,y,Player.x,Player.y) < 64
	{
		with Player
		{
			if visible
			{
				visible = false;
				with Cursor
				{
					visible = false;	
				}
				instance_create_depth(x,y,depth - 1,PlayerInEnding);
			}
		}
	}
}	