scrDrop(100,50);
scrDrop(50,10);
event_inherited();
scrBossKill();
if object_index == SandWorm
{
	repeat(2)
		instance_create(x,y,MaggotExplosion);
}

var dir = random(360);
var angStep = 360/20
repeat(20)
{
dir += angStep
	with instance_create(x,y,AcidStreak)
	{
		motion_add(dir,10)
		image_angle = direction
	}
}