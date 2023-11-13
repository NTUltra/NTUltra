/// @description Create the walls around it
var wall = Wall;
if instance_exists(ThroneIISpiral)
{
	wall = WallHitMe;
	sprite_index = sprFloor0Explo;
	with instance_create(x,y,BackFloorSmall)
	{
		depth = other.depth + 4;
	}
}
if !place_meeting(x-16,y,Floor)
instance_create(x-16,y,wall)


if !place_meeting(x+16,y,Floor)
instance_create(x+16,y,wall)


if !place_meeting(x,y+16,Floor)
instance_create(x,y+16,wall)


if !place_meeting(x,y-16,Floor)
instance_create(x,y-16,wall)


if !place_meeting(x-16,y+16,Floor)
instance_create(x-16,y+16,wall)


if !place_meeting(x+16,y-16,Floor)
instance_create(x+16,y-16,wall)


if !place_meeting(x+16,y+16,Floor)
instance_create(x+16,y+16,wall)


if !place_meeting(x-16,y-16,Floor)
instance_create(x-16,y-16,wall)

if instance_exists(Player) && Player.skill_got[26]
{
	x += 8;
	y += 8;
	if !scrDrop(1.27,0.75)
	{
		var rebelBuff = 0;
		if Player.ultra_got[39] && !Player.altUltra
			rebelBuff = instance_number(Ally)*0.1;
		var dropRateBuff = Player.skill_got[4]*(0.45+Player.betterrabbitpaw) 
		+ rebelBuff
		+ (Player.skill_got[28]*(Player.rage*0.0011))
		if scrIsCrown(21) //Crown of risk
		{
			var mh = Player.maxhealth;
			var h = Player.my_health;
			if Player.ultra_got[62] && Player.altUltra//Living armour
			{
				mh = Player.maxarmour
				h = Player.armour;
			}
			if h >= floor(mh*0.75)
			{
				dropRateBuff += 0.6;
			}
			else
			{
				dropRateBuff -= 0.4;
			}
		}
		if random(100) < 7 + dropRateBuff
		{
			instance_create(x,y,Rad);
		}
	}
	x -= 8;
	y -= 8;
}
if wall != WallHitMe
{
	if !place_meeting(x-32,y,Floor) && !place_meeting(x-32,y,wall)
		instance_create(x-32,y,Top)
	if !place_meeting(x,y-32,Floor) && !place_meeting(x,y-32,wall)
		instance_create(x,y-32,Top)
	if !place_meeting(x,y+32,Floor) && !place_meeting(x,y+32,wall)
		instance_create(x,y+32,Top)
	if !place_meeting(x+32,y,Floor) && !place_meeting(x+32,y,wall)
		instance_create(x+32,y,Top)
	
	if !place_meeting(x-32,y-32,Floor) && !place_meeting(x-32,y-32,wall)
		instance_create(x-32,y-32,Top)
	if !place_meeting(x+32,y-32,Floor) && !place_meeting(x+32,y-32,wall)
		instance_create(x+32,y-32,Top)
	if !place_meeting(x-32,y+32,Floor) && !place_meeting(x-32,y+32,wall)
		instance_create(x-32,y+32,Top)
	if !place_meeting(x+32,y+32,Floor) && !place_meeting(x+32,y+32,wall)
		instance_create(x+32,y+32,Top)
}