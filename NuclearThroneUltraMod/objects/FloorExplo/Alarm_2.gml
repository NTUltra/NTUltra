/// @description Create the walls around it
if !place_meeting(x-16,y,Floor)
instance_create(x-16,y,Wall)


if !place_meeting(x+16,y,Floor)
instance_create(x+16,y,Wall)


if !place_meeting(x,y+16,Floor)
instance_create(x,y+16,Wall)


if !place_meeting(x,y-16,Floor)
instance_create(x,y-16,Wall)


if !place_meeting(x-16,y+16,Floor)
instance_create(x-16,y+16,Wall)


if !place_meeting(x+16,y-16,Floor)
instance_create(x+16,y-16,Wall)


if !place_meeting(x+16,y+16,Floor)
instance_create(x+16,y+16,Wall)


if !place_meeting(x-16,y-16,Floor)
instance_create(x-16,y-16,Wall)

if instance_exists(Player) && Player.skill_got[26]
{
	x += 8;
	y += 8;
	if !scrDrop(0.1,0.06)
	{
		var dropRateBuff = Player.skill_got[4]*(0.45+Player.betterrabbitpaw) 
		+ (Player.ultra_got[39]*instance_number(Ally)*0.6)
		+ (Player.skill_got[28]*(Player.rage*0.0004))
		if Player.crown == 21 //Crown of risk
		{
			if Player.my_health >= floor(Player.maxhealth*0.75)
			{
				dropRateBuff += 0.6;
			}
			else
			{
				dropRateBuff -= 0.4;
			}
		}
		if random(100) < 1 + dropRateBuff
		{
			instance_create(x,y,Rad);
		}
	}
	x -= 8;
	y -= 8;
}