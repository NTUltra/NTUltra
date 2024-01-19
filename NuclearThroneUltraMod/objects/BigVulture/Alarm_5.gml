/// @description START CHARGE
alarm[4] = 22;
alarm[1] += 23;
walk = 10;
snd_play(sndBigVultureCharge,0,false,false,2,false,false,0.82,false,id);
right = 1;
spr_idle = sprBigVultureCharge;
spr_walk = sprBigVultureCharge;
spr_hurt = sprBigVultureChargeHurt;
meleedamage = 20;
direction = chargeDirection;