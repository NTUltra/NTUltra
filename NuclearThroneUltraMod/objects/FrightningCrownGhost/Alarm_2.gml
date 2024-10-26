/// @description Retarget
alarm[2] = 10;
target = instance_nearest_not_object(x,y,hitme,FrightningCrownGhost);
if instance_exists(enemy) && instance_exists(target) && target != noone
{
	var en = instance_nearest(x,y,enemy);
	if target.id != en.id && point_distance(x,y,en.x,en.y) - point_distance(x,y,target.x,target.y) < 32
	{
		target = en.id;	
	}
}