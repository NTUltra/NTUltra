event_inherited()
issecond = false;
wep = UberCont.protowep
var xx = round(x/32)*32;
var yy = round(y/32)*32;
if !place_meeting(xx,yy,Floor)
	instance_create(xx,yy,Floor);
if !place_meeting(xx + 32,yy,Floor)
	instance_create(xx + 32,yy,Floor);
if !place_meeting(xx - 32,yy,Floor)
	instance_create(xx - 32,yy,Floor);
if !place_meeting(xx,yy + 32,Floor)
	instance_create(xx,yy + 32,Floor);
if !place_meeting(xx,yy - 32,Floor)
	instance_create(xx,yy - 32,Floor);
instance_create(xx,yy,WallBreak);
wepmod1=UberCont.protowepmod1
wepmod2=UberCont.protowepmod2
wepmod3=UberCont.protowepmod3
wepmod4=UberCont.protowepmod4
if wep == 0
{
	wep = 56;
	wepmod1=0;
	wepmod2=0;
	wepmod3=0;
	wepmod4=0;
}
alarm[0] = 10;
