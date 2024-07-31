/// @description Create the walls around it
if instance_exists(ThroneIISpiral)/* || scrIsCrown(25)*/ || instance_exists(WallRemover)
{
	wantWall = WallHitMe;
	if (instance_exists(ThroneIISpiral))
	{
		sprite_index = sprFloor0Explo;
		var spr = sprBackFloorSmall;
		if instance_exists(Player)
		{
			if Player.area == 120
			{
				sprite_index = sprFloor120Explo;
				spr = sprInvertedBackFloorSmall;
			}
			else if Player.area == 138
			{
				sprite_index = sprFloor138Explo;
				spr = sprBackFloorSmallCloud;
			}
		}
		with instance_create(x,y,BackFloorSmall)
		{
			sprite_index = spr;
			depth = other.depth + 4;
		}
	}
	alarm[3] = 0;
}

if !place_meeting(x-16,y,Floor)
	instance_create(x-16,y,wantWall)
if !place_meeting(x+16,y,Floor)
	instance_create(x+16,y,wantWall)

if !place_meeting(x,y-16,Floor)
	instance_create(x,y-16,wantWall)
if !place_meeting(x-16,y+16,Floor)
	instance_create(x-16,y+16,wantWall)
if !place_meeting(x+16,y-16,Floor)
	instance_create(x+16,y-16,wantWall)
if !place_meeting(x+16,y+16,Floor)
	instance_create(x+16,y+16,wantWall)
if !place_meeting(x-16,y-16,Floor)
	instance_create(x-16,y-16,wantWall)

//if mask_index != mskFloorExploCloud
//{
	if !place_meeting(x,y+16,Floor)
		instance_create(x,y+16,wantWall)
/*}
else
{
	if !place_meeting(x,y+32,Floor)
		instance_create(x,y+32,wantWall)
	if !place_meeting(x+16,y+32,Floor)
		instance_create(x,y+32,wantWall)
	if !place_meeting(x-16,y+32,Floor)
		instance_create(x,y+32,wantWall)
}*/
if wantWall != WallHitMe
{
	if !place_meeting(x-32,y,Floor) && !place_meeting(x-32,y,wantWall)
		instance_create(x-32,y,Top)
	if !place_meeting(x,y-32,Floor) && !place_meeting(x,y-32,wantWall)
		instance_create(x,y-32,Top)
	if !place_meeting(x,y+32,Floor) && !place_meeting(x,y+32,wantWall)
		instance_create(x,y+32,Top)
	if !place_meeting(x+32,y,Floor) && !place_meeting(x+32,y,wantWall)
		instance_create(x+32,y,Top)
	
	if !place_meeting(x-32,y-32,Floor) && !place_meeting(x-32,y-32,wantWall)
		instance_create(x-32,y-32,Top)
	if !place_meeting(x+32,y-32,Floor) && !place_meeting(x+32,y-32,wantWall)
		instance_create(x+32,y-32,Top)
	if !place_meeting(x-32,y+32,Floor) && !place_meeting(x-32,y+32,wantWall)
		instance_create(x-32,y+32,Top)
	if !place_meeting(x+32,y+32,Floor) && !place_meeting(x+32,y+32,wantWall)
		instance_create(x+32,y+32,Top)
}