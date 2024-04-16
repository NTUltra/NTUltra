/// @description Stay with Rogue (Rogue Ultra new captain)
/// @param Rogue Ultra new captain
function scrRoguePopo() {
		if team == 2
		{

		if instance_exists(Player)
		{
		    if point_distance(Player.x,Player.y,x,y)>90
		    {
				mp_potential_step(Player.x,Player.y,1,false);
				//motion_add(point_direction(x,y,Player.x,Player.y),1);
		    }
		}
	}
}
