///scrEyesTelekinesisThroughWalls();
// /@description
///@param projectile style, psychonautstyle, thronebutt, playerx, playery
function scrEyesTelekinesisThroughWalls(ps,pp,tb,px,py){
	if pp
	{
		var d = 2+ tb;
		if UberCont.normalGameSpeed == 60
			d*= 0.5;
		var pd = point_direction(x,y,px,py);
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
			x += lengthdir_x(d,pd);
			y += lengthdir_y(d,pd);
		}
	}
	else
	{
		scrEyesTelekinesis(ps,tb,px,py);	
	}
}