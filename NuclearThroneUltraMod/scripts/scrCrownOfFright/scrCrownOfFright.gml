///scrCrownOfFright();
// /@description
///@param
function scrCrownOfFright(){
	//Ghost it up crown
	if scrIsCrown(37) && canGhost
	{
		var ghostDamage = my_health
		ghostDamage += 1;
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
						sprite_index = sprCrownGhostMedium;
						myShadow = shd16;
						myShadowOffset = 2;
					}
				}
				else
				{
					with instance_create(x,y,FrightningCrownGhost)
					{
						maxSpeed -= 0.3;
						ghostType = 2;
						dmg = floor(max(1,ghostDamage * 0.5));
						sprite_index = sprCrownGhostBig;
						myShadow = shd24;
						myShadowOffset = 8;
					}
				}
			}
		}
	}
}