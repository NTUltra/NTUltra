image_speed=0;

drawx = x
drawy = y

scrWeapons();
wep = 0;
txt = "";
index = instance_number(ShopWep)-1;
xx = -sprite_get_xoffset(mask_index) + sprite_get_bbox_left(mask_index) + ((sprite_get_bbox_right(mask_index) - sprite_get_bbox_left(mask_index)) * 0.5);
yy = -sprite_get_yoffset(mask_index) + sprite_get_bbox_top(mask_index) + ((sprite_get_bbox_bottom(mask_index) - sprite_get_bbox_top(mask_index)) * 0.5);
if instance_exists(Player)
{
	wep = Player.hogWep[index];
	txt = wep_name[wep];
}
else
{
	instance_destroy();	
}