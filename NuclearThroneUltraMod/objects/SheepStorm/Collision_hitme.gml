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
    if object_index!=Car
    {
		/*
		var damageBoost = max(1,Player.skill_got[8]*1.3) + frac(Player.skill_got[5] * 1.6);
    if Player.ultra_got[49]
    {
    my_health -= 1.5*sp*damageBoost //2*0=0*P<<NO ULTRA
    }
    else
    {
    my_health-=sp*0.5*damageBoost;
    }
	*/
	my_health-=sp*other.dmg;
    sprite_index = spr_hurt                                 //2*1=2*p<<ULTRA
    image_index = 0
    motion_add(other.image_angle,sp*3);
	if (team != 0)
	{
		//Didnea care bout props yo
		Player.sheepPower -= other.enemyHitbrake;
		Player.speed *= 0.1;
	}
    }
    }
    if other.team!=0 && team != other.team
    {
	    scrSheepHit();
    }
}}

