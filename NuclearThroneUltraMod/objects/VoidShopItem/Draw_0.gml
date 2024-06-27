/// @description Draw item on top
if !onTheTable
	draw_self();
if image_index >= image_number - 1 && sprite_index != sprVoidShopItemDisappear
{
	draw_sprite(spr_item,item_index,x,y-2-sin(wave));
	if UberCont.normalGameSpeed == 60
		wave += 0.2;
	else
		wave+=0.4;
}
