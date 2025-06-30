/// @description End piece guaranteed
if instance_exists(Player) && !endPieceSpawned
{
	var area = Player.area;
	var subarea = Player.subarea;
	//End piece
	if area == 139 && !instance_exists(ThePit)
	{
		scrCreateThePit();
		instance_create(x,y,ThePit);
	}
	else if area == 138 && myFloors > 6
	{
		instance_create(x+32,y,Floor)
		instance_create(x+32,y+32,Floor)
		instance_create(x,y+32,Floor)
		instance_create(x,y-32,Floor)
		instance_create(x-32,y,Floor)
		instance_create(x+32,y-32,Floor)
		instance_create(x-32,y-32,Floor)
		instance_create(x-32,y+32,Floor)	
	}
	else if area = 7||area=104||area == 108
	if subarea=3||area=104 {//Volcanic boss battleground
		
		with FloorMaker
		{
			endPieceSpawned = true;	
		}
		x += lengthdir_x(32,direction)
		y += lengthdir_y(32,direction)
		var xx;
		var yy;
		for(xx=0;xx<10;xx+=1){
			instance_create(x+32*xx,y,Floor);//BOSS VULCANO/////////////////////////////<------------
		/*
		if (area==7||area=108)
		{
			//Second entrance to the dragon fight
			if xx == 9
			{
				for(yy=0;yy<10;yy+=1){
					instance_create(x+32*-xx,y+32*yy,Floor);
				}
				//Make sure it is connected
				var cx = 0;
				var msk = mask_index;
				mask_index = mskFloor;
				repeat(9)
				{
					if !place_meeting(x+32*-cx,y+32,Floor)
						instance_create(x+32*-cx,y+32,Floor);
					cx++;
				}
				mask_index = msk;
			}
			instance_create(x+32*-xx,y+320,Floor);
		}*/
			if !instance_exists(HotDrake) && !instance_exists(InvertedHotDrake)
			{
				for(yy=0;yy<10;yy+=1)
				{
					if (area==7||area=108) && xx>4
					{
						instance_create(x+32*xx,y+32*yy,FloorLava)//This is the bos's area
        
						if xx==8 && yy==5
						{
							if area = 7
								instance_create(x+32*xx,y+32*yy,HotDrake);//the boss
							else if area = 108
								instance_create(x+32*xx,y+32*yy,InvertedHotDrake);//the INVERTED boss
						}
        
        
					}else
					{
						instance_create(x+32*xx,y+32*yy,Floor)
					}
        
					if area==104 && xx==2 && yy==2
					{
						instance_create(x+32*xx,y+32*yy,GiantGoldenWeaponChest)//crown of love?
					}
					if area==104 && xx==4 && yy==2 &&instance_exists(Player) && Player.skill_got[23]
					{
						instance_create(x+32*xx,y+32*yy,GiantGoldenWeaponChest)
					}
					if area==104 && xx==6 && yy==2
					{
						instance_create(x+32*xx,y+32*yy,GiantGoldenWeaponChest)
					}
					if area==104 && xx==4 && yy==9
					{
						instance_create(x+32*xx,y+32*yy,CarVenusFixed)
					}
				}
			}
		}
	}
}