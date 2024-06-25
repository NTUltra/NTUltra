/// @description Become active
sprite_index = spr_middle;
spr_idle = spr_middle;
spr_hurt = spr_middle_hurt;
mask_index = mskNothingMiddle;
image_speed = 0.4;
with leftSide
{
	visible = true;
	meleedamage = 10;
	mask_index = mskNothingSide;
}
with rightSide
{
	visible = true;
	meleedamage = 10;
	mask_index = mskNothingSide;
}
with ThroneFlame
{
	if isInverted
		sprite_index = sprInvertedThroneFlameStart;
	else
		sprite_index = sprThroneFlameStart;
	image_index = 0;
	visible = true;
	//yOffset -= 26;
	if x > other.x
		xOffset += 11;
	else
		xOffset -= 10;
}
active = true;
intro = false;
immune = false;
with BigGenerator
{
	if spr_idle == spr_inactive
	{
		sprite_index = spr_activate;
		spr_idle = spr_activate;
		image_index = 0;
		alarm[1] = (image_number/image_speed) + 1;
	}
}
my_health = maxhealth;
EnemyHealthAdjustments();
with NuclearThrone1Side
{
	my_health = maxhealth;
	EnemyHealthAdjustments();	
}
alarm[1] = 30;
if loops > 0
	alarm[1] = 15;
//insomnia start slower
if instance_exists(Player)
{
	if Player.skill_got[29]//insomnia
	{
		alarm[1] += 90;
		scrGiveSnooze(0);
	}
}
if scrIsHardMode()
{
	alarm[8] = alarm[1] + 60;	
} else if loops > 0
{
	alarm[8] = alarm[1] + 120;
}