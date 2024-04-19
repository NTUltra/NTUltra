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
			sprite_index = spr_sit;
			image_index = 0;
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
				instance_create(x,y,PlayerInEnding);
			}
		}
	}
}	