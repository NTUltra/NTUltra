///scrSpawnBoss();
// /@description
///@param boss to spawn
function scrSpawnBoss(whatBoss){
	var far = instance_furthest(Player.x,Player.y,Floor);
	var dir = point_direction(Player.x,Player.y,far.x,far.y);
	var dis = point_distance(Player.x,Player.y,far.x,far.y)*0.8;
	var xx = Player.x + lengthdir_x(dis,dir);
	var yy = Player.y + lengthdir_y(dis,dir);
	instance_create(instance_nearest(xx,yy,Floor).x+16, instance_nearest(xx,yy,Floor).y+16,whatBoss)
}