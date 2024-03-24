if mySize <= other.mySize && alarm[4] < 1
motion_add(point_direction(other.x,other.y,x,y),1)

//cap speed
if speed > 16 speed = 16