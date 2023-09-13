var distance = point_distance(x,y,hit[1],hit[2]);
var points = ceil((distance/16)*1.25);
var dp = distance/points;
repeat(5) {
	var xx = x;
	var yy = y;
	for(var i = 0; i < points; i += 1;)
	{
		var hue = random(255);
		var xxPrevious = xx;
		var yyPrevious = yy;
		xx = xx+lengthdir_x(dp,direction+(random(60)-30) )
		yy = yy+lengthdir_y(dp,direction+(random(60)-30) );
		draw_line_width_color(xxPrevious,yyPrevious,xx,yy,
		lineWidth,make_color_hsv(hue,255,255),make_color_hsv(hue,255,255) );
		draw_set_blend_mode(bm_add);
		draw_set_alpha(0.2);
		draw_line_width_color(xxPrevious,yyPrevious,xx,yy,
		lineWidth*2,bloomColour,bloomColour);
		draw_set_alpha(1);
		draw_set_blend_mode(bm_normal);
	}
	var hue = random(255);
	var xxPrevious = xx;
	var yyPrevious = yy;
	xx = hit[1]
	yy = hit[2]
	draw_line_width_color(xxPrevious,yyPrevious,xx,yy,
	lineWidth,make_color_hsv(hue,255,255),make_color_hsv(hue,255,255) );
	draw_set_blend_mode(bm_add);
	draw_set_alpha(0.2);
	draw_line_width_color(xxPrevious,yyPrevious,xx,yy,
	lineWidth*2,bloomColour,bloomColour);
	draw_set_alpha(1);
	draw_set_blend_mode(bm_normal);
}
draw_self();