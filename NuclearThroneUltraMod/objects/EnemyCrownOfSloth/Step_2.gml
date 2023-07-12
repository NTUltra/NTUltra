/// @description Slow the player

// Inherit the parent event
event_inherited();
if instance_exists(Player)
{
	if !collision_line(x,y,Player.x,Player.y,Wall,false,false)
	{
		var t = Player.team;
		with projectile
		{
			if team == t
			{
				if speed > 2
					speed -= 0.1;
			}
		}
		with Player
		{
			x -= hspeed*0.2;
			y -= vspeed*0.2;
		}
	}
}