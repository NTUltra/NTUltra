/// @description And line needle
if isBlood
{
	snd_play(sndBloodSewingNeedleStrike,0.01);
	BackCont.viewx2 += lengthdir_x(10,image_angle)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,image_angle)*UberCont.opt_shake
	BackCont.shake += 4
	with instance_create(x,y,BloodStreak)
	{
		motion_add(other.direction+180,1)
		image_angle = direction;
	}
}
else
{
	snd_play(sndSewingNeedleStrike,0.01);
	BackCont.viewx2 += lengthdir_x(8,image_angle)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(8,image_angle)*UberCont.opt_shake
	BackCont.shake += 3
}
image_xscale += ceil(longarms);
with instance_create(x,y,BloodSewingNeedleLine)
{
	isBlood = other.isBlood;
	dmg = other.dmg * 2;
	if other.sprite_index == sprSewingNeedleCurveLine
		sprite_index = sprSewingNeedleLine;
	right = other.right;
	image_yscale = other.image_yscale;
	scrCopyWeaponMod(other);
	image_angle = other.image_angle;
	speed = other.speed + 0.5;
	direction = other.direction;
	image_speed = other.image_speed;
	image_xscale = other.image_xscale;
	needleRange = other.needleRange;
	sprWdth = other.sprWdth;
}
if isBlood
	with instance_create(x + lengthdir_x(sprWdth * image_xscale,image_angle),y + lengthdir_y(sprWdth * image_xscale,image_angle),BloodStreak)
	{
		motion_add(other.direction,4)
		image_yscale += 0.25;
		image_xscale -= 0.25;
		image_angle = direction;
	}