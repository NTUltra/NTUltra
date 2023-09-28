if UberCont.normalGameSpeed == 60
	motion_add(point_direction(other.x,other.y,x,y),1)
else
	motion_add(point_direction(other.x,other.y,x,y),2)