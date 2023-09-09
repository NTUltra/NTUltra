///scrFindCorpse();
// /@description
///@param
function scrFindCorpse(){
	var mx = x;
	var my = y;
	var tx = x;
	var ty = y;
	var foundOne = false;
	var corpseIndex = 0;
	with CorpseCollector
	{
		var al = ds_list_size(corpses)
		var closest = 9999;
		for (var i = 0; i < al; i++)
		{
			var xx = corpses[| i].xx;
			var yy = corpses[| i].yy;
			var dis = point_distance(mx,my,xx,yy)
			if dis < closest
			{
				foundOne = true;
				closest = dis;
				tx = xx;
				ty = yy;
				corpseIndex = i;
			}
		}
	}
	if foundOne
	{
		if !collision_line(x,y,tx,ty,Wall,false,false)
		{
			var corpse = CorpseCollector.corpses[| corpseIndex];
			corpseTarget = instance_create(tx,ty,Corpse);
			with corpseTarget {
				image_speed = 0;
				sprite_index = corpse.spr;
				image_xscale = corpse.xscale;
				image_index = corpse.ii;
			}
			ds_list_delete(CorpseCollector.corpses, corpseIndex);
			return corpseTarget;
		}
	}
	return noone;
}