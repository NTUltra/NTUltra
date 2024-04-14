/// @description No explosion but instead BOLTS
instance_create(x,y,WallBreakWallOnly);
var accuracy = 1;
if instance_exists(Player)
{
	accuracy = Player.accuracy;
	
}
var amount = 10;
var angle = image_angle;
var angleStep = 360/amount;
snd_play(sndSuperCrossbow,0.05,true);
repeat(amount)
{
	with instance_create(x,y,Bolt)//5 splinters
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
BackCont.shake += 30;
BackCont.viewx2 += lengthdir_x(10,direction+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(10,direction+180)*UberCont.opt_shake