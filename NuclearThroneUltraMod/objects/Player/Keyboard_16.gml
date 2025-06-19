/// @description More areas
if UberCont.public = 0 {
	if keyboard_check_pressed(ord("1")) {
	    area = 144
	    subarea = 0
	    with enemy
	    my_health = 0
	    with instance_create(x, y, Portal) type = 1
	}
	if keyboard_check_pressed(ord("2")) {
	    area = 142
	    subarea = 0
	    with enemy
	    my_health = 0
	    with instance_create(x, y, Portal) type = 1
	}
	if keyboard_check_pressed(ord("3")) {
	    area = 146
	    subarea = 0
	    with enemy
	    my_health = 0
	    with instance_create(x, y, Portal) type = 1
	}
	if keyboard_check_pressed(ord("4")) {
	    area = 131
	    subarea = 0
	    with enemy
	    my_health = 0
	    with instance_create(x, y, Portal) type = 1
	}
	if keyboard_check_pressed(ord("5")) {
	    area = 132
	    subarea = 0
	    with enemy
	    my_health = 0
	    with instance_create(x, y, Portal) type = 1
	}
	if keyboard_check_pressed(ord("6")) {
	    area = 133
	    subarea = 0
	    with enemy
	    my_health = 0
	    with instance_create(x, y, Portal) type = 1
	}
	if keyboard_check_pressed(ord("7")) {
	    area = 134
	    subarea = -1
	    with enemy
	    my_health = 0
	    with instance_create(x, y, Portal) type = 1
	}
	if keyboard_check_pressed(ord("8")) {
	    area = 135
	    subarea = 0
	    with enemy
	    my_health = 0
	    with instance_create(x, y, Portal) type = 1
	}
	if keyboard_check_pressed(ord("9")) {
	    area = 136
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
		scrDefeatedRequiredBoss(secretChallengeBosses.cheshireCat);
		scrDefeatedRequiredBoss(secretChallengeBosses.hyperCrystal);
	}
}
