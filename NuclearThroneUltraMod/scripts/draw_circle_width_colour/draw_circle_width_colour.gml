///draw_circle_width_colour();
// /@description
///@param
function draw_circle_width_colour(xx,yy,r,w,col){
	//var inpW = w;
	var s = UberCont.opt_resolution_scale * min(2,UberCont.opt_resolution_scale);
	w *= s;
	/*
	w = power(w,UberCont.opt_resolution_scale)
	UberCont.opt_resolution_scale = logn(inpW,w);
	var step = logn(inpW,
	*/
	var step = 1/s;
	var i = 0;
	repeat(w)
	{
		draw_circle_colour(xx,yy,r,col,col,true);
		r -= step;
	}
}