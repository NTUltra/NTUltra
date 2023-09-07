/// @description Go time
var goTime = false;
if type == 3 || inverted
{	
	var numEn = 0;
	var totalHp = 0;
	with enemy
	{
		if team != 2 && object_index != IDPDVan && object_index != IDPDVanVertical
		{
			numEn ++;
			totalHp += my_health;
		}
	}
	var atLeast = 30;
	if totalHp < atLeast && !instance_exists(BigDisc) && !instance_exists(GraveyardFish) && numEn < 4
	{
		goTime = true;
	}
	else
	{
		visible = true;
		image_speed = 0.4;
		if inverted
			sprite_index = sprInvertedPortalDormant;
		else
			sprite_index = sprProtoPortalDormant;
		alarm[1] = 30;
	}
}
else
{
	goTime = true;	
}
if goTime
{
	sprite_index = sprPortalSpawn;
	visible = true;
	alarm[0] = 1;
	alarm[2] = 2;
	image_index = 0;
	image_speed = 0.8;
	instance_create(x,y,WallBreak)
	instance_create(x+16,y+16,WallBreak)
	instance_create(x-16,y-16,WallBreak)

	instance_create(x-16,y+16,WallBreak)
	instance_create(x+16,y-16,WallBreak)
	if !inverted
	{
		with projectile
		{
			if team != 2
				instance_destroy(id,false);
		}
		with BackCont
		{
			alarm[1] = 0;
			alarm[2] = 0;
			alarm[8] = 0;
		}
	}
}