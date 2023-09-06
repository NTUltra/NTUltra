/// @description Dodge
if point_distance(x,y,target.x,target.y) < 64
	direction = point_direction(x,y,target.x,target.y)
else
	direction = point_direction(target.x+lengthdir_x(point_distance(x,y,target.x,target.y)*0.95,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),target.y+lengthdir_y(point_distance(x,y,target.x,target.y)*0.95,point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y)),x,y)+random(60)-30
dodge = dodgeTime
walk = dodgeTime + 2;
sprite_index=spr_walk;
gunangle = direction