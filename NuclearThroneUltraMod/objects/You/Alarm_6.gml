/// @description Fire
var mox = UberCont.mouse__x;
var moy = UberCont.mouse__y;
UberCont.mouse__x = aimX;
UberCont.mouse__y = aimY;
scrFire();
UberCont.mouse__x = mox;
UberCont.mouse__y = moy;
alarm[7]=1;
