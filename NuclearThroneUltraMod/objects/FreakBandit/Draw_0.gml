
var gunY = 0;
draw_sprite_ext(sprFreakBanditSpear,0,
x,
y+gunY-4,1,
wepflip,gunangle+wepangle,c_white,1);

if gunangle <= 180
{
	draw_sprite_ext(sprFreakBanditGun,-1,x+lengthdir_x(-wkick,gunangle),y+lengthdir_y(-wkick,gunangle),1,right,gunangle,c_white,1);
	// draw_sprite_ext(sprPipe,-1,x,y,1,wepflip,gunangle+wepangle,c_white,1)
}
draw_sprite_ext(sprite_index,-1,x,y,right,1,0,c_white,1)
if gunangle > 180
{
	draw_sprite_ext(sprFreakBanditGun,-1,x+lengthdir_x(-wkick,gunangle),y+lengthdir_y(-wkick,gunangle),1,right,gunangle,c_white,1)
	// draw_sprite_ext(sprPipe,-1,x,y,1,wepflip,gunangle+wepangle,c_white,1)
}

