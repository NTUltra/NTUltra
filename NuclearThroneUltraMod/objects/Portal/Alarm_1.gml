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
	if totalHp < atLeast && !instance_exists(BigDisc) && !instance_exists(GraveyardFish) && numEn < 4 && !instance_exists(WantBoss)
	&& !instance_exists(SandWorm) && !instance_exists(WallCrawler) && !instance_exists(becomenemy)
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
	with Trap
	{
		alarm[0] = 0;
		alarm[1] = 0;
	}
	with ToxicTrap
	{
		alarm[0] = 0;
		alarm[1] = 0;
	}
	with FrostTrap
	{
		alarm[0] = 0;
		alarm[1] = 0;
	}
	with VulcanoTrap
	{
		alarm[0] = 0;
		alarm[1] = 0;
	}
	sprite_index = sprPortalSpawn;
	if isPink
		sprite_index = sprPinkPortalSpawn;
	else if isHQ
		sprite_index = sprPopoPortalStart;
	
	visible = true;
	alarm[0] = 1;
	alarm[2] = 2;
	image_index = 0;
	image_speed = 0.8;
	if pullstrength > 2.5
	{
		image_index = image_number - 1;	
	}
	instance_create(x,y,PortalOpenWallBreak)
	if !inverted
	{
		with projectile
		{
			if team != 2
				instance_destroy(id,false);
		}
		with EnemyVenom
		{
			instance_destroy();	
		}
		with BackCont
		{
			alarm[1] = 0;
			alarm[2] = 0;
			alarm[8] = 0;
		}
	}
}