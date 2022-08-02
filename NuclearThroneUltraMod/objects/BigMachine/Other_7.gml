if sprite_index=sprBigMachineIntro||sprite_index=sprBigMachineClose
{
image_index=0;
spr_idle=sprBigMachineIdle;
spr_walk=sprBigMachineIdle;
}

if sprite_index=sprBigMachineBecomeExposed || (sprite_index == sprBigMachineHurt && spr_idle == sprBigMachineBecomeExposed)
{
	event_user(0);
}

