///scrCrownOfFright();
// /@description
///@param
function scrCrownOfFright(){
	//Ghost it up crown
	if scrIsCrown(37) && canGhost
	{
		var ghostDamage = my_health
		//ghostDamage += 1;
		if ghostDamage < 0
		{
			ghostDamage *= -0.5;
			if ghostDamage >= 1
			{
				BackCont.shake += min(ghostDamage * 0.5,10);
				if ghostDamage < 10
				{
					with instance_create(x,y,FrightningCrownGhost)
					{
						ghostType = 0;
						dmg = floor(max(1,ghostDamage * 0.5));
					}
				}
				else if ghostDamage < 25
				{
					with instance_create(x,y,FrightningCrownGhost)
					{
						maxSpeed -= 0.15;
						ghostType = 1;
						dmg = floor(max(1,ghostDamage * 0.5));
						spr_walk = sprCrownGhostMedium;
						spr_idle = sprCrownGhostMedium;
						spr_hurt = sprCrownGhostMediumHurt;
						sprite_index = spr_idle;
						myShadow = shd16;
						myShadowOffset = 2;
						maxhealth = 20;
						my_health = maxhealth;
					}
				}
				else
				{
					with instance_create(x,y,FrightningCrownGhost)
					{
						maxSpeed -= 0.3;
						ghostType = 2;
						dmg = floor(max(1,ghostDamage * 0.5));
						spr_walk = sprCrownGhostBig;
						spr_idle = sprCrownGhostBig;
						spr_hurt = sprCrownGhostBigHurt;
						sprite_index = spr_idle;
						myShadow = shd24;
						myShadowOffset = 8;
						maxhealth = 35;
						my_health = maxhealth;
					}
				}
			}
		}
	}
}