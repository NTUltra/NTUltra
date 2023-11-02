x=xstart+lengthdir_x(wkick,image_angle+180);
y=ystart+lengthdir_y(wkick,image_angle+180);
speed=0;

if wkick > 0
wkick -= 1
if wkick < 0
wkick += 1

if wkick=0
sprite_index=spr_idle;


if collision_point(x,y + vspeed,WallHitMe,false,false) || y > ystart + 400 || y < ystart - 200
	vspeed *= -1;