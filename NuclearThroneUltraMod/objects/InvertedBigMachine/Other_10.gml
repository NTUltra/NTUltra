/// @description Expose now
alarm[3]=80;//EXPOSURE TIME!
//if spr_idle != sprInvertedBigMachineExposed
//{
	image_index=0;
	spr_idle=sprInvertedBigMachineExposed;
	spr_walk=sprInvertedBigMachineExposed;
	if instance_exists(Player)
	{
	if Player.loops>0
	{//LOOP
	alarm[3]=50;//EXPOSURE TIME!
	}
	}
	mask_index=mskBigMachineExposed;

	snd_play_2d(sndBigMachineActivate);
	alarm[1]=10;
	ammo=6;
	if instance_exists(Player)
	{
	if Player.loops>0
	{//LOOP
	ammo=6+Player.loops//EXPOSURE TIME!
	}
	}
//}