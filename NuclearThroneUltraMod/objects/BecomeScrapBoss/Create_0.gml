image_index = 0

size = 3
raddrop = 0;
maxhealth = 40
meleedamage = 0;
target = -1
spr_idle = sprScrapBossSleep
spr_walk = sprScrapBossSleep
spr_hurt = sprScrapBossSleepHurt
spr_dead = sprScrapBossDead

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

if !instance_exists(InvaderBossSpawnPortal) && instance_number(object_index) == 1
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
friction = 100;
with Wall
{
if place_meeting(x,y,other)
{
instance_destroy()
instance_create(x,y,FloorExplo)
}
}

scrBossFloor();
instance_create(x,y,BigWallBreak);
timer = 0


instance_create(x,y,BigWallBreak);
instance_create(x-48,y-48,BigWallBreak);
instance_create(x+48,y+48,BigWallBreak);
instance_create(x-48,y+48,BigWallBreak);
instance_create(x+48,y-48,BigWallBreak);
instance_create(x+48,y,BigWallBreak);
instance_create(x-48,y,BigWallBreak);
instance_create(x,y+48,BigWallBreak);
instance_create(x,y-48,BigWallBreak);
