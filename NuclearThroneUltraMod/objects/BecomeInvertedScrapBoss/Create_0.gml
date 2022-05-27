image_index = 0

size = 3
maxhealth = 40
target = -1
meleedamage=0;
raddrop=0;
spr_idle = sprInvertedScrapBossSleep
spr_walk = sprInvertedScrapBossSleep
spr_hurt = sprInvertedScrapBossSleepHurt
spr_dead = sprInvertedScrapBossDead

event_inherited()

image_speed = 0.4


var dix, diy, dir;
dix = 0
diy = 0
var loops = 0;
if instance_exists(WeaponChest)
{
	if instance_exists(Player)
	{
		loops = Player.loops;
	dir = instance_furthest(Player.x,Player.y,WeaponChest)
	}
	else
	dir = instance_furthest(x,y,WeaponChest)
}
else 
dir = id;
if loops < 1 && !instance_exists(InvaderBossSpawnPortal)
{
	x = round(dir.x/32)*32-16
	y = round(dir.y/32)*32-16
	repeat(7)
	{
	repeat(7)
	{
		instance_create(x-64+dix*32,y-64+diy*32,Floor)
			dix += 1
	}
	dix = 0
	diy += 1
	}
}

scrBossFloor();

instance_create(x,y,BigWallBreak);
instance_create(x-48,y-48,BigWallBreak);
instance_create(x+48,y+48,BigWallBreak);
instance_create(x-48,y+48,BigWallBreak);
instance_create(x+48,y-48,BigWallBreak);
instance_create(x+48,y,BigWallBreak);
instance_create(x-48,y,BigWallBreak);
instance_create(x,y+48,BigWallBreak);
instance_create(x,y-48,BigWallBreak);

timer = 0

friction=100;



