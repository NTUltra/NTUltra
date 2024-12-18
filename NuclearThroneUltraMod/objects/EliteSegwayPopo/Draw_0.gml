var gunY = 0;
draw_sprite_ext(sprEliteSegwayBaton,0,
x,
y+gunY-4,1,
wepflip,gunangle+wepangle,c_white,1);

if gunangle <= 180
draw_sprite_ext(sprIDPDLaser,-1,x+lengthdir_x(-wkick,gunangle),y+lengthdir_y(-wkick,gunangle),1,right,gunangle,c_white,1)
draw_sprite_ext(sprite_index,-1,x,y,right,1,angle,c_white,1)
if gunangle > 180
draw_sprite_ext(sprIDPDLaser,-1,x+lengthdir_x(-wkick,gunangle),y+lengthdir_y(-wkick,gunangle),1,right,gunangle,c_white,1)

if alarm[2] > 2
{
	var lasx = x
	var lasy = y
	var lasd = 0
	var aim = gunangle;
	do {lasd += 2 lasx += lengthdir_x(4,aim) lasy += lengthdir_y(4,aim)}
	until position_meeting(lasx,lasy,Wall) or lasd > 700
	draw_sprite_ext(sprLaserSightPopo,-1,x,y,point_distance(x,y,lasx,lasy)*0.5+2,1,aim,c_white,1)
	var lasx = x
	var lasy = y
	var lasd = 0
	var aim = gunangle + sniperOffset;
	do {lasd += 2 lasx += lengthdir_x(4,aim) lasy += lengthdir_y(4,aim)}
	until position_meeting(lasx,lasy,Wall) or lasd > 700
	draw_sprite_ext(sprLaserSightPopo,-1,x,y,point_distance(x,y,lasx,lasy)*0.5+2,1,aim,c_white,1)
	var lasx = x
	var lasy = y
	var lasd = 0
	var aim = gunangle - sniperOffset;
	do {lasd += 2 lasx += lengthdir_x(4,aim) lasy += lengthdir_y(4,aim)}
	until position_meeting(lasx,lasy,Wall) or lasd > 700
	draw_sprite_ext(sprLaserSightPopo,-1,x,y,point_distance(x,y,lasx,lasy)*0.5+2,1,aim,c_white,1)
	
}