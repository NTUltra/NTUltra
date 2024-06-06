if weaponType == 3
{
	var lasx = x
	var lasy = y
	var lasd = 0
	do {lasd += 2 lasx += lengthdir_x(4,gunangle) lasy += lengthdir_y(4,gunangle)}
	until position_meeting(lasx,lasy,Wall) or lasd > 1000
	
	draw_sprite_ext(sprLaserSight,-1,x,y,(point_distance(x,y,lasx,lasy)*0.5)+2,1,gunangle,c_white,1)
}

if gunangle <= 180
{
	if weaponType == 0
		draw_sprite_ext(gunSprite,-1,x,y,1,wepflip,gunangle+wepangle,c_white,1)
	else
		draw_sprite_ext(gunSprite,-1,x+lengthdir_x(-wkick,gunangle),y+lengthdir_y(-wkick,gunangle),1,right,gunangle,c_white,1)
}
draw_sprite_ext(sprite_index,-1,x,y,right,1,0,c_white,1)
if gunangle > 180
{
	if weaponType == 0
		draw_sprite_ext(gunSprite,-1,x,y,1,wepflip,gunangle+wepangle,c_white,1)
	else
		draw_sprite_ext(gunSprite,-1,x+lengthdir_x(-wkick,gunangle),y+lengthdir_y(-wkick,gunangle),1,right,gunangle,c_white,1)
}

