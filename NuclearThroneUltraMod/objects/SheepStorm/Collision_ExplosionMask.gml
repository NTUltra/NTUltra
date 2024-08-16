/// @description Also break it
if !instance_exists(Player)
{instance_destroy() exit;}
if Player.sheepPower < Player.sheepPowerToHaveEffect
	exit;
var lose = 0;
if Player.skill_got[14]
	lose = projectileHitBrake*min(2,round(other.dmg*0.25));
else
	lose = projectileHitBrake*min(2,round(other.dmg*0.5));
if UberCont.normalGameSpeed == 60
{
	Player.sheepPower -= lose * 0.5
	Player.speed *= 0.2;
	BackCont.viewx2 += lengthdir_x(0.5,direction)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(0.5,direction)*UberCont.opt_shake
	BackCont.shake += 2.5
}
else
{
	Player.sheepPower -= lose
	Player.speed *= 0.4;
	BackCont.viewx2 += lengthdir_x(1,direction)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(1,direction)*UberCont.opt_shake
	BackCont.shake += 5
}
event_user(0);