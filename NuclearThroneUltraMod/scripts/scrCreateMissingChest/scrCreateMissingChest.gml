///scrCreateMissingChest();
// /@description
///@param
function scrCreateMissingChest(typeOfChest, chestGoal){
	if scrIsGamemode(48)
		return;
	if !instance_exists(Player) || !instance_exists(Floor)
		return;
	if isOneWeaponOnlyModes() && (typeOfChest == WeaponChest || typeOfChest == UltraChest)
		return;
	
	var px = Player.x;
	var py = Player.y;
	var furthest = instance_furthest(px,py,Floor);
	var dis = point_distance(px,py,furthest.x,furthest.y);
	var dir = point_direction(px,py,furthest.x,furthest.y);
		while instance_number(typeOfChest) < chestGoal
		{
			var ran = choose(0.8,1)
			var useDis = dis * ran;
			var tx = px+lengthdir_x(useDis,dir);
			var ty = py+lengthdir_y(useDis,dir);
			if instance_exists(chestprop)
			{
				var tries = 20;
				while tries > 0 && distance_to_object(instance_nearest(tx,ty,chestprop)) < 48
				{
					useDis -= 0.05;
					if useDis < 0.4
						useDis = 1;
					tries-= 1;
				}
			}
			else if instance_exists(BecomeScrapBoss) && typeOfChest == WeaponChest && !instance_exists(WeaponChest)
			{
				tx = BecomeScrapBoss.x;
				ty = BecomeScrapBoss.y;
			}
			else if instance_exists(BecomeInvertedScrapBoss) && typeOfChest == WeaponChest && !instance_exists(WeaponChest)
			{
				tx = BecomeInvertedScrapBoss.x;
				ty = BecomeInvertedScrapBoss.y;
			}
			var n = instance_nearest(tx,ty,Floor);
			with n
			{
				var o = 16;
				if object_index == FloorExplo
					 o = 8;
				instance_create(x+o,y+o,typeOfChest);
			}
		}
}