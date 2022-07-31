///scrSpawnMoreBosses();
// /@description
///@param
function scrSpawnMoreBosses(theBoss,thisMany, mindis = 232){
	//more dogs
	do {
		with Floor
		{
			var xx = x + 16;
			var yy = y + 16;
			if instance_exists(theBoss) && instance_number(theBoss) == thisMany
				continue;
			var n = instance_nearest(xx,yy,theBoss);
			if point_distance(xx,yy,n.x,n.y) > mindis && point_distance(xx,yy,Player.x,Player.y > mindis)
			{
				instance_create(xx,yy,theBoss)
			}
		}
		mindis -= 32;
	} until (instance_number(theBoss) == thisMany || mindis < 64)
		
	if !instance_exists(theBoss) || instance_number(theBoss) < thisMany
	{
		var d = 0.3;
		do 
		{
			var far = instance_furthest(Player.x,Player.y,Floor);
			var dir = point_direction(Player.x,Player.y,far.x,far.y);
			var dis = point_distance(Player.x,Player.y,far.x,far.y)*d;
			var xx = Player.x + lengthdir_x(dis,dir);
			var yy = Player.y + lengthdir_y(dis,dir);
			instance_create(instance_nearest(xx,yy,Floor).x+16, instance_nearest(xx,yy,Floor).y+16,theBoss)
			d += 0.2;
		} until (instance_number(theBoss) == thisMany)
	}
}