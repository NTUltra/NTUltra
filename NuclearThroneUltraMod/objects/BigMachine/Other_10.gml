/// @description Exposed now!
if spr_idle != sprBigMachineExposed
{
	image_index=0;
	spr_idle=sprBigMachineExposed;
	spr_walk=sprBigMachineExposed;
	alarm[3]=105;//EXPOSURE TIME!
	if instance_exists(Player)
	{
	if Player.loops>0
	{//LOOP
	alarm[3]=68;//EXPOSURE TIME!
	}
	}
	mask_index=mskBigMachineExposed;

	snd_play_2d(sndNothingBeamWarn);
	alarm[1]=10;
	ammo=4;
	if instance_exists(Player)
	{
	if Player.loops>0
	{//LOOP
	ammo=4+Player.loops//EXPOSURE TIME!
	}
	}
}
