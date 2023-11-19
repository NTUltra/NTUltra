/// @description FloorAdder
with instance_create(x,y,FloorAdder) {
	forceSprite = other.forceSprite;
	forceBstyle = other.forceBstyle;
	fakeArea = other.fakeArea;
	event_user(0);
}
