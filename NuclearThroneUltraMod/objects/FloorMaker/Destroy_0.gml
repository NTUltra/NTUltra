/// @description End piece guaranteed
//End piece
if instance_exists(Player) && !endPieceSpawned
{
		var area = Player.area;
		var subarea = Player.subarea;
	if area = 7||area=104||area == 108
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
		if (area==7||area=108)
		{
			if xx == 9
			{
				for(yy=0;yy<10;yy+=1){
					instance_create(x+32*-xx,y+32*yy,Floor);
				}
			}
			instance_create(x+32*-xx,y+320,Floor);
		}
			if !instance_exists(HotDrake) && !instance_exists(InvertedHotDrake)
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