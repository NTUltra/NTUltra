/// @description Frosty afterimages







// Inherit the parent event
event_inherited();

for (var i = 0; i < mySize; i++) {
	with instance_create(x,y,EnemyIceFlame)
    {
		motion_add(random(360),1);
		image_andlge = direction;
	    team = other.team
    }
}