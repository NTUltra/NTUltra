/// @description Alpha channel
if gotVision && instance_exists(Player) && Player.sheepPower >= 8 && !Player.outOfCombat
{
	draw_sprite_ext(sprSheepDashMax,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,1);
}
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,alpha);
/*
if (Player.sheepPower > Player.sheepPowerToHaveEffect)
{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale+0.1,image_yscale+0.1,image_angle,c_black,alpha);
}*/