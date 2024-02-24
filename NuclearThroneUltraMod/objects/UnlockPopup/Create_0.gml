x=__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 );
y=__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 );
image_speed=0.4;

mytext="";

alarm[0]=180;
drawtext=false;
depth = -9999999;
yy=0;
alarm[0] += instance_number(UnlockPopup);
with UnlockPopup
{
	alarm[0] *= 0.75;
}
if instance_exists(GenCont)
{
	alarm[0] += GenCont.alarm[3];	
}
alarm[0] = min(alarm[0],300);