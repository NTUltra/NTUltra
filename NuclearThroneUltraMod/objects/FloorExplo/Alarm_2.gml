/// @description Create the walls around it
if instance_exists(ThroneIISpiral)
{
	wantWall = WallHitMe;
	sprite_index = sprFloor0Explo;
	with instance_create(x,y,BackFloorSmall)
	{
		depth = other.depth + 4;
	}
}
if !place_meeting(x-16,y,Floor)
instance_create(x-16,y,wantWall)


if !place_meeting(x+16,y,Floor)
instance_create(x+16,y,wantWall)


if !place_meeting(x,y+16,Floor)
instance_create(x,y+16,wantWall)


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

if instance_exists(Player) && Player.skill_got[26]
{
	x += 8;
	y += 8;
	if !scrDrop(1.5,0.8)
	{
		if random(100) < 8
		{
			instance_create(x,y,Rad);
		}
	}
	x -= 8;
	y -= 8;
}
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