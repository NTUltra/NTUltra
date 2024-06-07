///draw_rectangle_colour_curved();
// /@description
///@param
function draw_rectangle_colour_curved(l,t,r,b,col){
	draw_rectangle_colour(
	l,
	t,
	r,
	b,
	col,col,col,col,false);
	draw_rectangle_colour(
	l - 1,
	t + 1,
	r + 1,
	b - 1,
	col,col,col,col,false);
}