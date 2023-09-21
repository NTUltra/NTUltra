///scrSpawnBoss();
// /@description
///@param boss to spawn
function scrSpawnBoss(whatBoss){
	var far = instance_furthest(Player.x,Player.y,Floor);
	var dir = point_direction(Player.x,Player.y,far.x,far.y);
	var am = 0.8;
	var dis = point_distance(Player.x,Player.y,far.x,far.y)*am;
	var xx = Player.x + lengthdir_x(dis,dir);
	var yy = Player.y + lengthdir_y(dis,dir);
	var n = instance_nearest(xx,yy,Floor);
	while (point_distance(Player.x,Player.y,n.x,n.y) < 160 && am < 2) {
		am += 0.1
		var dis = point_distance(Player.x,Player.y,far.x,far.y)*am;
		var xx = Player.x + lengthdir_x(dis,dir);
		var yy = Player.y + lengthdir_y(dis,dir);
		var n = instance_nearest(xx,yy,Floor);
	}
	instance_create(n.x+16, n.y+16,whatBoss)
}