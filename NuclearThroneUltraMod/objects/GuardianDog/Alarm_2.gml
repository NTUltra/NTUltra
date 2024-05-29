/// @description LETS GO HUMP DAT ASS
fire = false;
charge = true;
sprite_index = spr_jump_up;
spr_idle = spr_jump_up;
spr_walk = spr_jump_up;
image_index = 0;
jumpUp = true;
scrTarget()
snd_play(sndDogGuardianJump);
if target != noone
{
	jumpDir = point_direction(x,y,target.x,target.y);
	motion_add(jumpDir,7);
}
else
{
	jumpDir = direction;
	motion_add(direction,jumpDuration);
}
alarm[3] = 9;