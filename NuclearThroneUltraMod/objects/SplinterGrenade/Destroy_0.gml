/// @description No explosion but instead spikes
instance_create(x,y,WallBreakWallOnly);
var accuracy = 1;
if instance_exists(Player)
{
	accuracy = Player.accuracy;	
}
var amount = 14;
var angle = image_angle;
var angleStep = 360/14;
snd_play(sndSplinterGun,0.05,true);
repeat(amount)
{
	with instance_create(x,y,Splinter)//5 splinters
	{
		motion_add(angle+(random(6)-3)*accuracy,20+random(4))
		image_angle = direction
		scrCopyWeaponMod(other);
		team = other.team
	}
	with instance_create(x,y,Smoke)
		motion_add(angle,random_range(0.5,2));
	angle += angleStep;
}
BackCont.shake += 5;