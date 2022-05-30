/// @description Draw
if gonnafire = 1
{
lasx = x
lasy = y
lasd = 0
do {lasd += 1 lasx += lengthdir_x(2,gunangle) lasy += lengthdir_y(2,gunangle)}
until position_meeting(lasx,lasy,Wall) or lasd > 1000
var l = 2
var d = gunangle+90
var xx = x+lengthdir_x(l,d);
var yy = y+lengthdir_y(l,d);
var lx = lasx+lengthdir_x(l,d);
var ly = lasy+lengthdir_y(l,d);
draw_sprite_ext(sprLaserSight,-1,xx,yy,point_distance(xx,yy,lx,ly)/2+2,1,gunangle,c_white,1)
draw_sprite_ext(sprLaserSight,-1,x,y,point_distance(x,y,lasx,lasy)/2+2,1,gunangle,c_white,1)
d = gunangle-90
xx = x+lengthdir_x(l,d);
yy = y+lengthdir_y(l,d);
lx = lasx+lengthdir_x(l,d);
ly = lasy+lengthdir_y(l,d);
draw_sprite_ext(sprLaserSight,-1,xx,yy,point_distance(xx,yy,lx,ly)/2+2,1,gunangle,c_white,1)
}

if gunangle <= 180
draw_sprite_ext(sprGoldSniperGun,-1,x+lengthdir_x(-wkick,gunangle),y+lengthdir_y(-wkick,gunangle),1,right,gunangle,c_white,1)
draw_sprite_ext(sprite_index,-1,x,y,right,1,0,c_white,1)
if gunangle > 180
draw_sprite_ext(sprGoldSniperGun,-1,x+lengthdir_x(-wkick,gunangle),y+lengthdir_y(-wkick,gunangle),1,right,gunangle,c_white,1)

