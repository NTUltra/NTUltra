///scrCreateCloudArea();
// /@description
///@param
function scrCreateCloudArea(){
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
	var targetDepth = Floor.y + 1000;
	var deepestDepths = 100;
	var sprExplo = sprFloor138Explo;
	var spr = sprFloor138;
	var sprb = sprBackFloorCloud;
	var sprb2 = sprBackFloorCloud2;
	var sprs = sprBackFloorSmallCloud;
	if Player.area == 140
	{
		sprExplo = sprFloor140Explo;
		spr = sprFloor140;
		sprb = sprInvertedBackFloorCloud;
		sprb2 = sprInvertedBackFloorCloud2;
		sprs = sprInvertedBackFloorSmallCloud;
	}
	with Floor
	{
		var d = max(9, targetDepth -  round(y/16));
		if d > deepestDepths
			deepestDepths = d;
							
		if object_index == FloorExplo
		{
			sprite_index = sprExplo;
			with instance_create(x,y,BackFloorSmall)
			{
				depth = d + 1;
				sprite_index = sprs;
				image_index = irandom(image_number);
			}
		}
		else
		{
			sprite_index = spr;
			with instance_create(x,y,BackFloor)
			{
				sprite_index = sprb;
				sprBack2 = sprb2;
				depth = d + 1;
				image_index = irandom(image_number);
			}
		}
	}
	with instance_create(x,y,CloudArea)
	{
		depth = deepestDepths + 2;
		if Player.area == 140
			fogCloud = sprInvertedCloudsFog;
	}
}