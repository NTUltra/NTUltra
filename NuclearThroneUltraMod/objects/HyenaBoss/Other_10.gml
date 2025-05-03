/// @description Draw heads
var xo = 0;
var yo = 0;
if alarm[2] < 0 && sprite_index == spr_walk
{
	var ii = round(image_index)
	if ii == 0
	{
		xo = -1;
		yo = 1;
	}
	else if ii == 1
	{
		xo = 1;
		yo = -1;	
	}
	else if ii == 2
	{
		xo = 2;
		yo = -2;	
	}
	else if ii == 3
	{
		xo = 3;
		yo = -3;	
	}
	else if ii == 4
	{
		xo = 2;
		yo = 0;	
	}
	else if ii == 4
	{
		xo = 1;
		yo = 1;	
	}
}
if sprite_index == spr_hurt && alarm[3] < 1 && alarm[4] < 1 && alarm[2] < 1
{
	draw_sprite_ext(spr_head3_hurt,-1,x + ((head3x + xo*2) * right),y + head3y + yo,1,right,head3aim,c_white,1);
	draw_sprite_ext(spr_hurt_leg,-1,x,y,right,1,0,c_white,1);
	draw_sprite_ext(spr_head1_hurt,-1,x + ((head1x + xo) * right),y + head1y + yo,1,right,head1aim,c_white,1);
	draw_sprite_ext(spr_head2_hurt,-1,x + ((head2x + xo) * right),y + head2y + yo,1,right,head2aim,c_white,1);
}
else
{
	draw_sprite_ext(spr_head3,head3Animation,x + ((head3x + xo*2) * right),y + head3y + yo,1,right,head3aim,c_white,1);
	if alarm[2] < 0
	{
		if sprite_index == spr_walk
			draw_sprite_ext(spr_walk_leg,-1,x,y,right,1,0,c_white,1);
		else
			draw_sprite_ext(spr_idle_leg,-1,x,y,right,1,0,c_white,1);
	}
	draw_sprite_ext(spr_head1,head1Animation,x + ((head1x + xo) * right),y + head1y + yo,1,right,head1aim,c_white,1);
	draw_sprite_ext(spr_head2,head2Animation,x + ((head2x + xo) * right),y + head2y + yo,1,right,head2aim,c_white,1);
}