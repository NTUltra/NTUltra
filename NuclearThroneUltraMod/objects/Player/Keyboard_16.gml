/// @description More areas
if UberCont.public = 0 {
	if keyboard_check_pressed(ord("1")) {
	    area = 10
	    subarea = 2
	    with enemy
	    my_health = 0
	    with instance_create(x, y, Portal) type = 1
	}
	if keyboard_check_pressed(ord("2")) {
	    area = 101
	    subarea = 2
	    with enemy
	    my_health = 0
	    with instance_create(x, y, Portal) type = 1
	}
	if keyboard_check_pressed(ord("3")) {
	    area = 115
	    subarea = 1
	    with enemy
	    my_health = 0
	    with instance_create(x, y, Portal) type = 1
	}
	if keyboard_check_pressed(ord("4")) {
	    area = 8
	    subarea = 2
	    with enemy
	    my_health = 0
	    with instance_create(x, y, Portal) type = 1
	}
	if keyboard_check_pressed(ord("5")) {
	    area = 3
	    subarea = 0
		loops = 1;
	    with enemy
	    my_health = 0
	    with instance_create(x, y, Portal) type = 1
	}
	if keyboard_check_pressed(ord("6")) {
	    area = 4
	    subarea = 0
		loops = 1;
	    with enemy
	    my_health = 0
	    with instance_create(x, y, Portal) type = 1
	}
}
