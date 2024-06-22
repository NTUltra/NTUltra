///scrDrawTextBackgrounded();
// /@description
///@param
function scrDrawTextBackgrounded(xx,yy,txt,col = c_white){
	draw_text_colour(xx,yy + 1,txt,c_black,c_black,c_black,c_black,1);
	draw_text_colour(xx+1,yy + 1,txt,c_black,c_black,c_black,c_black,1);
	draw_text_colour(xx+1,yy,txt,c_black,c_black,c_black,c_black,1);
	draw_text_colour(xx,yy,txt,col,col,col,col,1);
}