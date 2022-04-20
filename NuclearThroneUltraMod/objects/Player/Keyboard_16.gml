/// @description More areas
if UberCont.public = 0 {
	if keyboard_check_pressed(ord("1")) {
	    area = 112
	    subarea = 0
	    inverted=true
	    with enemy
	    my_health = 0
	    with instance_create(x, y, Portal) type = 1
	}
	if keyboard_check_pressed(ord("9")) {
	    area = 118
	    subarea = 2
	    inverted=true
	    with enemy
	    my_health = 0
	    with instance_create(x, y, Portal) type = 1
	}
}
