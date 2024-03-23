/// @description Gamma Guts
dealingGuts = false;	
if gammaGuts
{
	alarm[5] = 1;
	var hittingEnemy = instance_place(x,y,enemy);
	if hittingEnemy != noone && hittingEnemy.team != team
	{
		dealingGuts = true;
		with hittingEnemy
		{
			DealDamage(2,false,true,false);
			if my_health > 0
			{
				snd_play(sndGammaGutsProc);
			}
			else
			{
				snd_play(sndGammaGutsKill,0,true);
				instance_create(x,y,GammaGutsBlast);
			}
		}
	}
}