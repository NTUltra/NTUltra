///scrSyncDuo();
// /@description
///@param
function scrSyncDuo(oldguy,newguy){
	with newguy {
		x = oldguy.x;
		y = oldguy.y;
		scrForcePosition60fps();
		hard = oldguy.hard;
		area = oldguy.area;
		subarea = oldguy.subarea;
		lastarea = oldguy.lastarea;
		lastsubarea = oldguy.lastsubarea;
		//Crown sync
		with Crown
		{
			instance_destroy();	
		}
		var al = array_length(crown);
		for (var i = 0; i < al; i ++)
		{
			if crown[i] != 1
				scrSpawnCrown(x,y,crown[i], false);
		}
	}
}