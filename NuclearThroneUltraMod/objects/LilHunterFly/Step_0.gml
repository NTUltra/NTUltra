if sprite_index = sprLilHunterLift
{
	if UberCont.normalGameSpeed == 60
		z -= 4;
	else
		z -= 8;
if y+z < __view_get( e__VW.YView, 0 )-64 and -z > 160
{
if instance_exists(Player)
{
	var range = 96;
	do {
		var ground = instance_nearest(Player.xprevious+16+(random(range)-range*0.5),Player.yprevious+16+(random(range)-range*0.5),Floor);
		range += 32;
	}	until (ground.object_index != FloorExplo)
	var o = 16;
	x = ground.x + o;
	y = ground.y + o;
	scrForcePosition60fps();
//x = Player.x
//y = Player.y
shadowdraw=true;

}
sprite_index = sprLilHunterLand
}
}
else if sprite_index = sprLilHunterLand
{
	if UberCont.normalGameSpeed == 60
		z += 5;
	else
		z += 10;
if z >= 0
{


BackCont.shake += 5
snd_play(sndLilHunterLand)
alarm[5]=10;
instance_create(x,y,WallBreak);
shadowdraw=false;
repeat(4)
{
with instance_create(x+random(16)-8,y+random(16),Dust)
motion_add(random(360),3+random(1))
}

z = 0
alarm[1] = 20+random(10);
var bonk = true;
if intro = 0
{
	snd_play_2d(sndLilHunterAppear)
	instance_create(x,y,DramaCamera)
	intro = 1
	if instance_exists(Player) && Player.skill_got[29] {
		alarm[1] += 60;
		alarm[5] = 0;
		scrGiveSnooze();
		bonk = false;
	}
}
if bonk
{
	var ang = random(360);
	var am = 18;
	var angstep = 360/am;
	repeat(am)
	{
		with instance_create(x,y,TrapFire)//Trapfire
		{
			sprite_index = sprFireLilHunter
			dmg += 1;
			motion_add(ang,3)
			image_angle = direction
			team = other.team
		}
	
	ang += angstep;
	}
	var ang = random(360);
	repeat(5)
	{
		with instance_create(x,y,EnemyBouncerBullet)
		{
		motion_add(ang,2)
		image_angle = direction;
		team = other.team
		}
		ang += 72;
	}
	var lps = GetPlayerLoops()
	if lps > 3
	{
		var am = 4;
		ang = 0;
		if lps > 4
			am = 8;
		var angStep = 360/am;
		var ps = 3;
		if lps > 7
			ps = 3.5;
		if lps > 8
			ps = 4;
		if lps > 9
			ps = 4.5;
		repeat(am)
		{
			with instance_create(x,y,EnemyBullet1Square)
			{
				sprite_index = sprIDPDSquareBullet;
				motion_add(ang,ps);
				image_angle = direction
				team = other.team
			}
			ang += angStep;
		}	
	}
}
spr_idle = sprLilHunterLandEnd
sprite_index = spr_idle
image_index = 0
alarm[3] = 5/0.4
instance_change(LilHunter,false)


}
}
else
{
	sprite_index = sprLilHunterLift
}
image_xscale = right;