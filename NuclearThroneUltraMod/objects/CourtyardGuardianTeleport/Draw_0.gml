/// @description lines drawing
draw_line_width_color(x,y,xx,yy,4,c1,c2 );
draw_line_width_color(x,y,xx,yy+8,2,c1,c2 );
draw_line_width_color(x,y,xx,yy-8,2,c1,c2 );

draw_set_blend_mode(bm_add)
draw_set_alpha(0.1);
draw_line_width_color(x,y,xx,yy,16,c1,c2 );
draw_line_width_color(x,y,xx,yy+8,12,c1,c2 );
draw_line_width_color(x,y,xx,yy-8,12,c1,c2 );
draw_set_alpha(1);

draw_set_blend_mode(bm_normal)