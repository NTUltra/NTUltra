///xxx();
// /@description
///@param
function scrWasSpottedDoingCrime(isDead = false){
	if !isDead && my_health > 0
		return true;
	if instance_exists(Player)
		with enemy {
			if id != other.id && point_distance(x,y,other.x,other.y) < 300 && !collision_line(x,y,other.x,other.y,Wall,false,false) && !collision_line(x,y,Player.x,Player.y,Wall,false,false)
			{
				instance_create(x-5,y-16,Notice);
				instance_create(x+5,y-16,Notice);
				with instance_create(other.x,other.y,SpotLine)
				{
					tx = other.x;
					ty = other.y;
				}
				with instance_create(x,y,SpotLine)
				{
					tx = Player.x;
					ty = Player.y;
				}
				return true;
			}
		}
	return false;
}