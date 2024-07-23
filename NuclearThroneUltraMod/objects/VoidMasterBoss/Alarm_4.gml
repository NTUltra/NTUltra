/// @description Execute
with instance_create(targetX,targetY,VoidMasterAttack)
{
	team = other.team;
	sprite_index = sprVoidExecution;
	mask_index = mskVoidExecutionMaster;
	snd_play(sndVoidBlaster);
	alarm[0] = 12;
	scrInitDrops(1);
	scrDrop(10,0,true);
}
BackCont.shake += 20;
wepangle = -wepangle