///scrEyesTelekinesis();
// /@description
///@param projectile style, thronebutt, playerx, playery
function scrEyesTelekinesis(ps,tb,px,py){
	if (
		ps || 
		(
			x > __view_get( e__VW.XView, 0 ) &&
			x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) &&
			y > __view_get( e__VW.YView, 0 ) &&
			y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
		)
	)
	{
		var d = 1 + tb;
		if UberCont.normalGameSpeed == 60
			d*= 0.5;
		var pd = point_direction(x,y,px,py);
		if !place_meeting(x+lengthdir_x(d,pd),y,Wall)
			x += lengthdir_x(d,pd)
		if !place_meeting(x,y+lengthdir_y(d,pd),Wall)
			y += lengthdir_y(d,pd)
	}
}