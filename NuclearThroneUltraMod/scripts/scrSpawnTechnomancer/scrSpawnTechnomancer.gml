///scrSpawnTechnomancer();
// /@description
///@param
function scrSpawnTechnomancer(Whatmancer){
	var mindis = 232;
	instance_activate_object(Top);
	instance_activate_object(TopSmall);
	var thisMany = 3;
	if instance_exists(Player)
	{
		if GetPlayerLoops() > 3
			thisMany += 1;
		if GetPlayerLoops() > 5
			thisMany += 1;
		do {
			with Floor
			{
				var xx = x + 16;
				var yy = y + 16;
				if !instance_exists(Whatmancer) && point_distance(xx,yy,Player.x,Player.y > mindis)
				{
					instance_create(xx,yy,Whatmancer);
				}
				else
				{
					if instance_number(Whatmancer) == thisMany
						continue;
					var n = instance_nearest(xx,yy,Whatmancer);
					if point_distance(xx,yy,n.x,n.y) > mindis && point_distance(xx,yy,Player.x,Player.y > mindis)
					{
						instance_create(xx,yy,Whatmancer);
					}
				}
			}
			mindis -= 32;
		} until (instance_number(Whatmancer) == thisMany || mindis < 64)
	
		if instance_number(Whatmancer) < thisMany
		{
			var d = 0;
			do 
			{
				var far = instance_furthest(Player.x,Player.y,Floor);
				var dir = point_direction(Player.x,Player.y,far.x,far.y);
				var dis = point_distance(Player.x,Player.y,far.x,far.y)*d;
				var xx = Player.x + lengthdir_x(dis,dir);
				var yy = Player.y + lengthdir_y(dis,dir);
				instance_create(instance_nearest(xx,yy,Floor).x+16, instance_nearest(xx,yy,Floor).y+16,Whatmancer);
				d += 0.27;
			} until (instance_number(Whatmancer) == thisMany)
		}
	}
}