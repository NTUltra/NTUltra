var xx = x + 8;
var yy = y + 8;
repeat(2)
with instance_create(xx,yy,Debris)
motion_add(random(360),random(1));



snd_play(UberCont.snd_wallbreak,0.1)
BackCont.shake += 2;

with myWall
instance_destroy();

instance_create(x,y,ElementorWallDisappear);

if instance_exists(Player) && Player.ultra_got[94] {
	snd_play(choose(sndFrost1,sndFrost2),0.3);
	with instance_create(xx,yy,IceFlame)
		team = 2;
	with instance_create(xx,yy,FreezeBullet)
	{
		motion_add(0,16)
		image_angle = direction
		team = 2
	}
	with instance_create(xx,yy,FreezeBullet)
	{
		motion_add(90,16)
		image_angle = direction
		team = 2
	}
	with instance_create(xx,yy,FreezeBullet)
	{
		motion_add(180,16)
		image_angle = direction
		team = 2
	}
	with instance_create(xx,yy,FreezeBullet)
	{
		motion_add(270,16)
		image_angle = direction
		team = 2
	}
}
else
{
	instance_create(xx,yy,Smoke);
}