if sprite_index = sprInvertedLilHunterLift
{
z -= 8//8
if y+z < __view_get( e__VW.YView, 0 )-64 and -z > 160
{
if instance_exists(Player)
{

x=instance_nearest(Player.xprevious+16+random(64-32),Player.yprevious+16+random(64-32),Floor).x;
y=instance_nearest(Player.xprevious+16+random(64-32),Player.yprevious+16+random(64-32),Floor).y;//+16+random(64)-32;
//x = Player.x
//y = Player.y
shadowdraw=true;

}
sprite_index = sprInvertedLilHunterLand
}
}
else if sprite_index = sprInvertedLilHunterLand
{
z += 10

if z >= 0
{


BackCont.shake += 5
snd_play(sndLilHunterLand)
alarm[5]=10;
instance_create(x,y,WallBreak);
var ang = random(360);
var am = 12;
var angstep = 360/12;
repeat(am)
{
	with instance_create(x,y,TrapFire)//Trapfire
	{
		sprite_index = sprFireLilHunter
		motion_add(ang,2.5+random(0.6))
		image_angle = direction
		team = other.team
	}
	ang += angstep;
}
shadowdraw=false;
repeat(4)
{
with instance_create(x+random(16)-8,y+random(16),Dust)
motion_add(random(360),3+random(1))
}

z = 0
alarm[1] = 20+random(10)
if intro = 0
{
snd_play_2d(sndLilHunterAppear)
instance_create(x,y,DramaCamera)
intro = 1
}

spr_idle = sprInvertedLilHunterLandEnd
sprite_index = spr_idle
image_index = 0
alarm[3] = 5/0.4
instance_change(InvertedLilHunter,false)


}
}
else
{
	sprite_index = sprInvertedLilHunterLift;
}


