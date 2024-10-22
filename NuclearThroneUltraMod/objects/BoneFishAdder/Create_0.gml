/// @description Fill in mask
instance_create(x,y,EnemySpawnMask);
var s = 10016;
x = -s;
y = -s;
var snoozer = 0;
if instance_exists(Player) && Player.skill_got[29]
{
	snoozer = 15;
	if Player.race = 25
		snoozer = 20;
}
while (x < s)
{
	while (y < s)
	{
		if place_meeting(x,y,EnemySpawnMask) {
			with instance_create(x+16,y+16,BoneFish)
			{
				if snoozer
				{
					alarm[1] += snoozer;
					scrGiveSnooze();
				}
				with instance_place(x,y,Wall)
				{
					instance_destroy();
					instance_create(x,y,FloorExplo);
				}
			}
		}
		y += 32;
	}
	y = -s;
	x += 32;
}
instance_destroy();