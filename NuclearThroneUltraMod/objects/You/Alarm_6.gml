/// @description Fire
var mox = UberCont.mouse__x;
var moy = UberCont.mouse__y;
UberCont.mouse__x = aimX;
UberCont.mouse__y = aimY;
var shk = BackCont.shake;
var bx = BackCont.viewx2;
var by = BackCont.viewy2;
scrFire();
with projectile
{
	if team == other.team
	{
		speed *= 0.9;	
	}
}
BackCont.shake = shk
BackCont.viewx2 = bx;
BackCont.viewy2 = by;