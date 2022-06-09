if alarm[4]>0//boiling veins
{
instance_create(x+random(12)-6,y+random(12)-6,Smoke);
}

///extra feet dodging bonus
if skill_got[2]
{
	if extrafeetalarm>0
		extrafeetalarm--;

	if extrafeetalarm == 1 && extrafeetdodged
	{
		with instance_create(x+10,y+5,RedirectFX)
		{
			sprite_index = sprExtraFeetCloseDodge;	
		}
		if scrDrop(75,0)
			snd_play(sndExtraFeetDodge);
		else
			snd_play(sndExtraFeetDodgeFail);
	}
	if instance_exists(projectile) && alarm[3] < 1
	{
		if extrafeetalarm < 1 
		{
		    if point_distance(x,y,projectile.x,projectile.y)<32//a close projectile is spotted
		    {
		        with projectile
		        {
			        if point_distance(x,y,other.x,other.y)<31 //&& !place_meeting(x,y,other) && !place_meeting(x+hspeed,y+vspeed,other)
					{//use close projectile
			            if team!=other.team//NOT FROM PLAYA!? O_O
			            {                     
							other.extrafeetalarm=13;//after this time we check if you've dodged this
							other.extrafeetdodged=true;
			            // change a variable here so that you cannot spawn even more items yo?
			            }
			        }
				}
		    }
		}
	}
}

//Hammer head
if hammerheadcounter > 0
{
	var msk = mask_index;
	mask_index = mskWallBreak;
	if place_meeting(x,y,Wall)
	{
		nearWall = true;
		mask_index = msk;
		if place_meeting(x+hspeed,y+vspeed,Wall)
		{
			
			hammerheadtimer += 1;

			alarm[5]=12;//timer before hammerhead continuation stops
			
			if hammerheadtimer > 8
			{
				hammerheadcounter --;
				var debrisAmount = 4;
				var debrisMultiply = 2;
				if (hammerheadcounter > 0)
				{
					snd_play(sndHammerHeadProc);
					scrDrop(1,0.5);
				}
				else
				{
					snd_play(sndHammerHeadEnd);
					scrDrop(10,5);
					nearWall = false;
					debrisAmount += 2;
					debrisMultiply += 2;
				}
				instance_create(x,y,WallBreak);
				//More debris
				repeat(debrisAmount)
				with instance_create(x+8+random(8)-4,y+8+random(8)-4,Debris)
					speed *= debrisMultiply;
				
				scrRaddrop(1);
			}
		}
	}
	else
		nearWall = false;
	
	mask_index = msk;
}