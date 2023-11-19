/// @description Fill in mask
instance_create(x,y,EnemySpawnMask);
var s = 10016;
x = -s;
y = -s;
while (x < s)
{
	while (y < s)
	{
		if place_meeting(x,y,EnemySpawnMask) {
			instance_create(x,y,BoneFish);
		}
		y += 32;
	}
	y = -s;
	x += 32;
}
instance_destroy();