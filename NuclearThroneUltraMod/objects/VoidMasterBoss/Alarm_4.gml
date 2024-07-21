/// @description Execute
with instance_create(targetX,targetY,VoidMasterAttack)
{
	image_speed = 0.3;
	sprite_index = sprVoidExecution;
	mask_index = mskVoidExecutionMaster;
	snd_play(sndVoidShank);
}
BackCont.shake += 20;
