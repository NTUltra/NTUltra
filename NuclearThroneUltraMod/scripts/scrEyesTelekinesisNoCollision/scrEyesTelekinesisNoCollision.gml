///scrEyesTelekinesisNoCollision();
// /@description
///@param projectile style, thronebutt, playerx, playery
function scrEyesTelekinesisNoCollision(ps,tb,px,py){
	if (
		ps || 
		/*(
			x > __view_get( e__VW.XView, 0 ) &&
			x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) &&
			y > __view_get( e__VW.YView, 0 ) &&
			y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
		)*/
		point_distance(x,y,other.x,other.y) < 250
	)
	{
		var d = 1 + tb;
		if UberCont.normalGameSpeed == 60
			d*= 0.5;
		var pd = point_direction(x,y,px,py);
		x += lengthdir_x(d,pd)
		y += lengthdir_y(d,pd)
	}
}