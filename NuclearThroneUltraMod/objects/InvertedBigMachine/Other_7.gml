if sprite_index=sprInvertedBigMachineIntro||sprite_index=sprInvertedBigMachineClose
{
image_index=0;
spr_idle=sprInvertedBigMachineIdle;
spr_walk=sprInvertedBigMachineIdle;
}

if sprite_index=sprInvertedBigMachineBecomeExposed || (sprite_index == sprInvertedBigMachineHurt && spr_idle == sprInvertedBigMachineBecomeExposed)
{
	event_user(0);
}

