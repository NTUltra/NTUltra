/// @description Sneak attack
if instance_exists(Player) && !place_meeting(x,y,Tangle)
{
	image_alpha = 0;
	with instance_create(x,y,AnimDestroy)
	{
		sprite_index = other.spr_disappear;
	}
	target = Player;
	if bottomAttack
		y = Player.y + 96;
	else
		y = Player.y - 96;
	x = Player.x;
	scrForcePosition60fps();
	alarm[5] = sneakTime + irandom(60);
	alarm[1] = alarm[5] + sneakTell;
	mask_index = mskPickupThroughWall;
}
