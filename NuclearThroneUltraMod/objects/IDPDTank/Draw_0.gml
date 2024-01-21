draw_sprite_ext(sprite_index,-1,x,y,1,1,0,c_white,1)
draw_sprite_ext(sprGun,-1,x+lengthdir_x(-wkick,gunangle),y+lengthdir_y(-wkick,gunangle),1,right,gunangle,c_white,1)

if alarm[2] < 30 && alarm[2] > 1
{
	var lassy = y + laserY;
	var lasd = 0;
	do {lassy += 2;lasd += 1}
	until position_meeting(x,lassy,Wall) or lasd > 400
	draw_sprite_ext(sprLaserSight,0,x + 1,y+laserY,lasd,1,270,c_white,1);
}