/// @description Draw item on top
draw_self();
if image_index >= image_number - 1
{
	draw_sprite(spr_item,0,x,y-sin(wave));
	if UberCont.normalGameSpeed == 60
		wave += 0.2;
	else
		wave+=0.4;
}
