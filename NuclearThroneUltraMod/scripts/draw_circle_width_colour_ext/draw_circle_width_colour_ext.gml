///draw_circle_width_colour_ext();
// /@description
///@param
function draw_circle_width_colour_ext(xx,yy,r,w,col1,col2){
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
		draw_circle_colour(xx,yy,r,col1,col2,true);
		r -= step;
	}
}