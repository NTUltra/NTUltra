///scrTurnIntoPortalArea();
// /@description
///@param
function scrTurnIntoPortalArea(){
	with Top
	{
		instance_destroy(id,false);	
	}
	with TopSmall
	{
		instance_destroy(id,false);	
	}
	with TopDecal
	{
		instance_destroy(id,false);	
	}
	with Bones
	{
		instance_destroy(id,false);	
	}
	var r = 0;
	if instance_exists(Player)
		r = Player.race;
	with Wall
	{
		instance_destroy(id,false);
		if !collision_point(x+8,y+8,Floor,false,false)//Angel can fly
			instance_create(x,y,WallHitMe);
	}
	alarm[4] = 60;//Projectiles out side of view destroy
	var deepestDepths = 100;
	if instance_exists(Floor)
	{
		var targetDepth = Floor.y + 1000;
		with Floor
		{
						
			var d = max(9, targetDepth -  round(y/16));
			if d > deepestDepths
				deepestDepths = d;
							
			if object_index == FloorExplo
			{
				sprite_index = sprFloor0Explo;
				with instance_create(x,y,BackFloorSmall)
				{
					depth = d + 1;
				}
			}
			else
			{
				sprite_index = sprFloor0;
				with instance_create(x,y,BackFloor)
				{
					depth = d + 1;
				}
			}
		}
	}
	with instance_create(x,y,ThroneIISpiral)
	{
		depth = deepestDepths + 2;	
	}
}