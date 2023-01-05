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
	    area = 103
	    subarea = 0
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
	    area = 5
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
	if keyboard_check_pressed(ord("7")) {
	    area = 100
	    subarea = 0
	    with enemy
	    my_health = 0
	    with instance_create(x, y, Portal) type = 1
	}
	if keyboard_check_pressed(ord("8")) {
	    area = 126
	    subarea = 0
	    with enemy
	    my_health = 0
	    with instance_create(x, y, Portal) type = 1
	}
	if keyboard_check_pressed(ord("9")) {
	    area = 127
	    subarea = 0
	    with enemy
	    my_health = 0
	    with instance_create(x, y, Portal) type = 1
	}
	if keyboard_check_pressed(ord("0")) {
		var thing = instance_create(x + 16,y + 16,PopupText);
		thing.mytext = "KILLED ALL REQUIRED BOSSES";
	    scrDefeatedRequiredBoss(secretChallengeBosses.bigVulture);
		scrDefeatedRequiredBoss(secretChallengeBosses.bigFish);
		scrDefeatedRequiredBoss(secretChallengeBosses.bigAssassin);
		scrDefeatedRequiredBoss(secretChallengeBosses.bushBox);
		scrDefeatedRequiredBoss(secretChallengeBosses.chesireCat);
		scrDefeatedRequiredBoss(secretChallengeBosses.hyperCrystal);
	}
}
