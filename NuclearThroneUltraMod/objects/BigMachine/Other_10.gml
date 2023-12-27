/// @description Exposed now!
alarm[3] = exposeTime + (fireRate * maxAmmo);//EXPOSURE TIME!
image_index=0;
spr_idle=spr_hurt_normal;
spr_idle=spr_expose;
spr_walk=spr_expose;
with myCore
{
	mask_index = mskBigMachineExposed;
	alarm[3] = other.alarm[3] + 5;
}
snd_play_2d(sndBigMachineCharge);
alarm[1]=12;
ammo = maxAmmo;