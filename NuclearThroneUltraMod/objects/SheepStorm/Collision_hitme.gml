if instance_exists(Player){
var sp = Player.sheepPower;
	if sp < Player.sheepPowerToHaveEffect
		exit;
if other.team!=team
{


/*
if other.team!=0&&Player.ultra_got[49]=0&&enemyHits<1//don't get destroyed by props but do destroy them.&&nothronebutt
instance_destroy();

if Player.ultra_got[49]=0
enemyHits-=1
*/
Sleep(2);
BackCont.viewx2 += lengthdir_x(1.12*sp*0.5,direction)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(1.12*sp*0.5,direction)*UberCont.opt_shake
BackCont.shake += 1.12*sp*0.5;

	with other
	{
		if my_health > 0
		{
			var deal = max(3,round((sp-1)*other.dmg));
			if UberCont.normalGameSpeed == 60
			{
				DealDamage(deal*0.5,false,true,false);
				motion_add(other.image_angle,sp*1.5);
				if (team != 0 && my_health - deal*0.5 > 0)
				{
					//Didnea care bout props yo
					Player.sheepPower -= other.enemyHitbrake*0.5;
					Player.speed *= 0.2;
				}
			}
			else
			{
				DealDamage(deal,false,true,false);
				motion_add(other.image_angle,sp*3);
				if (team != 0 && my_health > 0)
				{
					//Didnea care bout props yo
					Player.sheepPower -= other.enemyHitbrake;
					Player.speed *= 0.1;
				}
			}
		    sprite_index = spr_hurt                                 //2*1=2*p<<ULTRA
		    image_index = 0
			// scrSheepHit();
		}
    }
}}

