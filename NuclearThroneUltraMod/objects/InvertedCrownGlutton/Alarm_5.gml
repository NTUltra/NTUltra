/// @description COB
event_user(0);
with instance_create_depth(x,y,depth,crowns[0])
{
	motion_add(random(360),2);
	walk = 20;
	team = other.team;
	creator = other.id;
}