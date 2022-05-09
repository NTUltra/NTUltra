if RogueIDPD=true
{

with instance_create(x,y,IDPDVan)
{
	RogueIDPD=other.RogueIDPD;
	spr_idle = sprRogueVanOpen
	spr_walk = sprRogueVanDrive
	spr_hurt = sprRogueVanHurt
	spr_dead = sprRogueVanDead
	team = 2;
	if instance_exists(Player)
	{
		if Player.x>x//right
		{right=1
		motion_add(0,8);
		}
		else//left
		{right=-1;
		motion_add(180,8);}
	}
}

}
else
{
	if vertical
	{
		with instance_create(x,y,IDPDVanVertical)
		{
			if (other.dropFreaks)
			{
				dropFreaks = true;
				spr_idle = sprFreakVanOpen;
				spr_walk = sprFreakVanDrive;
				spr_hurt = sprFreakVanHurt;
				spr_dead = sprFreakVanDead;
			}
			
			right = other.right;
			if right == 1
			{
				motion_add(90,8);
				image_angle = 90;
			}
			else
			{
				motion_add(270,8);
				image_angle = 270;
			}
		}
	}
	else
	{
		with instance_create(x,y,IDPDVan)
		{
			if (other.dropFreaks)
			{
				dropFreaks = true;
				spr_idle = sprFreakVanOpen;
				spr_walk = sprFreakVanDrive;
				spr_hurt = sprFreakVanHurt;
				spr_dead = sprFreakVanDead;
			}
			
			right = other.right;
			if right == 1
			{
				motion_add(0,8);
			}
			else//left
			{
				motion_add(180,8);
			}
		}
	}
}